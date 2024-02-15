UXPLAY_VERSION = 1.68
UXPLAY_SITE = $(BR2_EXTERNAL_UXPLAY_PATH)/package/uxplay/repo
UXPLAY_SITE_METHOD = local

define UXPLAY_BUILD_CMDS
    export CFLAGS='-D_FILE_OFFSET_BITS=64'
    export CXXFLAGS='-D_FILE_OFFSET_BITS=64'

    mkdir build && cd build
    $(CMAKE) .. -DCMAKE_CXX_FLAGS='-O3' -DCMAKE_C_FLAGS='-O3'
    $(MAKE) -j$(nproc)
endef

define UXPLAY_INSTALL_TARGET_CMDS
    $(INSTALL)
endef

$(eval $(generic-package))



# "export CFLAGS='-D_FILE_OFFSET_BITS=64'",
# "export CXXFLAGS='-D_FILE_OFFSET_BITS=64'",
# "git clone https://github.com/FDH2/UxPlay && cd UxPlay",
# "mkdir build && cd build",
# "cmake .. -DCMAKE_CXX_FLAGS='-O3' -DCMAKE_C_FLAGS='-O3'",
# "make -j$(nproc)",
# "sudo make install"