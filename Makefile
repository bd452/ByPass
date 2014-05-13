TARGET = iPhone:7.1:2.0
ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk



TWEAK_NAME = ByPass


ByPass_FILES = Tweak.xm
ByPass_FRAMEWORKS = AVFoundation UIKit
ByPass_LDFLAGS = -lactivator -lPass
ByPass_LIBRARIES = MobileGestalt

include $(THEOS_MAKE_PATH)/tweak.mk
