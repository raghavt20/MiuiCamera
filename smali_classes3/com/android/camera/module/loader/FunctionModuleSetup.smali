.class public Lcom/android/camera/module/loader/FunctionModuleSetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionModuleSetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/BaseModule;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FunctionModuleSetup"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 10
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/FunctionModuleSetup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply: module isPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    const/16 v2, 0xe1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0, v2}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->reset()V

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 11
    iget v5, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v6, 0xa2

    const/4 v7, 0x0

    const-string v8, "pref_video_speed_fast_key"

    if-eq v5, v6, :cond_b

    const/16 v6, 0xa3

    const-string v9, "pref_camera_square_mode_key"

    if-eq v5, v6, :cond_a

    const/16 v6, 0xa5

    if-eq v5, v6, :cond_9

    const/16 v6, 0xa7

    if-eq v5, v6, :cond_7

    const/16 v6, 0xa9

    if-eq v5, v6, :cond_6

    const/16 v6, 0xab

    if-eq v5, v6, :cond_4

    const/16 v6, 0xae

    if-eq v5, v6, :cond_3

    const/16 v1, 0xaf

    if-eq v5, v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v5, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    .line 15
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v4

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->switchOnCurrentSupported(IILcom/android/camera2/CameraCapabilities;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/data/data/extra/DataItemLive;->setRecordSegmentTimeInfo(Ljava/util/List;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    const-string v5, "pref_camera_portrait_mode_key"

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFlashSupportedInManualMode()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    .line 24
    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    :cond_8
    const-string v1, "pref_camera_manual_mode_key"

    .line 25
    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_9
    invoke-virtual {v4, v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_a
    invoke-virtual {v4, v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_b
    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 29
    :cond_c
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 30
    invoke-static {v0, v2}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 31
    :cond_d
    :try_start_0
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 32
    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setCameraId(I)V

    .line 33
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getCurrentCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setCameraDevice(Lcom/android/camera2/Camera2Proxy;)V

    .line 34
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/BaseModule;->onCreate(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 36
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onResume()V

    :cond_e
    return-object p1

    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/android/camera/module/loader/FunctionModuleSetup;->TAG:Ljava/lang/String;

    const-string v1, "Module init error: "

    invoke-static {p1, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    const/16 p0, 0xed

    .line 40
    invoke-static {v7, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionModuleSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/constant/GlobalConstant;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    return-object p0
.end method
