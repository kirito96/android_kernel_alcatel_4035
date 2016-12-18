LOCAL_PATH := $(call my-dir)

################################################################################
#
################################################################################
include $(CLEAR_VARS)

#-----------------------------------------------------------
LOCAL_SRC_FILES += $(call all-c-cpp-files-under, .)

#-----------------------------------------------------------
LOCAL_C_INCLUDES += $(TOP)/$(MTK_ROOT)/frameworks-ext/av/include
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/inc
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/inc
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/v1/hal/adapter/inc/Scenario
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/v1/hal/adapter/Scenario/Shot/inc
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/core/camshot/inc
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/core/featureio/pipe/aaa/ae_mgr
LOCAL_C_INCLUDES += $(MTK_PATH_CUSTOM)/hal/inc/aaa
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/inc/featureio
LOCAL_C_INCLUDES += $(MTK_PATH_CUSTOM)/hal/inc/debug_exif/aaa
LOCAL_C_INCLUDES += $(MTK_PATH_CUSTOM)/hal/inc/isp_tuning
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/core/featureio/pipe/aaa/isp_tuning

PLATFORM_VERSION_MAJOR := $(word 1,$(subst .,$(space),$(PLATFORM_VERSION)))
LOCAL_CFLAGS += -DPLATFORM_VERSION_MAJOR=$(PLATFORM_VERSION_MAJOR)

#-----------------------------------------------------------
LOCAL_WHOLE_STATIC_LIBRARIES += 
#
LOCAL_STATIC_LIBRARIES += 

#-----------------------------------------------------------
LOCAL_SHARED_LIBRARIES += 

#-----------------------------------------------------------
LOCAL_MODULE := libcam.camadapter.scenario.shot.engshot

#-----------------------------------------------------------

#
# Start of common part ------------------------------------
sinclude $(TOP)/$(MTK_PATH_PLATFORM)/hardware/mtkcam/mtkcam.mk

#-----------------------------------------------------------
LOCAL_CFLAGS += $(MTKCAM_CFLAGS)

#-----------------------------------------------------------
LOCAL_C_INCLUDES += $(MTKCAM_C_INCLUDES)

#-----------------------------------------------------------
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/include
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/include

# End of common part ---------------------------------------
#
include $(BUILD_STATIC_LIBRARY)




################################################################################
#
################################################################################
include $(CLEAR_VARS)
include $(call all-makefiles-under,$(LOCAL_PATH))
