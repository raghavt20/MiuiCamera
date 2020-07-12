.class public Lcom/android/camera2/MiCamera2ShotParallelBurst;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2ShotParallelBurst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotParallelBurst"


# instance fields
.field private mAlgoType:I

.field private mCompletedNum:I

.field private mFirstNum:Z

.field private mHdrCheckerAdrc:I

.field private mHdrCheckerEvValue:[I

.field private mHdrCheckerSceneType:I

.field private mIsHdrBokeh:Z

.field private final mOperationMode:I

.field private mSequenceNum:I

.field private mShouldDoMFNR:Z

.field private mShouldDoQcfaCapture:Z

.field private mShouldDoSR:Z

.field private mSingleCaptureForHDRplusMFNR:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 3
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mFirstNum:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera2/MiCamera2ShotParallelBurst;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mFirstNum:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return p0
.end method

.method static synthetic access$308(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return v0
.end method

.method private applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    const/4 p2, 0x3

    if-eq p3, p2, :cond_2

    const/4 p2, 0x7

    if-eq p3, p2, :cond_0

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 2
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const-string p2, "ShotParallelBurst"

    const-string p3, "HHT algo in applyAlgoParameter"

    .line 5
    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 11
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 13
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 14
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method private applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {}, Lcom/mi/config/b;->hl()Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/mi/config/b;->bv:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    return-void
.end method

.method private applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_e

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->ze()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 6
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->ze()Z

    move-result v0

    const/4 v3, 0x2

    const-string v4, "ShotParallelBurst"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[ALGOUP|MMCAMERA] Algo Up HDR!!!!"

    .line 8
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    mul-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_3
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 12
    :goto_2
    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/b;->fv:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/b;->hv:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/b;->lv:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/b;->jv:Z

    if-eqz v0, :cond_5

    .line 13
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v5, v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 15
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v0, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 16
    sget-boolean v0, Lcom/mi/config/b;->fv:Z

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    if-ltz v0, :cond_7

    :goto_3
    move v0, v2

    goto :goto_5

    .line 18
    :cond_6
    sget-boolean v0, Lcom/mi/config/b;->jv:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/mi/config/b;->hv:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/mi/config/b;->lv:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    .line 19
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    if-nez v0, :cond_7

    goto :goto_3

    .line 20
    :goto_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/a;->oe()Z

    move-result v5

    const-string v6, "applyHdrParameter enable mfnr EV = "

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 21
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v5

    if-eq v5, v3, :cond_9

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 22
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v3

    if-eq v3, v2, :cond_9

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 23
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_a

    sget-boolean v3, Lcom/mi/config/b;->lv:Z

    if-eqz v3, :cond_a

    :cond_9
    if-eqz v0, :cond_a

    .line 24
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    const/4 v5, 0x4

    if-ge v3, v5, :cond_a

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_6

    .line 27
    :cond_a
    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    if-eqz v3, :cond_b

    const-string p2, "applyHdrParameter enable mfnr"

    .line 28
    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_c

    .line 30
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v0, :cond_c

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_6

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHdrParameter disable mfnr EV = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v3, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 35
    :goto_6
    iget-boolean p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz p2, :cond_d

    .line 36
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 37
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportHdrBokeh()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 38
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_d
    return-void

    .line 39
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {v0, p0}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private getGroupShotMaxImage()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/Face;

    if-eqz p0, :cond_0

    .line 2
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x4

    .line 3
    invoke-static {p0, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private getGroupShotNum()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getGroupShotMaxImage()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "ShotParallelBurst"

    const-string v0, "getGroupShotNum: low memory"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method

.method private isUpdateHDRCheckerValues()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;->isLockHDRChecker()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private prepareClearShot(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mi/config/b;->hl()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    :goto_0
    return-void
.end method

.method private prepareGroupShot()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getGroupShotNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return-void
.end method

.method private prepareHHT()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    const-string p0, "switch to quick shot hht(3 -> 1)"

    .line 6
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    const-string p0, "hht(5 -> 1)"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private prepareHdr()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v1, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([B)V

    .line 6
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    .line 7
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isUpdateHDRCheckerValues()Z

    move-result v0

    const-string v1, "prepareHdr: scene = "

    const-string v2, "ShotParallelBurst"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "hdr checker values not update\uff1a"

    .line 9
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerSceneType()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerAdrc()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adrc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",EvValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " adrc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerEvValue([I)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerSceneType(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerAdrc(I)V

    return-void
.end method

.method private prepareLowLightBokeh()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return-void
.end method

.method private prepareSR()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Ib()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return-void
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    return-object v0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "ShotParallelBurst"

    if-eqz v2, :cond_3

    .line 4
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoQcfaCapture:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    .line 5
    :goto_0
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    .line 6
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    aput-object v7, v1, v4

    const-string v9, "[QCFA]add surface %s to capture request, size is: %s"

    invoke-static {v8, v9, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 8
    invoke-static {}, Lcom/mi/config/b;->hl()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/mi/config/b;->bv:Z

    if-eqz v1, :cond_2

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;)V

    goto/16 :goto_4

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getRemoteSurfaceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .line 13
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v5

    .line 14
    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "add surface %s to capture request, size is: %s"

    .line 15
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 17
    :cond_5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCapturedImageSize:Lcom/android/camera/CameraSize;

    goto :goto_3

    .line 18
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->getMainCaptureSurface()Landroid/view/Surface;

    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    .line 20
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v2, v9, v5

    aput-object v7, v9, v4

    const-string v10, "[SAT]add surface %s to capture request, size is: %s"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v8, 0x201

    .line 22
    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v9

    if-ne v2, v9, :cond_7

    move v8, v3

    .line 23
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SAT]combinationMode: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0, v7, v8}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)V

    .line 25
    :goto_3
    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const v7, 0x9001

    if-eq v2, v7, :cond_9

    .line 26
    invoke-static {}, Lcom/mi/config/b;->hl()Z

    move-result v2

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/mi/config/b;->bv:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const v7, 0x9003

    if-eq v2, v7, :cond_9

    .line 27
    :cond_8
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    .line 28
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    .line 29
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    aput-object v8, v1, v4

    const-string v8, "add preview surface %s to capture request, size is: %s"

    .line 30
    invoke-static {v7, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 32
    :cond_9
    :goto_4
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 34
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v1, v4, :cond_b

    .line 35
    sget-boolean v1, Lcom/mi/config/b;->jv:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-nez v1, :cond_c

    :cond_a
    const-string v1, "disable ZSL for HDR"

    .line 36
    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v0, v5}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_5

    .line 38
    :cond_b
    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_c

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable ZSL for algo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {v0, v5}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 41
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result v1

    .line 42
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-object v0
.end method

.method protected prepare()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mFirstNum:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoQcfaCapture:Z

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, "ShotParallelBurst"

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isRearBokehEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    .line 6
    sget-boolean v2, Lcom/mi/config/b;->jv:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 7
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 8
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isMacroMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    .line 9
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 10
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHdr()V

    goto/16 :goto_4

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->Oe()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 12
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isRearBokehEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    .line 13
    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 14
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareLowLightBokeh()V

    goto/16 :goto_4

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    .line 16
    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 17
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareGroupShot()V

    goto/16 :goto_4

    .line 18
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    if-eqz v2, :cond_4

    .line 19
    iput v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 20
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR()V

    goto/16 :goto_4

    .line 21
    :cond_4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepare: iso = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/mi/config/b;->fl()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/mi/config/b;->Zk()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x320

    if-lt v6, v7, :cond_6

    move v6, v0

    goto :goto_1

    :cond_6
    move v6, v1

    :goto_1
    iput-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    goto :goto_3

    .line 25
    :cond_7
    :goto_2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    .line 26
    :goto_3
    iget-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    if-eqz v6, :cond_a

    .line 27
    invoke-static {}, Lcom/mi/config/b;->fl()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 28
    iput v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_4

    .line 30
    :cond_8
    invoke-static {}, Lcom/mi/config/b;->Zk()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v2, 0x7

    .line 31
    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 32
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHHT()V

    goto :goto_4

    .line 33
    :cond_9
    iput v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_4

    .line 35
    :cond_a
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 36
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    .line 37
    :goto_4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v5

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v6, v3

    const-string p0, "prepare: algo=%d captureNum=%d doMFNR=%b doSR=%b"

    .line 39
    invoke-static {v2, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected startSessionCapture()V
    .locals 10

    const-string v0, "ShotParallelBurst"

    const/16 v1, 0x100

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 4
    :goto_0
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    .line 5
    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v9

    if-ne v7, v9, :cond_0

    .line 7
    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v7, v3}, Lcom/android/camera2/compat/MiCameraCompat;->copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/config/a;->ze()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-static {v3, v8}, Lcom/android/camera2/compat/MiCameraCompat;->applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    :cond_1
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v3, v6, v7}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 11
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/config/a;->ze()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 13
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 15
    invoke-static {v7, v8}, Lcom/android/camera2/compat/MiCameraCompat;->applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    iget v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v7, v6, v8}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 17
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_3
    sget-boolean v3, Lcom/mi/config/b;->hv:Z

    if-nez v3, :cond_4

    invoke-static {}, Lcom/mi/config/b;->ql()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    :cond_4
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v3, v8, :cond_6

    .line 20
    :goto_1
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v5, v3, :cond_6

    .line 21
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v3, v3, v5

    if-nez v3, :cond_5

    .line 22
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v3, :cond_6

    .line 23
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 24
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSessionCapture request number:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 26
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v2, v3}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "Failed to capture a still picture, IllegalArgument"

    .line 27
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalState"

    .line 29
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_3

    :catch_2
    move-exception v1

    .line 31
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const-string v2, "Cannot captureBurst"

    .line 32
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_3
    return-void
.end method
