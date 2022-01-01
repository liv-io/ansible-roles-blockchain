#-------------------------------------------------------------------------------

# DOCUMENTATION

#https://github.com/trezor/blockbook/blob/master/docs/build.md#manual-build

#-------------------------------------------------------------------------------

# DEBIAN

# Update packages
apt update
apt -y upgrade

# Install dependencies
apt install -y --no-install-recommends autoconf \
  automake \
  build-essential \
  ca-certificates \
  git \
  gnupg \
  libbz2-dev \
  libgflags-dev \
  liblz4-dev \
  libsnappy-dev \
  libtool \
  libzmq3-dev \
  pkg-config \
  wget \
  zlib1g-dev

#-------------------------------------------------------------------------------

# GO

# Set environment variables
export GO_VERSION="1.17.5"
export GOPATH=/app/go
export PATH="$PATH:$GOPATH/bin:/usr/local/go/bin"

# Create directories
install --directory --owner=root --group=root --mode=0755 /app/go/

# Add key to GPG keyring
cd /tmp/
gpg --no-default-keyring --keyring /tmp/go.gpg --fingerprint
gpg --no-default-keyring --keyring /tmp/go.gpg --batch --import /tmp/go.key
rm -f /tmp/go.gpg* \
      /tmp/go.key

# Install Go
cd /tmp/
wget -q -O /tmp/go${GO_VERSION}.linux-amd64.tar.gz https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz
wget -q -O /tmp/go${GO_VERSION}.linux-amd64.tar.gz.sha256 https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz.sha256
wget -q -O /tmp/go${GO_VERSION}.linux-amd64.tar.gz.asc https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz.asc
gpg --no-default-keyring --keyring /tmp/go.gpg --verify /tmp/go${GO_VERSION}.linux-amd64.tar.gz.asc || echo "ERROR"
echo "$(cat /tmp/go${GO_VERSION}.linux-amd64.tar.gz.sha256) go${GO_VERSION}.linux-amd64.tar.gz" > /tmp/go${GO_VERSION}.checksum
sha256sum -c /tmp/go${GO_VERSION}.checksum || echo "ERROR"
tar -C /usr/local/ -xzf go${GO_VERSION}.linux-amd64.tar.gz
rm -f /tmp/go${GO_VERSION}.checksum \
      /tmp/go${GO_VERSION}.linux-amd64.tar.gz \
      /tmp/go${GO_VERSION}.linux-amd64.tar.gz.asc \
      /tmp/go${GO_VERSION}.linux-amd64.tar.gz.sha256

#-------------------------------------------------------------------------------

# ROCKSDB

# Set environment variables
export ROCKSDB_VERSION="v6.22.1"

# Create directories
install --directory --owner=root --group=root --mode=0755 /app/rocksdb/
install --directory --owner=root --group=root --mode=0755 /app/rocksdb/include/

# Set RocksDB build flags
export CGO_CFLAGS="-I/app/rocksdb/include"
export CGO_LDFLAGS="-L/app/rocksdb -lrocksdb -lstdc++ -lm -lz -ldl -lbz2 -lsnappy -llz4"

# Build RocksDB
cd /tmp/
git clone -q --branch ${ROCKSDB_VERSION} --depth 1 https://github.com/facebook/rocksdb.git
cd rocksdb/
CFLAGS=-fPIC CXXFLAGS=-fPIC make -j 4 release
cp librock* /app/rocksdb
cp -r include /app/rocksdb
cd /tmp/
rm -rf /tmp/rocksdb

#-------------------------------------------------------------------------------

# ZEROMQ

# Set environment variables
export ZEROMQ_VERSION="v4.3.4"

# Build ZeroMQ
cd /tmp/
git clone -q --branch ${ZEROMQ_VERSION} --depth 1 https://github.com/zeromq/libzmq
cd libzmq/
./autogen.sh
./configure
make
make install
go mod init libzmq
cd /tmp/
rm -rf /tmp/libzmq

#-------------------------------------------------------------------------------

# BLOCKBOOK

# Set environment variables
export BLOCKBOOK_VERSION="v0.3.6"

# Create user
useradd --comment 'blockbook' --no-create-home --password '!' --shell '/bin/bash' blockbook

# Create directories
install --directory --owner=root --group=root --mode=0755 /etc/blockbook
install --directory --owner=blockbook --group=blockbook --mode=0755 /data/blockbook

# Build Blockbook
cd /app/
git clone -q --branch ${BLOCKBOOK_VERSION} https://github.com/trezor/blockbook.git
cd blockbook/
go build -tags rocksdb_6_16

# Create config.json
echo '{
    "coin_name": "Bitcoin",
    "coin_shortcut": "BTC",
    "coin_label": "Bitcoin",
    "rpc_url": "http://10.1.3.21:8332",
    "rpc_user": "satoshi",
    "rpc_pass": "r7e5Tpb3aqrk23HFTkPreN9BrXk8u4de",
    "rpc_timeout": 25,
    "parse": true,
    "message_queue_binding": "tcp://10.1.3.21:5555",
    "subversion": "",
    "address_format": "",
    "block_addresses_to_keep": 300
}' > /etc/blockbook/config.json

chown root:blockbook /etc/blockbook/config.json

# Create default file
echo 'OPTIONS="-sync -blockchaincfg=/etc/blockbook/config.json -public=:8080 -logtostderr -datadir /data/blockbook/"' > /etc/default/blockbook

# Create systemd service unit file
echo '[Unit]
Description=blockbook
After=syslog.target network.target

[Service]
User=blockbook
Group=blockbook
EnvironmentFile=/etc/default/blockbook
WorkingDirectory=/app/blockbook
ExecStart=/app/blockbook/blockbook $OPTIONS
LimitNOFILE=500000
LimitNPROC=500000

[Install]
WantedBy=multi-user.target' > /usr/lib/systemd/system/blockbook.service

# Reload systemd
systemctl daemon-reload

# Start and enable service
systemctl enable blockbook.service
systemctl start blockbook.service
