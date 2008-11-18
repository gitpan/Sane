# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl enums.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 115;
BEGIN { use_ok('Sane') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

is (SANE_FALSE, 0, "SANE_FALSE");
is (SANE_TRUE,  1, "SANE_TRUE");

is (SANE_STATUS_GOOD,           0, "SANE_STATUS_GOOD");
is (SANE_STATUS_UNSUPPORTED,    1, "SANE_STATUS_UNSUPPORTED");
is (SANE_STATUS_CANCELLED,      2, "SANE_STATUS_CANCELLED");
is (SANE_STATUS_DEVICE_BUSY,    3, "SANE_STATUS_DEVICE_BUSY");
is (SANE_STATUS_INVAL,          4, "SANE_STATUS_INVAL");
is (SANE_STATUS_EOF,            5, "SANE_STATUS_EOF");
is (SANE_STATUS_JAMMED,         6, "SANE_STATUS_JAMMED");
is (SANE_STATUS_NO_DOCS,        7, "SANE_STATUS_NO_DOCS");
is (SANE_STATUS_COVER_OPEN,     8, "SANE_STATUS_COVER_OPEN");
is (SANE_STATUS_IO_ERROR,       9, "SANE_STATUS_IO_ERROR");
is (SANE_STATUS_NO_MEM,        10, "SANE_STATUS_NO_MEM");
is (SANE_STATUS_ACCESS_DENIED, 11, "SANE_STATUS_ACCESS_DENIED");

is (SANE_TYPE_BOOL,   0, "SANE_TYPE_BOOL");
is (SANE_TYPE_INT,    1, "SANE_TYPE_INT");
is (SANE_TYPE_FIXED,  2, "SANE_TYPE_FIXED");
is (SANE_TYPE_STRING, 3, "SANE_TYPE_STRING");
is (SANE_TYPE_BUTTON, 4, "SANE_TYPE_BUTTON");
is (SANE_TYPE_GROUP,  5, "SANE_TYPE_GROUP");

is (SANE_UNIT_NONE,        0, "SANE_UNIT_NONE");
is (SANE_UNIT_PIXEL,       1, "SANE_UNIT_PIXEL");
is (SANE_UNIT_BIT,         2, "SANE_UNIT_BIT");
is (SANE_UNIT_MM,          3, "SANE_UNIT_MM");
is (SANE_UNIT_DPI,         4, "SANE_UNIT_DPI");
is (SANE_UNIT_PERCENT,     5, "SANE_UNIT_PERCENT");
is (SANE_UNIT_MICROSECOND, 6, "SANE_UNIT_MICROSECOND");

is (SANE_CAP_SOFT_SELECT,       1, "SANE_CAP_SOFT_SELECT");
is (SANE_CAP_HARD_SELECT,       2, "SANE_CAP_HARD_SELECT");
is (SANE_CAP_SOFT_DETECT,       4, "SANE_CAP_SOFT_DETECT");
is (SANE_CAP_EMULATED,          8, "SANE_CAP_EMULATED");
is (SANE_CAP_AUTOMATIC,        16, "SANE_CAP_AUTOMATIC");
is (SANE_CAP_INACTIVE,         32, "SANE_CAP_INACTIVE");
is (SANE_CAP_ADVANCED,         64, "SANE_CAP_ADVANCED");
is (SANE_CAP_ALWAYS_SETTABLE, 128, "SANE_CAP_ALWAYS_SETTABLE");

is (SANE_INFO_INEXACT,        1, "SANE_INFO_INEXACT");
is (SANE_INFO_RELOAD_OPTIONS, 2, "SANE_INFO_RELOAD_OPTIONS");
is (SANE_INFO_RELOAD_PARAMS,  4, "SANE_INFO_RELOAD_PARAMS");

is (SANE_CONSTRAINT_NONE,        0, "SANE_CONSTRAINT_NONE");
is (SANE_CONSTRAINT_RANGE,       1, "SANE_CONSTRAINT_RANGE");
is (SANE_CONSTRAINT_WORD_LIST,   2, "SANE_CONSTRAINT_WORD_LIST");
is (SANE_CONSTRAINT_STRING_LIST, 3, "SANE_CONSTRAINT_STRING_LIST");

is (SANE_FRAME_GRAY,  0, "SANE_FRAME_GRAY");
is (SANE_FRAME_RGB,   1, "SANE_FRAME_RGB");
is (SANE_FRAME_RED,   2, "SANE_FRAME_RED");
is (SANE_FRAME_GREEN, 3, "SANE_FRAME_GREEN");
is (SANE_FRAME_BLUE,  4, "SANE_FRAME_BLUE");

is (SANE_NAME_NUM_OPTIONS,		"", "SANE_NAME_NUM_OPTIONS");
is (SANE_NAME_PREVIEW,		"preview", "SANE_NAME_PREVIEW");
is (SANE_NAME_GRAY_PREVIEW,		"preview-in-gray", "SANE_NAME_GRAY_PREVIEW");
is (SANE_NAME_BIT_DEPTH,		"depth", "SANE_NAME_BIT_DEPTH");
is (SANE_NAME_SCAN_MODE,		"mode", "SANE_NAME_SCAN_MODE");
is (SANE_NAME_SCAN_SPEED,		"speed", "SANE_NAME_SCAN_SPEED");
is (SANE_NAME_SCAN_SOURCE,		"source", "SANE_NAME_SCAN_SOURCE");
is (SANE_NAME_BACKTRACK,		"backtrack", "SANE_NAME_BACKTRACK");
is (SANE_NAME_SCAN_TL_X,		"tl-x", "SANE_NAME_SCAN_TL_X");
is (SANE_NAME_SCAN_TL_Y,		"tl-y", "SANE_NAME_SCAN_TL_Y");
is (SANE_NAME_SCAN_BR_X,		"br-x", "SANE_NAME_SCAN_BR_X");
is (SANE_NAME_SCAN_BR_Y,		"br-y", "SANE_NAME_SCAN_BR_Y");
is (SANE_NAME_SCAN_RESOLUTION,	"resolution", "SANE_NAME_SCAN_RESOLUTION");
is (SANE_NAME_SCAN_X_RESOLUTION,	"resolution", "SANE_NAME_SCAN_X_RESOLUTION");
is (SANE_NAME_SCAN_Y_RESOLUTION,	"y-resolution", "SANE_NAME_SCAN_Y_RESOLUTION");
is (SANE_NAME_CUSTOM_GAMMA,		"custom-gamma", "SANE_NAME_CUSTOM_GAMMA");
is (SANE_NAME_GAMMA_VECTOR,		"gamma-table", "SANE_NAME_GAMMA_VECTOR");
is (SANE_NAME_GAMMA_VECTOR_R,	"red-gamma-table", "SANE_NAME_GAMMA_VECTOR_R");
is (SANE_NAME_GAMMA_VECTOR_G,	"green-gamma-table", "SANE_NAME_GAMMA_VECTOR_G");
is (SANE_NAME_GAMMA_VECTOR_B,	"blue-gamma-table", "SANE_NAME_GAMMA_VECTOR_B");
is (SANE_NAME_BRIGHTNESS,		"brightness", "SANE_NAME_BRIGHTNESS");
is (SANE_NAME_CONTRAST,		"contrast", "SANE_NAME_CONTRAST");
is (SANE_NAME_GRAIN_SIZE,		"grain", "SANE_NAME_GRAIN_SIZE");
is (SANE_NAME_HALFTONE,		"halftoning", "SANE_NAME_HALFTONE");
is (SANE_NAME_BLACK_LEVEL,           "black-level", "SANE_NAME_BLACK_LEVEL");
is (SANE_NAME_WHITE_LEVEL,           "white-level", "SANE_NAME_WHITE_LEVEL");
is (SANE_NAME_WHITE_LEVEL_R,         "white-level-r", "SANE_NAME_WHITE_LEVEL_R");
is (SANE_NAME_WHITE_LEVEL_G,         "white-level-g", "SANE_NAME_WHITE_LEVEL_G");
is (SANE_NAME_WHITE_LEVEL_B,         "white-level-b", "SANE_NAME_WHITE_LEVEL_B");
is (SANE_NAME_SHADOW,		"shadow", "SANE_NAME_SHADOW");
is (SANE_NAME_SHADOW_R,		"shadow-r", "SANE_NAME_SHADOW_R");
is (SANE_NAME_SHADOW_G,		"shadow-g", "SANE_NAME_SHADOW_G");
is (SANE_NAME_SHADOW_B,		"shadow-b", "SANE_NAME_SHADOW_B");
is (SANE_NAME_HIGHLIGHT,		"highlight", "SANE_NAME_HIGHLIGHT");
is (SANE_NAME_HIGHLIGHT_R,		"highlight-r", "SANE_NAME_HIGHLIGHT_R");
is (SANE_NAME_HIGHLIGHT_G,		"highlight-g", "SANE_NAME_HIGHLIGHT_G");
is (SANE_NAME_HIGHLIGHT_B,		"highlight-b", "SANE_NAME_HIGHLIGHT_B");
is (SANE_NAME_HUE,			"hue", "SANE_NAME_HUE");
is (SANE_NAME_SATURATION,		"saturation", "SANE_NAME_SATURATION");
is (SANE_NAME_FILE,			"filename", "SANE_NAME_FILE");
is (SANE_NAME_HALFTONE_DIMENSION,	"halftone-size", "SANE_NAME_HALFTONE_DIMENSION");
is (SANE_NAME_HALFTONE_PATTERN,	"halftone-pattern", "SANE_NAME_HALFTONE_PATTERN");
is (SANE_NAME_RESOLUTION_BIND,	"resolution-bind", "SANE_NAME_RESOLUTION_BIND");
is (SANE_NAME_NEGATIVE,		"negative", "SANE_NAME_NEGATIVE");
is (SANE_NAME_QUALITY_CAL,		"quality-cal", "SANE_NAME_QUALITY_CAL");
is (SANE_NAME_DOR,			"double-res", "SANE_NAME_DOR");
is (SANE_NAME_RGB_BIND,		"rgb-bind", "SANE_NAME_RGB_BIND");
is (SANE_NAME_THRESHOLD,		"threshold", "SANE_NAME_THRESHOLD");
is (SANE_NAME_ANALOG_GAMMA,		"analog-gamma", "SANE_NAME_ANALOG_GAMMA");
is (SANE_NAME_ANALOG_GAMMA_R,	"analog-gamma-r", "SANE_NAME_ANALOG_GAMMA_R");
is (SANE_NAME_ANALOG_GAMMA_G,	"analog-gamma-g", "SANE_NAME_ANALOG_GAMMA_G");
is (SANE_NAME_ANALOG_GAMMA_B,	"analog-gamma-b", "SANE_NAME_ANALOG_GAMMA_B");
is (SANE_NAME_ANALOG_GAMMA_BIND,	"analog-gamma-bind", "SANE_NAME_ANALOG_GAMMA_BIND");
is (SANE_NAME_WARMUP,		"warmup", "SANE_NAME_WARMUP");
is (SANE_NAME_CAL_EXPOS_TIME,	"cal-exposure-time", "SANE_NAME_CAL_EXPOS_TIME");
is (SANE_NAME_CAL_EXPOS_TIME_R,	"cal-exposure-time-r", "SANE_NAME_CAL_EXPOS_TIME_R");
is (SANE_NAME_CAL_EXPOS_TIME_G,	"cal-exposure-time-g", "SANE_NAME_CAL_EXPOS_TIME_G");
is (SANE_NAME_CAL_EXPOS_TIME_B,	"cal-exposure-time-b", "SANE_NAME_CAL_EXPOS_TIME_B");
is (SANE_NAME_SCAN_EXPOS_TIME,	"scan-exposure-time", "SANE_NAME_SCAN_EXPOS_TIME");
is (SANE_NAME_SCAN_EXPOS_TIME_R,	"scan-exposure-time-r", "SANE_NAME_SCAN_EXPOS_TIME_R");
is (SANE_NAME_SCAN_EXPOS_TIME_G,	"scan-exposure-time-g", "SANE_NAME_SCAN_EXPOS_TIME_G");
is (SANE_NAME_SCAN_EXPOS_TIME_B,	"scan-exposure-time-b", "SANE_NAME_SCAN_EXPOS_TIME_B");
is (SANE_NAME_SELECT_EXPOSURE_TIME,	"select-exposure-time", "SANE_NAME_SELECT_EXPOSURE_TIME");
is (SANE_NAME_CAL_LAMP_DEN,		"cal-lamp-density", "SANE_NAME_CAL_LAMP_DEN");
is (SANE_NAME_SCAN_LAMP_DEN,		"scan-lamp-density", "SANE_NAME_SCAN_LAMP_DEN");
is (SANE_NAME_SELECT_LAMP_DENSITY,	"select-lamp-density", "SANE_NAME_SELECT_LAMP_DENSITY");
is (SANE_NAME_LAMP_OFF_AT_EXIT,	"lamp-off-at-exit", "SANE_NAME_LAMP_OFF_AT_EXIT");
