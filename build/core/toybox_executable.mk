ifeq ($(filter $(LOCAL_SHARED_LIBRARIES),libbatteryservice libbinder),)
include $(BUILD_TARGET_EXECUTABLE)
endif
