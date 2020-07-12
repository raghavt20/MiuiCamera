.class public Lcom/android/camera/statistic/MistatsWrapper;
.super Ljava/lang/Object;
.source "MistatsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;,
        Lcom/android/camera/statistic/MistatsWrapper$TriggerMode;,
        Lcom/android/camera/statistic/MistatsWrapper$ModuleName;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2882303761517373386"

.field private static final APP_KEY:Ljava/lang/String; = "5641737344386"

.field private static final CHANNEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MistatsWrapper"

.field private static sDumpStatEvent:Z

.field private static sInitialized:Z

.field private static sIsAnonymous:Z

.field private static sIsCounterEventEnabled:Z

.field private static sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ro.product.mod_device"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/MistatsWrapper;->CHANNEL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_6

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "attr_trigger_mode"

    if-eqz v2, :cond_0

    const-string p2, "click"

    .line 5
    invoke-virtual {v0, v3, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v3, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    .line 10
    invoke-static {p2}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attr_module_name"

    .line 11
    invoke-virtual {v0, v2, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "attr_feature_name"

    .line 12
    invoke-virtual {v0, v3, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 15
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "on"

    goto :goto_1

    :cond_1
    const-string p0, "off"

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "attr_value"

    .line 18
    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    const-string p1, "front"

    const-string p2, "back"

    if-eqz p0, :cond_4

    move-object p0, p1

    goto :goto_2

    :cond_4
    move-object p0, p2

    :goto_2
    const-string v2, "attr_sensor_id"

    invoke-virtual {v0, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, p2

    :goto_3
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_common"

    .line 22
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 23
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_6

    .line 24
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapKey:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mapValue:"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object p0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "functionKey:"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mapKey:"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapValue:"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static featureTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_5

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "attr_trigger_mode"

    if-eqz v2, :cond_0

    const-string p2, "click"

    .line 5
    invoke-virtual {v0, v3, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v3, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_0
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_1

    :cond_1
    const-string p1, "off"

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    .line 13
    invoke-static {p2}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attr_module_name"

    .line 14
    invoke-virtual {v0, v2, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "attr_value"

    .line 15
    invoke-virtual {v0, v3, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const-string v5, "front"

    const-string v6, "back"

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_2

    :cond_3
    move-object v4, v6

    :goto_2
    const-string v7, "attr_sensor_id"

    invoke-virtual {v0, v7, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v6

    :goto_3
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 21
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_5

    .line 22
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public static getStatsModuleKey(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    const-string p0, "M_funArMimoji2_"

    goto :goto_0

    :pswitch_2
    const-string p0, "M_miLive_"

    goto :goto_0

    :pswitch_3
    const-string p0, "M_idCard_"

    goto :goto_0

    :pswitch_4
    const-string p0, "M_liveVlog_"

    goto :goto_0

    :pswitch_5
    const-string p0, "M_standaloneMacro_"

    goto :goto_0

    :pswitch_6
    const-string p0, "M_funArMimoji_"

    goto :goto_0

    :pswitch_7
    const-string p0, "M_wideSelfie_"

    goto :goto_0

    :pswitch_8
    const-string p0, "M_48mPixel_"

    goto :goto_0

    :pswitch_9
    const-string p0, "M_liveDouyin_"

    goto :goto_0

    :pswitch_a
    const-string p0, "M_superNight_"

    goto :goto_0

    :pswitch_b
    const-string p0, "M_newSlowMotion_"

    goto :goto_0

    :pswitch_c
    const-string p0, "M_portrait_"

    goto :goto_0

    :pswitch_d
    const-string p0, "M_videoHfr_"

    goto :goto_0

    :pswitch_e
    const-string p0, "M_fastMotion_"

    goto :goto_0

    :pswitch_f
    const-string p0, "M_slowMotion_"

    goto :goto_0

    :pswitch_10
    const-string p0, "M_manual_"

    goto :goto_0

    :pswitch_11
    const-string p0, "M_panorama_"

    goto :goto_0

    :pswitch_12
    const-string p0, "M_square_"

    goto :goto_0

    :pswitch_13
    const-string p0, "M_capture_"

    goto :goto_0

    :pswitch_14
    const-string p0, "M_recordVideo_"

    goto :goto_0

    :pswitch_15
    const-string p0, "M_funTinyVideo_"

    goto :goto_0

    :pswitch_16
    const-string p0, "M_unspecified_"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/android/camera/statistic/MistatsWrapper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sInitialized:Z

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/android/camera/Util;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sInitialized:Z

    const-string v2, "camera.debug.dump_stat_event"

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f050017

    .line 5
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    .line 6
    sget-boolean v4, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v4, :cond_3

    const v4, 0x7f050016

    .line 7
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sIsCounterEventEnabled:Z

    .line 8
    sget-boolean v2, Ld/d/a;->lh:Z

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sIsAnonymous:Z

    const-string v2, "2882303761517373386"

    const-string v4, "5641737344386"

    .line 9
    sget-object v5, Lcom/android/camera/statistic/MistatsWrapper;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v2, v4, v3, v5}, Lcom/xiaomi/stat/MiStat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 10
    sget-boolean p0, Lcom/android/camera/statistic/MistatsWrapper;->sIsAnonymous:Z

    if-nez p0, :cond_1

    move v3, v1

    :cond_1
    invoke-static {v3}, Lcom/xiaomi/stat/MiStat;->setExceptionCatcherEnabled(Z)V

    .line 11
    sget-boolean p0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p0, :cond_2

    .line 12
    invoke-static {v1}, Lcom/xiaomi/stat/MiStat;->setDebugModeEnabled(Z)V

    :cond_2
    const p0, 0x15f90

    .line 13
    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->setUploadInterval(I)V

    .line 14
    invoke-static {v1, v1}, Lcom/xiaomi/stat/MiStat;->setUseSystemUploadingService(ZZ)Z

    .line 15
    sget-boolean p0, Ld/d/a;->lh:Z

    if-eqz p0, :cond_3

    .line 16
    invoke-static {}, Ld/d/a;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/stat/MiStat;->setInternationalRegion(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_3
    monitor-exit v0

    return-void

    .line 18
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isCounterEventDisabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsCounterEventEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "none"

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 2
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "attr_trigger_mode"

    if-eqz v2, :cond_0

    const-string p3, "click"

    .line 6
    invoke-virtual {v0, v3, p3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v3, p3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "on"

    goto :goto_1

    :cond_1
    const-string p2, "off"

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p3

    .line 14
    invoke-static {p3}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "attr_module_name"

    .line 15
    invoke-virtual {v0, v2, p3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    const-string v4, "front"

    const-string v5, "back"

    if-eqz v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    move-object v3, v5

    :goto_2
    const-string v6, "attr_sensor_id"

    invoke-virtual {v0, v6, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v5

    :goto_3
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 22
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_5

    .line 23
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public static mistatEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 5
    invoke-static {v2}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attr_module_name"

    .line 6
    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "front"

    goto :goto_0

    :cond_0
    const-string v4, "back"

    :goto_0
    const-string v5, "attr_sensor_id"

    .line 8
    invoke-virtual {v0, v5, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 17
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_2

    .line 18
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 8
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static modeMistatsEvent(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "photo"

    const-string v3, "attr_mode"

    .line 4
    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const-string v5, "front"

    const-string v6, "back"

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const-string v7, "attr_sensor_id"

    invoke-virtual {v0, v7, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 14
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_3

    .line 15
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    const-string v3, "front"

    const-string v4, "back"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v5, "attr_sensor_id"

    invoke-virtual {v0, v5, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 12
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_3

    .line 13
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v2, "click"

    const-string v3, "attr_trigger_mode"

    .line 7
    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "attr_feature_name"

    .line 8
    invoke-virtual {v0, v4, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "attr_value"

    .line 9
    invoke-virtual {v0, v5, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    const-string v7, "front"

    const-string v8, "back"

    if-eqz v6, :cond_2

    move-object v6, v7

    goto :goto_1

    :cond_2
    move-object v6, v8

    :goto_1
    const-string v9, "attr_sensor_id"

    invoke-virtual {v0, v9, v6}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {v1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 16
    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_4

    .line 17
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public static recordPageEnd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackPageEnd(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    :cond_0
    return-void
.end method

.method public static recordPageStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackPageStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static recordPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/stat/MiStat;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6501cdc9

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "attr_video_time_lapse_frame_interval"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :catch_0
    sget-object v0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_2
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_7

    .line 9
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    const-string v1, "attr_trigger_mode"

    const-string v2, "click"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attr_feature_name"

    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attr_value"

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v3, "key_settings"

    .line 13
    invoke-static {v3, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 14
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v0, :cond_7

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v3, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public static settingSchedualEvent(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v1}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    const-string v2, "schedule"

    const-string v3, "attr_trigger_mode"

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "key_settings"

    .line 11
    invoke-static {p0, v1}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 12
    sget-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v1, :cond_1

    .line 13
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
