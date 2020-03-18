echo "Default setup for Ubuntu 16.04"

# For Ubuntu 19.04:
# wget http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u12_amd64.deb &&
# wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/j/jemalloc/libjemalloc1_3.6.0-11_amd64.deb &&
# sudo dpkg -i libssl1.0.0_1.0.1t-1+deb8u11_amd64.deb &&
# sudo dpkg -i libjemalloc1_3.6.0-11_amd64.deb &&

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - \
	&& sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)" \
	&& sudo apt update -y \
	&& sudo apt install -y mssql-server \
	&& sudo /opt/mssql/bin/mssql-conf setup
