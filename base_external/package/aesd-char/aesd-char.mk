



# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_VERSION = 85406dcb58010def25346de7aa4e1983670f5b3a
AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Ganeshkm10.git
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver/

# TODO adding all the dependencies.
define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin

	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin


endef

$(eval $(kernel-module))
$(eval $(generic-package))
