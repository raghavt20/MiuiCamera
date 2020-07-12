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

.field public static final SUBTITLE:I = 0xdc

.field public static final SUPER_EIS:I = 0xda

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

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_VIDEO_FEATURES:[I

    return-void

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

    const/16 v0, 0xc3

    if-eq p0, v0, :cond_d

    const/16 v0, 0xc7

    if-eq p0, v0, :cond_c

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_b

    const/16 v0, 0xce

    if-eq p0, v0, :cond_a

    const/16 v0, 0xd1

    if-eq p0, v0, :cond_9

    const/16 v0, 0xdd

    if-eq p0, v0, :cond_8

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_7

    const/16 v0, 0xe6

    if-eq p0, v0, :cond_6

    const/16 v0, 0xf1

    if-eq p0, v0, :cond_5

    const/16 v0, 0x102

    if-eq p0, v0, :cond_4

    const/16 v0, 0xe3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xfc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfd

    if-eq p0, v0, :cond_0

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

    :cond_4
    const-string p0, "pref_camera_exposure_feedback"

    return-object p0

    :cond_5
    const-string p0, "pref_camera_super_resolution_key"

    return-object p0

    :cond_6
    const-string p0, "pref_camera_hand_night_key"

    return-object p0

    :cond_7
    const-string p0, "pref_watermark_key"

    return-object p0

    :cond_8
    const-string p0, "pref_document_mode_key"

    return-object p0

    :cond_9
    const-string p0, "pref_ultra_pixel"

    return-object p0

    :cond_a
    const-string p0, "pref_live_shot_enabled"

    return-object p0

    :cond_b
    const-string p0, "pref_camera_ai_scene_mode_key"

    return-object p0

    :cond_c
    const-string p0, "pref_camera_peak_key"

    return-object p0

    :cond_d
    const-string p0, "pref_camera_portrait_mode_key"

    return-object p0

    nop

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

    if-eq v0, v6, :cond_32

    const/16 v6, 0xa2

    const/16 v10, 0xff

    const/16 v11, 0xfb

    const/16 v12, 0xe5

    const/4 v13, 0x1

    if-eq v0, v6, :cond_27

    const/16 v6, 0xa6

    if-eq v0, v6, :cond_26

    const/16 v6, 0xa7

    const/16 v14, 0xd2

    const/16 v15, 0xe2

    if-eq v0, v6, :cond_23

    const/16 v6, 0xa9

    if-eq v0, v6, :cond_27

    const/16 v6, 0xb4

    if-eq v0, v6, :cond_1f

    const/16 v6, 0xb7

    if-eq v0, v6, :cond_1e

    const/16 v6, 0xb8

    if-eq v0, v6, :cond_1c

    const/16 v6, 0xfc

    const/16 v7, 0xee

    const/16 v11, 0xec

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
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 9
    :cond_0
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 10
    :cond_1
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 11
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 13
    :cond_2
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v3, 0xeb

    const/16 v8, 0xa5

    if-eqz v1, :cond_a

    if-eq v1, v13, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eqz p4, :cond_4

    .line 14
    invoke-static {}, Lcom/mi/config/b;->Gl()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq v0, v8, :cond_4

    .line 15
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_4
    if-eq v0, v8, :cond_5

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_15

    .line 16
    :cond_5
    invoke-static {}, Lcom/mi/config/b;->Nl()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/mi/config/b;->hm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 18
    :cond_6
    invoke-static {}, Lcom/mi/config/b;->Yl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_7
    if-eqz p4, :cond_8

    .line 20
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd1

    .line 21
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 22
    :cond_8
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 24
    :cond_9
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_2

    .line 25
    :cond_a
    invoke-static {}, Lcom/mi/config/b;->jm()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xe4

    .line 26
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 27
    :cond_b
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 28
    invoke-static {}, Lcom/mi/config/b;->Fl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 29
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 30
    :cond_c
    invoke-static {}, Lcom/mi/config/b;->Kl()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xea

    .line 31
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_d
    if-eq v0, v8, :cond_e

    if-eqz p4, :cond_e

    .line 32
    invoke-static {}, Lcom/mi/config/b;->Gl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_e
    if-eqz p4, :cond_f

    .line 34
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd1

    .line 35
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_f
    if-eqz p4, :cond_10

    .line 36
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    invoke-virtual {v5}, Lcom/mi/config/a;->zc()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_10
    const/4 v0, 0x0

    if-eqz p4, :cond_13

    .line 39
    invoke-virtual {v5}, Lcom/mi/config/a;->rc()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 40
    invoke-virtual {v5}, Lcom/mi/config/a;->vd()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xce

    .line 41
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    .line 42
    :cond_11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1

    .line 43
    :cond_12
    invoke-virtual {v5}, Lcom/mi/config/a;->vd()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 44
    invoke-virtual {v5}, Lcom/mi/config/a;->xc()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xce

    .line 45
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_13
    :goto_0
    move v13, v0

    :goto_1
    if-eqz v13, :cond_14

    const/16 v0, 0xf2

    .line 46
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_14
    if-eqz p4, :cond_15

    .line 47
    invoke-virtual {v5}, Lcom/mi/config/a;->ed()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xdd

    .line 48
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 49
    :cond_15
    :goto_2
    invoke-virtual {v5}, Lcom/mi/config/a;->we()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0xdf

    .line 50
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 51
    :pswitch_0
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 52
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    :pswitch_1
    if-nez v1, :cond_16

    .line 53
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 54
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 55
    :cond_16
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 56
    :pswitch_2
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xd5

    .line 57
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 58
    invoke-virtual {v5}, Lcom/mi/config/a;->zd()Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez v1, :cond_17

    .line 59
    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    .line 60
    :cond_17
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 61
    :pswitch_3
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 62
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 63
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 64
    :cond_18
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-ne v1, v13, :cond_1b

    .line 65
    invoke-virtual {v5}, Lcom/mi/config/a;->be()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 66
    invoke-static {}, Lcom/mi/config/b;->Nl()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/mi/config/b;->hm()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 68
    :cond_19
    invoke-static {}, Lcom/mi/config/b;->Yl()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 69
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 70
    :cond_1a
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 71
    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 72
    :cond_1b
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 73
    :cond_1c
    :pswitch_4
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 74
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 75
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 76
    :cond_1d
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 77
    :cond_1e
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 78
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 79
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 80
    :cond_1f
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 81
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 82
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 83
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 84
    :cond_20
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoLogFormat()Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x104

    .line 85
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 86
    :cond_21
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 87
    invoke-static {}, Lcom/mi/config/b;->Fl()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 88
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 89
    :cond_22
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x105

    .line 90
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 91
    :cond_23
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 92
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 93
    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 94
    :cond_24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->qb()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportRaw()Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0xed

    .line 95
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 96
    :cond_25
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 97
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 98
    invoke-static {}, Lcom/mi/config/b;->Fl()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 99
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 100
    :cond_26
    :pswitch_5
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 101
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_4

    .line 102
    :cond_27
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 103
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xe9

    if-eqz v1, :cond_2b

    if-eq v1, v13, :cond_28

    goto :goto_3

    .line 104
    :cond_28
    invoke-virtual {v5}, Lcom/mi/config/a;->nd()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 105
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 106
    :cond_29
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 107
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 108
    :cond_2a
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_3

    .line 109
    :cond_2b
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 110
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 111
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 112
    :cond_2c
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 113
    invoke-virtual {v5}, Lcom/mi/config/a;->zc()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 114
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2d
    if-eqz p4, :cond_2e

    .line 115
    invoke-virtual {v5}, Lcom/mi/config/a;->Yc()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 116
    invoke-virtual {v5}, Lcom/mi/config/a;->Yb()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0xfd

    .line 117
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2e
    if-eqz p4, :cond_2f

    .line 118
    invoke-virtual {v5}, Lcom/mi/config/a;->wd()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xd8

    .line 119
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2f
    if-eqz p4, :cond_30

    .line 120
    invoke-virtual {v5}, Lcom/mi/config/a;->fd()Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0xde

    .line 121
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 122
    :cond_30
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 123
    invoke-static {}, Lcom/mi/config/b;->Fl()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 124
    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 125
    :cond_31
    :goto_3
    invoke-virtual {v5}, Lcom/mi/config/a;->Pd()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p4, :cond_33

    const/16 v0, 0xdc

    .line 126
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_4

    .line 127
    :cond_32
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 128
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 129
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_33
    :goto_4
    move-object/from16 v0, p2

    .line 130
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
    .locals 19

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
    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitSupport(II)V

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v3, v0, v1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 7
    invoke-virtual {v2, v0, v1, v5}, Lcom/android/camera/data/data/config/DataItemConfig;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0xc1

    .line 10
    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v7, 0x100

    const/16 v9, 0xd1

    const/16 v10, 0x101

    const/4 v11, 0x1

    const/16 v12, 0xd6

    const/16 v14, 0xf3

    const/16 v16, 0xc2

    const/16 v17, 0xe1

    const/16 v13, 0xa2

    const/4 v8, 0x0

    const/16 v15, 0x11

    const/16 v18, 0xc5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_29

    .line 11
    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 12
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 13
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14
    :pswitch_1
    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-static {v12}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 18
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    invoke-static {v8, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->is8K30FpsCamcorderSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/mi/config/b;->dm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    .line 25
    :cond_3
    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 26
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-static {v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    const/16 v0, 0xd9

    .line 31
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 32
    :pswitch_5
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 33
    :pswitch_6
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_6
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_7
    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {v4}, Lcom/mi/config/a;->rf()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v0, 0xf5

    .line 38
    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 40
    :pswitch_8
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 41
    :pswitch_9
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getSupportedFpsOptions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v11, :cond_8

    const/16 v0, 0xcc

    .line 42
    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_8
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 44
    :pswitch_a
    invoke-virtual {v4}, Lcom/mi/config/a;->isSupportUltraWide()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    if-eqz p2, :cond_9

    .line 45
    invoke-virtual {v4}, Lcom/mi/config/a;->Ud()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xcf

    .line 46
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_9
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xc9

    .line 48
    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_a
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_b
    invoke-virtual {v4}, Lcom/mi/config/a;->isCinematicPhotoSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xfb

    .line 52
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_c
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 54
    :pswitch_b
    invoke-static {v12}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_d

    .line 55
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    invoke-static {v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_d
    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_e
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 61
    :pswitch_c
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 62
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_d
    if-nez p2, :cond_10

    .line 63
    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_f
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 67
    :cond_10
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_11
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc9

    .line 70
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_12
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xc8

    .line 72
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_13
    invoke-virtual {v4}, Lcom/mi/config/a;->supportColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportedColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v1, :cond_14

    const/16 v0, 0xe3

    .line 74
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_14
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v4}, Lcom/mi/config/a;->Bc()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xff

    .line 76
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz p2, :cond_16

    .line 77
    invoke-virtual {v4}, Lcom/mi/config/a;->vd()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v4}, Lcom/mi/config/a;->xc()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0xce

    .line 78
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_16
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 80
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_17
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportedSuperPortrait()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0xd7

    .line 82
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_18
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_e
    if-nez v1, :cond_22

    if-eqz p2, :cond_19

    .line 84
    invoke-virtual {v4}, Lcom/mi/config/a;->Qd()Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0xda

    .line 85
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    if-eqz p2, :cond_1a

    .line 86
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 87
    invoke-static {v8, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->is8K30FpsCamcorderSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 88
    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1a
    invoke-virtual {v4}, Lcom/mi/config/a;->Zb()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 90
    invoke-virtual {v4}, Lcom/mi/config/a;->Yc()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz p2, :cond_1b

    const/16 v1, 0xfd

    .line 91
    invoke-static {v1, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz p2, :cond_1c

    .line 92
    invoke-virtual {v4}, Lcom/mi/config/a;->xd()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0xd8

    .line 93
    invoke-static {v1, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-ne v0, v13, :cond_1d

    .line 94
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v4}, Lcom/mi/config/a;->Bc()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xff

    .line 95
    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    if-nez p2, :cond_1f

    .line 96
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 97
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1e
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 99
    :cond_1f
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 100
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_20
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0xd4

    .line 102
    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_21
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_22
    if-eqz p2, :cond_23

    if-ne v0, v13, :cond_23

    .line 104
    invoke-virtual {v4}, Lcom/mi/config/a;->rf()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 105
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_23
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 107
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    if-nez p2, :cond_25

    .line 108
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 109
    :cond_25
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_f
    if-eqz p2, :cond_26

    if-eqz v1, :cond_26

    .line 110
    invoke-virtual {v4}, Lcom/mi/config/a;->rf()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 111
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_26
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 113
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_27
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 115
    :cond_28
    :goto_0
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 116
    :cond_29
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 117
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2a
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xc9

    .line 119
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2b
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0xc8

    .line 121
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    if-eqz p2, :cond_2f

    .line 122
    invoke-virtual {v4}, Lcom/mi/config/a;->rc()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez v1, :cond_2d

    .line 123
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xf2

    .line 124
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_2d
    invoke-virtual {v4}, Lcom/mi/config/a;->xc()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-ne v1, v11, :cond_2f

    .line 126
    :cond_2e
    invoke-virtual {v4}, Lcom/mi/config/a;->vd()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xce

    .line 127
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2f
    :goto_1
    invoke-virtual {v4}, Lcom/mi/config/a;->supportColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportedColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_30

    if-nez v1, :cond_30

    const/16 v0, 0xe3

    .line 129
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_30
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v4}, Lcom/mi/config/a;->Bc()Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0xff

    .line 131
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_31
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 133
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_32
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportedSuperPortrait()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0xd7

    .line 135
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_33
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_2
    invoke-static {v6}, Lcom/android/camera/data/data/config/TopViewPositionArray;->fillNotUseViewPosition(Ljava/util/List;)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
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
