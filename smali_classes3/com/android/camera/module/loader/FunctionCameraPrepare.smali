.class public Lcom/android/camera/module/loader/FunctionCameraPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraPrepare.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/Camera;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FunctionCameraPrepare"


# instance fields
.field private baseModule:Lcom/android/camera/module/BaseModule;

.field private mNeedReConfigureData:Z

.field private mResetType:I


# direct methods
.method public constructor <init>(IIZLcom/android/camera/module/BaseModule;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    .line 2
    iput p2, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mNeedReConfigureData:Z

    .line 4
    iput-object p4, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    return-void
.end method

.method private reconfigureData()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mNeedReConfigureData:Z

    const-string v2, "pref_camera_zoom_key"

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v5

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v6

    .line 9
    invoke-virtual {v4}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v7

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v9

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v10

    .line 13
    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v11, "pref_camera_exposure_key"

    invoke-interface {v2, v11}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 14
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 16
    :goto_0
    invoke-virtual {v2, v13}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->reInitIntentType(Z)V

    .line 17
    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSuperEIS()Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 19
    :goto_1
    invoke-virtual {v2, v13}, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;->reInitIntentType(Z)V

    .line 20
    :cond_4
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isValidFlashValue(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "2"

    if-nez v13, :cond_5

    .line 22
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 24
    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "5"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    :cond_6
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v2

    iget v13, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 26
    invoke-virtual {v6, v13}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v13

    .line 27
    invoke-interface {v7, v2, v13}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 28
    :cond_7
    :goto_2
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v2

    .line 29
    iget v13, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v15, 0xa3

    const-string v12, "FunctionCameraPrepare"

    const/16 v11, 0xa5

    move/from16 v16, v5

    const/16 v5, 0xa7

    if-eq v13, v15, :cond_8

    if-eq v13, v11, :cond_8

    if-eq v13, v5, :cond_8

    const/16 v15, 0xad

    if-eq v13, v15, :cond_8

    const/16 v15, 0xaf

    if-eq v13, v15, :cond_8

    const/16 v15, 0xab

    if-ne v13, v15, :cond_c

    .line 30
    :cond_8
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getFullSupportRatioValues()[Ljava/lang/String;

    move-result-object v13

    .line 31
    iget v15, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    array-length v15, v13

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v15, :cond_a

    aget-object v11, v13, v5

    .line 33
    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/16 v11, 0xa5

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_c

    .line 34
    iget v5, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v11, 0xa5

    if-eq v5, v11, :cond_b

    const-string v5, "1x1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    const-string v2, "reconfigureData: clear DATA_CONFIG_RATIO"

    .line 35
    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "pref_camera_picturesize_key"

    .line 36
    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 37
    :cond_c
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v5, 0xac

    if-ne v2, v5, :cond_f

    .line 38
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getSupportedFpsOptions()[Ljava/lang/String;

    move-result-object v2

    .line 41
    array-length v11, v2

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v11, :cond_e

    aget-object v15, v2, v13

    .line 42
    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_f

    const-string v2, "reconfigureData: clear DATA_CONFIG_NEW_SLOW_MOTION_KEY"

    .line 43
    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "key_new_slow_motion"

    .line 44
    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 45
    :cond_f
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v5, 0xa7

    if-ne v2, v5, :cond_12

    .line 46
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0f02d8

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "pref_qc_camera_iso_key"

    .line 47
    invoke-virtual {v4, v5, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mi/config/a;->bf()Z

    move-result v11

    if-nez v11, :cond_11

    .line 49
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mi/config/a;->Ue()Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_7

    :cond_10
    const v11, 0x7f03000d

    goto :goto_8

    :cond_11
    :goto_7
    const v11, 0x7f03000e

    .line 50
    :goto_8
    invoke-static {v2, v11}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 51
    invoke-interface {v7, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 52
    :cond_12
    invoke-static {}, Lcom/mi/config/b;->Zl()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "pref_focus_position_key"

    .line 53
    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v2, "pref_qc_camera_exposuretime_key"

    .line 54
    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 55
    :cond_13
    invoke-static {}, Lcom/android/camera/Util;->isLabOptionsVisible()Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "pref_camera_facedetection_key"

    .line 56
    invoke-interface {v8, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v5, "pref_camera_portrait_with_facebeauty_key"

    .line 57
    invoke-interface {v2, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v5, "pref_camera_facedetection_auto_hidden_key"

    .line 58
    invoke-interface {v2, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v5, "pref_camera_dual_enable_key"

    .line 59
    invoke-interface {v2, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v5, "pref_camera_dual_sat_enable_key"

    .line 60
    invoke-interface {v2, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v5, "pref_camera_mfnr_sat_enable_key"

    .line 61
    invoke-interface {v2, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v5, "pref_camera_sr_enable_key"

    .line 62
    invoke-interface {v2, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_14
    const-string v2, "pref_camera_antibanding_key"

    const-string v5, "1"

    .line 63
    invoke-virtual {v1, v2, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-static {v5}, Lcom/android/camera/Util;->isValidValue(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 65
    invoke-interface {v8, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 66
    :cond_15
    invoke-static {}, Lcom/mi/config/b;->Yk()Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "pref_fingerprint_capture_key"

    .line 67
    invoke-interface {v8, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 68
    :cond_16
    iget v2, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    packed-switch v2, :pswitch_data_0

    :goto_9
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 69
    :pswitch_0
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v4, 0xa1

    if-eq v2, v4, :cond_1b

    const/16 v4, 0xa2

    if-eq v2, v4, :cond_1a

    const/16 v4, 0xa6

    if-eq v2, v4, :cond_19

    const/16 v4, 0xa7

    if-eq v2, v4, :cond_19

    const/16 v4, 0xa9

    if-eq v2, v4, :cond_18

    const/16 v4, 0xab

    if-eq v2, v4, :cond_17

    const/16 v4, 0xae

    if-eq v2, v4, :cond_1b

    const/16 v4, 0xb7

    if-eq v2, v4, :cond_1b

    .line 70
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v12

    goto :goto_a

    .line 71
    :cond_17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->be()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 72
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v12

    goto :goto_a

    .line 73
    :cond_18
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v12

    goto :goto_a

    :cond_19
    const/4 v12, 0x0

    goto :goto_a

    .line 74
    :cond_1a
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v12

    if-nez v12, :cond_1c

    .line 75
    invoke-interface {v10}, Lcom/android/camera/data/backup/DataBackUp;->removeOtherVideoMode()V

    goto :goto_a

    .line 76
    :cond_1b
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v12

    .line 77
    :cond_1c
    :goto_a
    invoke-virtual {v1, v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    .line 78
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v2

    invoke-interface {v10, v3, v2, v12}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    goto :goto_9

    .line 79
    :pswitch_1
    invoke-direct {v0, v6, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetFlash(Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 80
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetHdr(Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 81
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyTransientAndVideoPersist(Lcom/android/camera/data/data/config/ComponentConfigBeauty;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 82
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetUltraWide(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 83
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v2

    .line 84
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v5

    .line 85
    invoke-direct {v0, v2, v5, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetLensType(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/data/config/ComponentManuallyDualLens;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 86
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentConfigCinematicAspectRatio;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetCinematicAspectRatio(Lcom/android/camera/data/data/config/ComponentConfigCinematicAspectRatio;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 87
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigGradienter()Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetGradienter(Lcom/android/camera/data/data/config/ComponentConfigGradienter;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 88
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Z)V

    .line 89
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetColorEnhance(Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;Z)V

    .line 90
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v2

    iget v5, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 91
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetVideoQualityPartially(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;)V

    .line 92
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->clearArrayMap()V

    .line 93
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    if-nez v2, :cond_1d

    .line 94
    invoke-direct {v0, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyBackLevel(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 95
    invoke-direct {v0, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyCaptureFigure(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 96
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(I)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    const/4 v5, 0x0

    goto :goto_b

    .line 97
    :cond_1d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(I)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 98
    :goto_b
    invoke-virtual {v2}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v4

    .line 99
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetFlash(Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 100
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetHdr(Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 101
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetFrontBokenh(Lcom/android/camera/data/data/config/ComponentConfigBokeh;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 102
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyTransientAndVideoPersist(Lcom/android/camera/data/data/config/ComponentConfigBeauty;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 103
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentConfigCinematicAspectRatio;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetCinematicAspectRatio(Lcom/android/camera/data/data/config/ComponentConfigCinematicAspectRatio;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 104
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetVideoQualityPartially(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;)V

    .line 105
    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyVideoFront(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 106
    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 107
    invoke-virtual {v3}, Lcom/android/camera/data/data/DataItemBase;->clearArrayMap()V

    .line 108
    invoke-interface {v10}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    .line 109
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->clearAll()V

    .line 110
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetMacroMode(Lcom/android/camera/data/data/config/ComponentRunningMacroMode;)V

    .line 111
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunning8KVideoQuality()Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reset8KVideoQuality(Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;)V

    .line 112
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetAutoZoom(Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;)V

    .line 113
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetSubtitle(Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;)V

    .line 114
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSuperEIS()Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetSuperEIS(Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;)V

    .line 115
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->ud()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 116
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->Ad()Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string v2, "pref_live_music_path_key"

    .line 117
    invoke-interface {v9, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_music_hint_key"

    .line 118
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_sticker_key"

    .line 119
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_sticker_name_key"

    .line 120
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_sticker_hint_key"

    .line 121
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_speed_key"

    .line 122
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_filter"

    .line 123
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_shrink_face_ratio"

    .line 124
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_enlarge_eye_ratio"

    .line 125
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_smooth_strength"

    .line 126
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_beauty_status"

    .line 127
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 128
    :cond_1f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->od()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "pref_mimoji_index"

    .line 129
    invoke-interface {v9, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_mimoji_pannel_state"

    .line 130
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 131
    :cond_20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->bf()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "pref_camera_pro_video_log_format"

    .line 132
    invoke-interface {v8, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_camera_pro_video_histogram"

    .line 133
    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_c

    :pswitch_2
    const/4 v5, 0x0

    .line 134
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    invoke-interface {v10, v3, v2, v4}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    .line 135
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 136
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 137
    invoke-virtual {v6, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-interface {v7, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 139
    :cond_21
    :goto_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->sd()Z

    move-result v12

    .line 140
    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_22

    .line 141
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    move/from16 v1, v16

    if-ne v1, v0, :cond_22

    goto :goto_d

    :cond_22
    move v5, v12

    :goto_d
    if-eqz v5, :cond_23

    const-string v0, "pref_lens_dirty_detect_enabled_key"

    const/4 v1, 0x1

    .line 142
    invoke-interface {v7, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 143
    :cond_23
    invoke-interface {v7}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 144
    invoke-interface {v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 145
    invoke-interface {v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private reset8KVideoQuality(Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;->clearArrayMap()V

    return-void
.end method

.method private resetAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    :cond_0
    return-void
.end method

.method private resetAutoZoom(Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->clearArrayMap()V

    return-void
.end method

.method private resetBeautyBackLevel(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 4

    .line 1
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_LEVEL:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForCapture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 4
    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForPortrait(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 5
    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForFun(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetBeautyCaptureFigure(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 3

    .line 1
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_BACK_FIGURE:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForCapture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetBeautyTransientAndVideoPersist(Lcom/android/camera/data/data/config/ComponentConfigBeauty;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->clearClosed()V

    const/16 p0, 0xa2

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method private resetBeautyVideoFront(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 3

    .line 1
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_LEVEL:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetCinematicAspectRatio(Lcom/android/camera/data/data/config/ComponentConfigCinematicAspectRatio;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigCinematicAspectRatio;->reset(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :cond_0
    return-void
.end method

.method private resetColorEnhance(Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->reset(Z)V

    :cond_0
    return-void
.end method

.method private resetFlash(Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-interface {p2, v0, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method private resetFrontBokenh(Lcom/android/camera/data/data/config/ComponentConfigBokeh;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "on"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const-string p2, "off"

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetGradienter(Lcom/android/camera/data/data/config/ComponentConfigGradienter;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->reset(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :cond_0
    return-void
.end method

.method private resetHdr(Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "off"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-interface {p2, v0, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method private resetLensType(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/data/config/ComponentManuallyDualLens;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->resetLensType(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :cond_0
    return-void
.end method

.method private resetMacroMode(Lcom/android/camera/data/data/config/ComponentRunningMacroMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->clearArrayMap()V

    return-void
.end method

.method private resetSubtitle(Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->clearArrayMap()V

    return-void
.end method

.method private resetSuperEIS(Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;->clearArrayMap()V

    return-void
.end method

.method private resetUltraWide(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->resetUltraWide(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :cond_0
    return-void
.end method

.method private resetVideoQualityPartially(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 2
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/Camera;",
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
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p0, 0xea

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0xe5

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "FunctionCameraPrepare"

    const-string p1, "activity is finishing, the content of BaseModuleHolder is set to null"

    .line 8
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xeb

    .line 9
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    const/16 p1, 0xe1

    invoke-static {p0, p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reconfigureData()V

    .line 14
    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/constant/GlobalConstant;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    return-object p0
.end method
