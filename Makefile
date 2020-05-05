ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = Discord
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ClapCase

ClapCase_FILES = Tweak.x
ClapCase_FRAMEWORKS = UIKit
ClapCase_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
