.class public Lcom/android/camera2/MiCamera2ShotStill;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotStill.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCamera2ShotStill"


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field private mHasDepth:Z

.field private mIsIntent:Z

.field private mNeedCaptureResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera2/MiCamera2ShotStill;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera2/MiCamera2ShotStill;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera2/MiCamera2ShotStill;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mNeedCaptureResult:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera2/MiCamera2ShotStill;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mIsIntent:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera2/MiCamera2ShotStill;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/MiCamera2ShotStill;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method private notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4
    .param p2    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    const-string p1, "notifyResultData: null parallel callback"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    invoke-virtual {v3, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setPreviewThumbnailHash(I)V

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/camera/core/ParallelCallback;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)Z

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    .line 9
    sget-object p2, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mJpegCallbackFinishTime = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotStill$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotStill$1;-><init>(Lcom/android/camera2/MiCamera2ShotStill;)V

    return-object v0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
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
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPhotoImageReader()Landroid/media/ImageReader;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    sget-object v2, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isInQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isConfigRawStream()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getRawSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 13
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mHasDepth:Z

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getDepthImageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 15
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPortraitRawImageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 16
    :cond_3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 17
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 20
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->pausePreview()V

    :cond_4
    return-object v0
.end method

.method protected getTimeStamp()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/android/camera2/MiCamera2ShotStill;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method protected bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotStill;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method protected onImageReceived(Landroid/media/Image;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    const-string v2, "onImageReceived: image arrived first"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 7
    invoke-virtual {v1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isDataFilled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object p0, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image has been filled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    .line 10
    :cond_2
    sget-object v1, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageReceived mCurrentParallelTaskData timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " image timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v1

    .line 12
    sget-object v2, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageReceived: dataLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v4, "null"

    goto :goto_0

    :cond_3
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " resultType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " timeStamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " holder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 16
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 17
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mNeedCaptureResult:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p1, :cond_4

    move p1, p2

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_7

    .line 20
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mIsIntent:Z

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotStill;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 22
    invoke-interface {v0, p2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(Z)V

    goto :goto_2

    .line 23
    :cond_6
    invoke-interface {v0, p2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(Z)V

    .line 24
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 25
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera2/MiCamera2ShotStill;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    :cond_7
    :goto_2
    return-void

    .line 27
    :cond_8
    :goto_3
    sget-object p2, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageReceived: something wrong happened when image received: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mCurrentParallelTaskData = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method protected prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/4 v2, -0x3

    if-eq v0, v2, :cond_4

    const/4 v2, -0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mHasDepth:Z

    goto :goto_0

    .line 5
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mNeedCaptureResult:Z

    goto :goto_0

    .line 6
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mIsIntent:Z

    goto :goto_0

    .line 7
    :cond_4
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mHasDepth:Z

    .line 8
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotStill;->mIsIntent:Z

    :goto_0
    return-void
.end method

.method protected startSessionCapture()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/MiCamera2Shot;->generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    const-string v1, "startSessionCapture: null task data"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isShot2Gallery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setShot2Gallery(Z)Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotStill;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shotstill  for camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 9
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    const-string v2, "Failed to capture a still picture, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 13
    sget-object v1, Lcom/android/camera2/MiCamera2ShotStill;->TAG:Ljava/lang/String;

    const-string v2, "Cannot capture a still picture"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method
