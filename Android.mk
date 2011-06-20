LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	src/dec/alpha.c \
	src/dec/bits.c \
	src/dec/dsp.c \
	src/dec/frame.c \
	src/dec/idec.c \
	src/dec/layer.c \
	src/dec/quant.c \
	src/dec/tree.c \
	src/dec/vp8.c \
	src/dec/webp.c \
	src/dec/io.c \
	src/dec/buffer.c \
	src/dec/yuv.c \
	src/enc/alpha.c \
	src/enc/analysis.c \
	src/enc/bit_writer.c \
	src/enc/config.c \
	src/enc/dsp.c \
	src/enc/filter.c \
	src/enc/frame.c \
	src/enc/iterator.c \
	src/enc/layer.c \
	src/enc/picture.c \
	src/enc/quant.c \
	src/enc/syntax.c \
	src/enc/tree.c \
	src/enc/webpenc.c

LOCAL_CFLAGS := -Wall -DANDROID -DHAVE_MALLOC_H -DHAVE_PTHREAD \
                -finline-functions -frename-registers -ffast-math \
                -s -fomit-frame-pointer -Isrc/webp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_MODULE:= webp

include $(BUILD_STATIC_LIBRARY)
