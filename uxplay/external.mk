# "export CFLAGS='-D_FILE_OFFSET_BITS=64'",
# "export CXXFLAGS='-D_FILE_OFFSET_BITS=64'",
# "git clone https://github.com/FDH2/UxPlay && cd UxPlay",
# "mkdir build && cd build",
# "cmake .. -DCMAKE_CXX_FLAGS='-O3' -DCMAKE_C_FLAGS='-O3'",
# "make -j$(nproc)",
# "sudo make install"


UXPLAY_VERSION = 1.68.2
UXPLAY_VERSION = tags/v1.68.2
UXPLAY_SITE = https://github.com/FDH2/UxPlay.git
UXPLAY_SITE_METHOD = git
UXPLAY_INSTALL_STAGING = YES
UXPLAY_INSTALL_TARGET = NO
UXPLAY_CONF_OPTS = -DCMAKE_CXX_FLAGS='-O3' -DCMAKE_C_FLAGS='-O3'
UXPLAY_CXXFLAGS=-D_FILE_OFFSET_BITS=64
UXPLAY_CFLAGS=-D_FILE_OFFSET_BITS=64
# UXPLAY_DEPENDENCIES = libglib2 host-pkgconf

$(eval $(cmake-package))