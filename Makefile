TARGET = iphone:clang:7.1:7.1
ARCHS = armv7 armv7s arm64
#CFLAGS = -fobjc-arc <- That causes SpringBoard to crash…

include theos/makefiles/common.mk

TWEAK_NAME = ByPass

ByPass_FILES = Tweak.xm
ByPass_FRAMEWORKS = UIKit
ByPass_LIBRARIES = activator Pass

include $(THEOS_MAKE_PATH)/tweak.mk
