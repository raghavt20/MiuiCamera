.class public Lcom/android/camera/data/data/config/SupportedConfigFactory;
.super Ljava/lang/Object;
.source "SupportedConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/SupportedConfigFactory$CloseElementTrigger;,
        Lcom/android/camera/data/data/config/SupportedConfigFactory$ClosableElement;,
        Lcom/android/camera/data/data/config/SupportedConfigFactory$ConfigItem;
    }
.end annotation


# static fields
.field public static final AI_DETECT:I = 0xf2

.field public static final AI_SCENE:I = 0xc9

.field public static final AI_WATERMARK:I = 0xdf

.field public static final AUTO_ZOOM:I = 0xfd

.field public static final AUXILIARY:I = 0x101

.field public static final BACK:I = 0xd9

.field public static final BACKLIGHT:I = 0xf9

.field public static final BEAUTY:I = 0xef

.field public static final BOKEH:I = 0xc8

.field public static final CINEMATIC_ASPECT_RATIO:I = 0xfb

.field public static final CLONE:I = 0xa3

.field public static final CLONE_USE_GUIDE:I = 0xa4

.field public static final CLOSE_BY_AI:Ljava/lang/String; = "e"

.field public static final CLOSE_BY_BOKEH:Ljava/lang/String; = "f"

.field public static final CLOSE_BY_BURST_SHOOT:Ljava/lang/String; = "d"

.field public static final CLOSE_BY_DOCUMENT_MODE:Ljava/lang/String; = "p"

.field public static final CLOSE_BY_FILTER:Ljava/lang/String; = "k"

.field public static final CLOSE_BY_GROUP:Ljava/lang/String; = "b"

.field public static final CLOSE_BY_HDR:Ljava/lang/String; = "g"

.field public static final CLOSE_BY_HHT:Ljava/lang/String; = "a"

.field public static final CLOSE_BY_MACRO_MODE:Ljava/lang/String; = "m"

.field public static final CLOSE_BY_MANUAL_MODE:Ljava/lang/String; = "mm"

.field public static final CLOSE_BY_RATIO:Ljava/lang/String; = "l"

.field public static final CLOSE_BY_RAW:Ljava/lang/String; = "n"

.field public static final CLOSE_BY_SUPER_RESOLUTION:Ljava/lang/String; = "c"

.field public static final CLOSE_BY_ULTRA_PIXEL:Ljava/lang/String; = "j"

.field public static final CLOSE_BY_ULTRA_PIXEL_PORTRAIT:Ljava/lang/String; = "o"

.field public static final CLOSE_BY_ULTRA_WIDE:Ljava/lang/String; = "i"

.field public static final CLOSE_BY_VIDEO:Ljava/lang/String; = "h"

.field public static final COLOR_ENHANCE:I = 0xe3

.field public static final DOCUMENT:I = 0xdd

.field public static final DUAL_VIDEO:I = 0xde

.field public static final DUAL_WATER_MARK:I = 0xf0

.field public static final EXPOSURE_FEEDBACK:I = 0x102

.field public static final EYE_LIGHT:I = 0xfe

.field public static final FAST:I = 0xe9

.field public static final FILTER:I = 0xc4

.field public static final FLASH:I = 0xc1

.field public static final FLASH_BLANK:I = 0xb1

.field public static final FOCUS_PEAK:I = 0xc7

.field public static final GENDER_AGE:I = 0xee

.field public static final GRADIENTER:I = 0xe5

.field public static final GROUP:I = 0xeb

.field public static final HAND_GESTURE:I = 0xfc

.field public static final HDR:I = 0xc2

.field public static final HHT:I = 0xe6

.field public static final INVALID:I = 0xb0

.field public static final LIGHTING:I = 0xcb

.field public static final LIVE_MUSIC_SELECT:I = 0xf5

.field public static final LIVE_SHOT:I = 0xce

.field public static final LIVE_VIDEO_QUALITY:I = 0xbb

.field public static final MACRO_MODE:I = 0xff

.field public static final MAGIC_FOCUS:I = 0xe7

.field public static final MAGIC_MIRROR:I = 0xec

.field public static final METER:I = 0xd6

.field public static final MIMOJI_EDIT:I = 0xa1

.field public static final MIMOJI_GIF:I = 0xa2

.field public static final MOON:I = 0xf6

.field public static final MORE:I = 0xc5

.field public static final MUTEX_MENU_CONFIGS:[I

.field public static final MUTEX_VIDEO_FEATURES:[I

.field public static final NEW_SLOW_MOTION:I = 0xcc

.field public static final NIGHT:I = 0xf7

.field public static final PORTRAIT:I = 0xc3

.field public static final RATIO:I = 0xd2

.field public static final RAW:I = 0xed

.field public static final REFERENCE_LINE:I = 0xdb

.field public static final RGB_HISTOGRAM:I = 0x105

.field public static final SCENE:I = 0xea

.field public static final SETTING:I = 0xe1

.field public static final SHINE:I = 0xd4

.field public static final SILHOUETTE:I = 0xf8

.field public static final SLOW_QUALITY:I = 0xd5

.field public static final SPEECH_SHUTTER:I = 0x106

.field public static final SUBTITLE:I = 0xdc

.field public static final SUPER_EIS:I = 0xda

.field public static final SUPER_EIS_PRO:I = 0xa5

.field public static final SUPER_RESOLUTION:I = 0xf1

.field public static final TILT:I = 0xe4

.field public static final TIMER:I = 0xe2

.field public static final ULTRA_PIXEL:I = 0xd1

.field public static final ULTRA_PIXEL_PORTRAIT:I = 0xd7

.field public static final ULTRA_WIDE:I = 0xcd

.field public static final ULTRA_WIDE_BOKEH:I = 0xcf

.field public static final VIDEO_8K:I = 0x100

.field public static final VIDEO_BOKEH:I = 0xf3

.field public static final VIDEO_LOG:I = 0x104

.field public static final VIDEO_QUALITY:I = 0xd0

.field public static final VV:I = 0xd8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_VIDEO_FEATURES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xec
        0xeb
        0xe4
        0xe6
        0xf1
        0xea
        0xc3
        0xee
        0xcb
        0xce
        0xd1
    .end array-data

    :array_1
    .array-data 4
        0xe9
        0xd4
        0xda
        0xdc
        0xfd
        0xff
        0xd8
        0xa5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/data/data/config/TopConfigItem;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/TopConfigItem;-><init>(I)V

    return-object v0
.end method

.method private static createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/data/data/config/TopConfigItem;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/data/data/config/TopConfigItem;-><init>(II)V

    return-object v0
.end method

.method public static getConfigKey(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xe3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xfc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfd

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown config item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "pref_camera_show_gender_age_key"

    return-object p0

    :pswitch_1
    const-string p0, "pref_camera_raw_key"

    return-object p0

    :pswitch_2
    const-string p0, "pref_camera_magic_mirror_key"

    return-object p0

    :pswitch_3
    const-string p0, "pref_camera_groupshot_mode_key"

    return-object p0

    :pswitch_4
    const-string p0, "pref_camera_scenemode_setting_key"

    return-object p0

    :sswitch_0
    const-string p0, "pref_speech_shutter"

    return-object p0

    :sswitch_1
    const-string p0, "pref_camera_exposure_feedback"

    return-object p0

    :sswitch_2
    const-string p0, "pref_camera_super_resolution_key"

    return-object p0

    :sswitch_3
    const-string p0, "pref_camera_hand_night_key"

    return-object p0

    :sswitch_4
    const-string p0, "pref_watermark_key"

    return-object p0

    :sswitch_5
    const-string p0, "pref_document_mode_key"

    return-object p0

    :sswitch_6
    const-string p0, "pref_ultra_pixel"

    return-object p0

    :sswitch_7
    const-string p0, "pref_live_shot_enabled"

    return-object p0

    :sswitch_8
    const-string p0, "pref_camera_ai_scene_mode_key"

    return-object p0

    :sswitch_9
    const-string p0, "pref_camera_peak_key"

    return-object p0

    :sswitch_a
    const-string p0, "pref_camera_portrait_mode_key"

    return-object p0

    :cond_0
    const-string p0, "pref_camera_auto_zoom"

    return-object p0

    :cond_1
    const-string p0, "pref_hand_gesture"

    return-object p0

    :cond_2
    const-string p0, "pref_camera_tilt_shift_mode"

    return-object p0

    :cond_3
    const-string p0, "pref_color_enhance"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_a
        0xc7 -> :sswitch_9
        0xc9 -> :sswitch_8
        0xce -> :sswitch_7
        0xd1 -> :sswitch_6
        0xdd -> :sswitch_5
        0xdf -> :sswitch_4
        0xe6 -> :sswitch_3
        0xf1 -> :sswitch_2
        0x102 -> :sswitch_1
        0x106 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xea
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getSupportedExtraConfigs(IILcom/android/camera/data/cloud/DataCloud$CloudFeature;Lcom/android/camera2/CameraCapabilities;Z)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v2, Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-direct {v2}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v5

    const/16 v6, 0xa1

    const/16 v7, 0xd0

    const/16 v8, 0xe1

    const/16 v9, 0xdb

    if-eq v0, v6, :cond_37

    const/16 v6, 0xa2

    const/16 v12, 0xe5

    const/4 v13, 0x1

    if-eq v0, v6, :cond_2c

    const/16 v6, 0xa6

    if-eq v0, v6, :cond_2b

    const/16 v6, 0xa7

    const/16 v14, 0x106

    const/16 v15, 0xd2

    const/16 v11, 0xe2

    if-eq v0, v6, :cond_27

    const/16 v6, 0xa9

    if-eq v0, v6, :cond_2c

    const/16 v6, 0xb4

    if-eq v0, v6, :cond_23

    const/16 v6, 0xb7

    if-eq v0, v6, :cond_22

    const/16 v6, 0xb8

    if-eq v0, v6, :cond_1f

    const/16 v6, 0xfc

    const/16 v7, 0xee

    const/16 v10, 0xec

    packed-switch v0, :pswitch_data_0

    if-nez p4, :cond_1

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 6
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 7
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 9
    :cond_0
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 10
    :cond_1
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 11
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 13
    :cond_2
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 14
    invoke-static {}, Lcom/mi/config/b;->g0()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_3
    const/16 v3, 0xd1

    const/16 v8, 0xeb

    const/16 v11, 0xa5

    if-eqz v1, :cond_b

    if-eq v1, v13, :cond_4

    goto/16 :goto_2

    :cond_4
    if-eqz p4, :cond_5

    .line 16
    invoke-static {}, Lcom/mi/config/b;->Z()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eq v0, v11, :cond_5

    .line 17
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_5
    if-eq v0, v11, :cond_6

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_16

    .line 18
    :cond_6
    invoke-static {}, Lcom/mi/config/b;->j0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/mi/config/b;->F0()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 20
    :cond_7
    invoke-static {}, Lcom/mi/config/b;->u0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_8
    if-eqz p4, :cond_9

    .line 22
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 24
    :cond_9
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 26
    :cond_a
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_2

    .line 27
    :cond_b
    invoke-static {}, Lcom/mi/config/b;->H0()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xe4

    .line 28
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 29
    :cond_c
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 30
    invoke-static {}, Lcom/mi/config/b;->Y()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 32
    :cond_d
    invoke-static {}, Lcom/mi/config/b;->e0()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xea

    .line 33
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_e
    if-eq v0, v11, :cond_f

    if-eqz p4, :cond_f

    .line 34
    invoke-static {}, Lcom/mi/config/b;->Z()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 35
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_f
    if-eqz p4, :cond_10

    .line 36
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_10
    if-eqz p4, :cond_11

    .line 38
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    invoke-virtual {v5}, Lcom/mi/config/a;->z0()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xff

    .line 40
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_11
    const/4 v0, 0x0

    if-eqz p4, :cond_14

    .line 41
    invoke-virtual {v5}, Lcom/mi/config/a;->r0()Z

    move-result v1

    const/16 v3, 0xce

    if-eqz v1, :cond_12

    .line 42
    invoke-virtual {v5}, Lcom/mi/config/a;->A1()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    .line 44
    :cond_12
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1

    .line 45
    :cond_13
    invoke-virtual {v5}, Lcom/mi/config/a;->A1()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 46
    invoke-virtual {v5}, Lcom/mi/config/a;->x0()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_14
    :goto_0
    move v13, v0

    :goto_1
    if-eqz v13, :cond_15

    const/16 v0, 0xf2

    .line 48
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_15
    if-eqz p4, :cond_16

    .line 49
    invoke-virtual {v5}, Lcom/mi/config/a;->k1()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xdd

    .line 50
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 51
    :cond_16
    :goto_2
    invoke-virtual {v5}, Lcom/mi/config/a;->P2()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0xdf

    .line 52
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 53
    :pswitch_0
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 54
    invoke-static {}, Lcom/mi/config/b;->g0()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 56
    :cond_17
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    :pswitch_1
    if-nez v1, :cond_18

    .line 57
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 58
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 59
    :cond_18
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 60
    :pswitch_2
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xd5

    .line 61
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 62
    invoke-virtual {v5}, Lcom/mi/config/a;->G1()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez v1, :cond_19

    const/16 v0, 0xff

    .line 63
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    .line 64
    :cond_19
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 65
    :pswitch_3
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 66
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 67
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 68
    :cond_1a
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 69
    invoke-static {}, Lcom/mi/config/b;->g0()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 70
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1b
    if-ne v1, v13, :cond_1e

    .line 71
    invoke-virtual {v5}, Lcom/mi/config/a;->p2()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 72
    invoke-static {}, Lcom/mi/config/b;->j0()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/mi/config/b;->F0()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 73
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 74
    :cond_1c
    invoke-static {}, Lcom/mi/config/b;->u0()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 75
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 76
    :cond_1d
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 77
    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 78
    :cond_1e
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 79
    :cond_1f
    :pswitch_4
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 80
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 81
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 82
    :cond_20
    invoke-static {}, Lcom/mi/config/b;->g0()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 83
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 84
    :cond_21
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 85
    :cond_22
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xbb

    .line 86
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 87
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 88
    :cond_23
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 89
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 90
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0xfb

    .line 91
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 92
    :cond_24
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoLogFormat()Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x104

    .line 93
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 94
    :cond_25
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 95
    invoke-static {}, Lcom/mi/config/b;->Y()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 96
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 97
    :cond_26
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x105

    .line 98
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 99
    :cond_27
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 100
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 101
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 102
    :cond_28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->d()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportRaw()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xed

    .line 103
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 104
    :cond_29
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 105
    invoke-static {}, Lcom/mi/config/b;->g0()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 106
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 107
    :cond_2a
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 108
    invoke-static {}, Lcom/mi/config/b;->Y()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 109
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 110
    :cond_2b
    :pswitch_5
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 111
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 112
    :cond_2c
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 113
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xe9

    if-eqz v1, :cond_30

    if-eq v1, v13, :cond_2d

    goto/16 :goto_3

    .line 114
    :cond_2d
    invoke-virtual {v5}, Lcom/mi/config/a;->s1()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 115
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 116
    :cond_2e
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v1, 0xfb

    .line 117
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 118
    :cond_2f
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_3

    :cond_30
    const/16 v1, 0xfb

    .line 119
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 121
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 122
    :cond_31
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 123
    invoke-virtual {v5}, Lcom/mi/config/a;->z0()Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0xff

    .line 124
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_32
    if-eqz p4, :cond_33

    .line 125
    invoke-virtual {v5}, Lcom/mi/config/a;->a1()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 126
    invoke-virtual {v5}, Lcom/mi/config/a;->V()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0xfd

    .line 127
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_33
    if-eqz p4, :cond_34

    .line 128
    invoke-virtual {v5}, Lcom/mi/config/a;->C1()Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0xd8

    .line 129
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_34
    if-eqz p4, :cond_35

    .line 130
    invoke-virtual {v5}, Lcom/mi/config/a;->l1()Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0xde

    .line 131
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 132
    :cond_35
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 133
    invoke-static {}, Lcom/mi/config/b;->Y()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 134
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 135
    :cond_36
    :goto_3
    invoke-virtual {v5}, Lcom/mi/config/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz p4, :cond_38

    const/16 v0, 0xdc

    .line 136
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_4

    .line 137
    :cond_37
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 138
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 139
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_38
    :goto_4
    move-object/from16 v0, p2

    .line 140
    invoke-interface {v0, v2}, Lcom/android/camera/data/cloud/DataCloud$CloudFeature;->filterFeature(Lcom/android/camera/data/data/config/SupportedConfigs;)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static final getSupportedTopConfigs(IIZ)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 21

    move/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    .line 5
    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitSupport(II)V

    .line 6
    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitMacro(II)V

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v3, v0, v1, v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 9
    invoke-virtual {v2, v0, v1, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 10
    invoke-virtual {v5, v0, v1, v6}, Lcom/android/camera/data/data/extra/DataItemLive;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0xc1

    .line 13
    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v10, 0x100

    const/16 v12, 0xd1

    const/16 v13, 0x101

    const/16 v14, 0xd9

    const/4 v15, 0x1

    const/16 v16, 0xd6

    const/16 v17, 0xf3

    const/16 v8, 0xc9

    const/16 v18, 0xc2

    const/16 v19, 0xe1

    const/16 v7, 0xa2

    const/4 v9, 0x0

    const/16 v11, 0x11

    const/16 v20, 0xc5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2c

    .line 14
    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 15
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 16
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0xa4

    .line 17
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 19
    :pswitch_2
    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v4}, Lcom/mi/config/a;->d1()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    const/16 v0, 0xa3

    .line 21
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_2
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 23
    :pswitch_3
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 24
    :pswitch_4
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    .line 25
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {v9, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->is8K30FpsCamcorderSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/mi/config/b;->B0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 31
    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    .line 32
    :cond_4
    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_5

    .line 33
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    invoke-static {v12}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_5
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_6
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 38
    :pswitch_5
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 39
    :pswitch_6
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 40
    :pswitch_7
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_7
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_8
    if-eqz p2, :cond_8

    if-eqz v1, :cond_8

    .line 43
    invoke-virtual {v4}, Lcom/mi/config/a;->S3()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v0, 0xf5

    .line 45
    invoke-static {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 47
    :pswitch_9
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 48
    :pswitch_a
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getSupportedFpsOptions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v15, :cond_9

    const/16 v0, 0xcc

    .line 49
    invoke-static {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_9
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 51
    :pswitch_b
    invoke-virtual {v4}, Lcom/mi/config/a;->e2()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    if-eqz p2, :cond_a

    .line 52
    invoke-virtual {v4}, Lcom/mi/config/a;->g2()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xcf

    .line 53
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_a
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 55
    invoke-static {v8, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_b
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 57
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_c
    invoke-virtual {v4}, Lcom/mi/config/a;->c0()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xfb

    .line 59
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_d
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 61
    :pswitch_c
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_e

    .line 62
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    invoke-static {v12}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_e
    invoke-static {}, Lcom/mi/config/b;->B0()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_f
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 67
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_10
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 69
    :pswitch_d
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 70
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_e
    if-nez p2, :cond_12

    .line 71
    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 73
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_11
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 75
    :cond_12
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 76
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_13
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_14
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xc8

    .line 80
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_15
    invoke-virtual {v4}, Lcom/mi/config/a;->Z2()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isSupportedColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v1, :cond_16

    const/16 v0, 0xe3

    .line 82
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_16
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v4}, Lcom/mi/config/a;->B0()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xff

    .line 84
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    if-eqz p2, :cond_18

    .line 85
    invoke-virtual {v4}, Lcom/mi/config/a;->A1()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v4}, Lcom/mi/config/a;->x0()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0xce

    .line 86
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_18
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 88
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_19
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isSupportedSuperPortrait()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0xd7

    .line 90
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1a
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_f
    if-nez v1, :cond_25

    if-eqz p2, :cond_1c

    .line 92
    invoke-virtual {v4}, Lcom/mi/config/a;->a2()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 93
    invoke-virtual {v4}, Lcom/mi/config/a;->b2()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0xa5

    .line 94
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1b
    const/16 v1, 0xda

    .line 95
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_0
    if-eqz p2, :cond_1d

    .line 96
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 97
    invoke-static {v9, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->is8K30FpsCamcorderSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 98
    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1d
    invoke-virtual {v4}, Lcom/mi/config/a;->W()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 100
    invoke-virtual {v4}, Lcom/mi/config/a;->a1()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz p2, :cond_1e

    const/16 v1, 0xfd

    .line 101
    invoke-static {v1, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz p2, :cond_1f

    .line 102
    invoke-virtual {v4}, Lcom/mi/config/a;->D1()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0xd8

    .line 103
    invoke-static {v1, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    if-ne v0, v7, :cond_20

    .line 104
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v4}, Lcom/mi/config/a;->B0()Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xff

    .line 105
    invoke-static {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    if-nez p2, :cond_22

    .line 106
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 107
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_21
    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 109
    :cond_22
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 110
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_23
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0xd4

    .line 112
    invoke-static {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_24
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_25
    if-eqz p2, :cond_26

    if-ne v0, v7, :cond_26

    .line 114
    invoke-virtual {v4}, Lcom/mi/config/a;->S3()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 115
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_26
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 117
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    if-nez p2, :cond_28

    .line 118
    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 119
    :cond_28
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_10
    if-eqz p2, :cond_29

    if-eqz v1, :cond_29

    .line 120
    invoke-virtual {v4}, Lcom/mi/config/a;->S3()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 121
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_29
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 123
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2a
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 125
    :cond_2b
    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 126
    :cond_2c
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 127
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2d
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 129
    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2e
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xc8

    .line 131
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    if-eqz p2, :cond_32

    .line 132
    invoke-virtual {v4}, Lcom/mi/config/a;->r0()Z

    move-result v0

    if-eqz v0, :cond_30

    if-nez v1, :cond_30

    .line 133
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0xf2

    .line 134
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    :cond_30
    invoke-virtual {v4}, Lcom/mi/config/a;->x0()Z

    move-result v0

    if-eqz v0, :cond_31

    if-ne v1, v15, :cond_32

    .line 136
    :cond_31
    invoke-virtual {v4}, Lcom/mi/config/a;->A1()Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0xce

    .line 137
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_32
    :goto_2
    invoke-virtual {v4}, Lcom/mi/config/a;->Z2()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isSupportedColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez v1, :cond_33

    const/16 v0, 0xe3

    .line 139
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_33
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v4}, Lcom/mi/config/a;->B0()Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0xff

    .line 141
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_34
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 143
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_35
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isSupportedSuperPortrait()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0xd7

    .line 145
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_36
    invoke-static/range {v20 .. v20}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_3
    invoke-static {v5}, Lcom/android/camera/data/data/config/TopViewPositionArray;->fillNotUseViewPosition(Ljava/util/List;)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isMutexConfig(I)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
