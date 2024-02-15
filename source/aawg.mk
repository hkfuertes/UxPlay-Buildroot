AAWG_VERSION = 1.0
AAWG_SITE = $(BR2_EXTERNAL_UXPLAY_PATH)/UxPlay
AAWG_SITE_METHOD = local
AAWG_DEPENDENCIES = dbus-cxx protobuf

define AAWG_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) PROTOC=$(HOST_DIR)/bin/protoc -C $(@D)
endef

define AAWG_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/aawgd  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
