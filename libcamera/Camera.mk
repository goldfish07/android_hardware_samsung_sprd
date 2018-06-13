LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/vsp/sc8830/inc	\
	$(LOCAL_PATH)/vsp/sc8830/src \
	$(LOCAL_PATH)/jpeg/jpeg_fw_8830/inc \
	$(LOCAL_PATH)/jpeg/jpeg_fw_8830/src \
	$(LOCAL_PATH)/sc8830/inc \
	$(LOCAL_PATH)/sc8830/isp_calibration/inc \
	$(LOCAL_PATH)/sensor_drv_u/inc \
	$(LOCAL_PATH)/isp/inc \
	external/skia/include/images \
	external/skia/include/core\
        external/jhead \
        external/sqlite/dist \
	system/media/camera/include \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/source/include/video \
	hardware/samsung/sprd/gralloc \

LOCAL_ADDITIONAL_DEPENDENCIES += \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SRC_FILES:= \
	sc8830/src/SprdOEMCamera.c \
	sc8830/src/SprdCameraParameters.cpp \
	sc8830/src/SprdCameraHardware_autest_Interface.cpp  \
	sc8830/src/cmr_oem.c \
	sc8830/src/cmr_set.c \
	sc8830/src/cmr_mem.c \
	sc8830/src/cmr_msg.c \
	sc8830/src/cmr_scale.c \
	sc8830/src/cmr_rotate.c \
	sc8830/src/cmr_copy.c \
	sc8830/src/cmr_v4l2.c \
	sc8830/src/jpeg_codec.c \
	sc8830/src/dc_cfg.c \
	sc8830/src/dc_product_cfg.c \
	sc8830/src/sensor_cfg.c \
	sc8830/src/cmr_arith.c \
	sensor_drv_u/src/sensor_drv_u.c \
	sensor/sensor_ov8825_mipi_raw.c \
	sensor/sensor_autotest_ov8825_mipi_raw.c \
	sensor/sensor_ov13850_mipi_raw.c \
	sensor/sensor_ov5648_mipi_raw.c \
	sensor/sensor_imx179_mipi_raw.c \
	sensor/sensor_ov5640_mipi.c \
	sensor/sensor_autotest_ov5640_mipi_yuv.c \
	sensor/sensor_ov5640.c \
	sensor/sensor_autotest_ov5640_ccir_yuv.c \
	sensor/sensor_autotest_ccir_yuv.c \
	sensor/sensor_gc2035.c \
	sensor/sensor_ov8865_mipi_raw.c \
	sensor/sensor_gc2155.c \
	sensor/sensor_gc0311.c \
	sensor/sensor_gt2005.c \
	sensor/sensor_gc0308.c \
	sensor/sensor_hi702_ccir.c \
	sensor/sensor_pattern.c \
	sensor/sensor_ov7675.c\
	sensor/sensor_hi253.c\
	sensor/sensor_hi255.c\
	sensor/sensor_sr352.c \
	sensor/sensor_sr030pc50_mipi.c \
	sensor/sensor_s5k4ecgx_mipi.c \
        sensor/sensor_s5k4ecgx.c \
	vsp/sc8830/src/jpg_drv_sc8830.c \
	jpeg/jpeg_fw_8830/src/jpegcodec_bufmgr.c \
	jpeg/jpeg_fw_8830/src/jpegcodec_global.c \
	jpeg/jpeg_fw_8830/src/jpegcodec_table.c \
	jpeg/jpeg_fw_8830/src/jpegenc_bitstream.c \
	jpeg/jpeg_fw_8830/src/jpegenc_frame.c \
	jpeg/jpeg_fw_8830/src/jpegenc_header.c \
	jpeg/jpeg_fw_8830/src/jpegenc_init.c \
	jpeg/jpeg_fw_8830/src/jpegenc_interface.c \
	jpeg/jpeg_fw_8830/src/jpegenc_malloc.c \
	jpeg/jpeg_fw_8830/src/jpegenc_api.c \
	jpeg/jpeg_fw_8830/src/jpegdec_bitstream.c \
	jpeg/jpeg_fw_8830/src/jpegdec_frame.c \
	jpeg/jpeg_fw_8830/src/jpegdec_init.c \
	jpeg/jpeg_fw_8830/src/jpegdec_interface.c \
	jpeg/jpeg_fw_8830/src/jpegdec_malloc.c \
	jpeg/jpeg_fw_8830/src/jpegdec_dequant.c	\
	jpeg/jpeg_fw_8830/src/jpegdec_out.c \
	jpeg/jpeg_fw_8830/src/jpegdec_parse.c \
	jpeg/jpeg_fw_8830/src/jpegdec_pvld.c \
	jpeg/jpeg_fw_8830/src/jpegdec_vld.c \
	jpeg/jpeg_fw_8830/src/jpegdec_api.c  \
	jpeg/jpeg_fw_8830/src/exif_writer.c  \
	jpeg/jpeg_fw_8830/src/jpeg_stream.c \
	isp/isp_app.c \
	isp/isp_app_msg.c \
	isp/isp_video.c \
	isp/isp_param_tune_com.c \
	isp/isp_param_tune_v0000.c \
	isp/isp_param_tune_v0001.c \
	isp/isp_param_size.c \
	isp/isp_param_file_update.c \
	sc8830/isp_calibration/src/isp_calibration.c \
	sc8830/isp_calibration/src/isp_cali_interface.c
LOCAL_SRC_FILES+= \
	sc8830/src/SprdCameraHardwareInterface.cpp


LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_CFLAGS := -fno-strict-aliasing -D_VSP_ -DJPEG_ENC -D_VSP_LINUX_ -DCHIP_ENDIAN_LITTLE -DCONFIG_CAMERA_2M  -DANDROID_4100

ifeq ($(strip $(TARGET_BOARD_PLATFORM)),scx15)
LOCAL_CFLAGS += -DCONFIG_CAMERA_SMALL_PREVSIZE
endif


LOCAL_CFLAGS += -DCONFIG_CAMERA_FLASH_CTRL
LOCAL_CFLAGS += -DCONFIG_CAMERA_SUPPORT_5M
LOCAL_CFLAGS += -DCONFIG_CAMERA_ISP
LOCAL_CFLAGS += -DCONFIG_CAMERA_CAF
LOCAL_CFLAGS += -DCONFIG_CAMERA_ROTATION_CAPTURE
LOCAL_CFLAGS += -DCONFIG_FRONT_CAMERA_ROTATION
LOCAL_CFLAGS += -DCONFIG_BACK_CAMERA_ROTATION
LOCAL_CFLAGS += -DCONFIG_CAMERA_ROTATION
LOCAL_CFLAGS += -DCONFIG_CAMERA_DMA_COPY
LOCAL_CFLAGS += -DCONFIG_BACK_CAMERA_CCIR
LOCAL_CFLAGS += -DCONFIG_FRONT_CAMERA_CCIR
LOCAL_CFLAGS += -DCONFIG_CAMERA_SUPPORT_CIF
LOCAL_CFLAGS += -DUSE_ION_MEM
LOCAL_CFLAGS += -DCONFIG_CAMERA_FACE_DETECT


LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)

LOCAL_MODULE_TAGS := optional


LOCAL_SHARED_LIBRARIES := libexif libutils libbinder libcamera_client libskia libcutils libsqlite libhardware libmorpho_easy_hdr libcamera_metadata libmemoryheapion

LOCAL_SHARED_LIBRARIES += libisp


include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := sc8830/isp/libisp.so
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := arithmetic/sc8830/libmorpho_easy_hdr.so
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

