.class public Lcom/xiaomi/camera/core/PostProcessor;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;,
        Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;,
        Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
    }
.end annotation


# static fields
.field private static final MSG_RESULT_FLAW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PostProcessor"


# instance fields
.field private mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

.field private mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

.field private mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

.field private mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

.field private mImageProcessorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field private mImageReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field private mMaxParallelRequestNumber:I

.field private mMtkBoost:Lcom/xiaomi/camera/core/MtkBoost;

.field private mObsoleteImageReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/camera/core/ParallelTaskData;",
            ">;"
        }
    .end annotation
.end field

.field private mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;"
        }
    .end annotation
.end field

.field private mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

.field private mSRRequireReprocess:Z

.field private mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

.field private mSessionStatusCbListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/protocol/ISessionStatusCallBackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldDestroyWhenTasksFinished:Z

.field private mSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:I

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CallbackHandleThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    .line 10
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I

    .line 12
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$1;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    .line 13
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$2;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    .line 14
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$3;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$3;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    .line 15
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$4;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$4;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 16
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$5;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$5;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    .line 17
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    .line 20
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCbListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->isNeedCallBackFinished(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToStopBoost()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->startMtkBoost()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->chooseCaptureResult(Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method private chooseCaptureResult(Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->S2()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    sub-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 4
    sget-object p2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ALGOUP|MMCAMERA]: Add last metadata, index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-ne p2, v0, :cond_2

    move p2, p0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "chooseCaptureResult: get the %d frame metadata"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method private configParallelCaptureSession()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget-boolean v2, v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->createCaptureSession(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private getMinHoldImageNum(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    if-eqz p0, :cond_2

    .line 3
    iget v1, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    if-ge v1, p0, :cond_1

    .line 4
    :cond_2
    iget p0, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    goto :goto_0

    :cond_3
    return p0

    .line 5
    :cond_4
    :goto_1
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "getMinHoldImageNum: empty param"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isAnyFrontProcessing(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 2
    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedCallBackFinished(Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/4 v1, -0x7

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result p1

    const/4 v0, -0x6

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private startMtkBoost()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mi/config/b;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMtkBoost:Lcom/xiaomi/camera/core/MtkBoost;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/xiaomi/camera/core/MtkBoost;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/MtkBoost;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMtkBoost:Lcom/xiaomi/camera/core/MtkBoost;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMtkBoost:Lcom/xiaomi/camera/core/MtkBoost;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/MtkBoost;->startBoost()Z

    :cond_1
    return-void
.end method

.method private stopMtkBoost()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mi/config/b;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMtkBoost:Lcom/xiaomi/camera/core/MtkBoost;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/MtkBoost;->stopBoost()V

    :cond_0
    return-void
.end method

.method private declared-synchronized tryToCloseSession()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyFrontProcessing(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    .line 3
    iget-boolean v1, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->closeCaptureSession(Ljava/util/List;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToCloseSession: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->finish()V

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->deInit()V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    invoke-interface {v0, p0}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->stopMtkBoost()V

    .line 12
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToCloseSession: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToCloseSession: ignore"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryToStopBoost()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToStopBoost"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopBoost"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->stopMtkBoost()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCaptureSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/engine/GraphDescriptorBean;->getOperationModeID()I

    move-result v0

    const v1, 0x8002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWorkWhenIdle()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/engine/GraphDescriptorBean;->getStreamNumber()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    new-instance v1, Lcom/xiaomi/camera/core/DualCameraProcessor;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {v1, v2, v0, p1}, Lcom/xiaomi/camera/core/DualCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;ZLcom/xiaomi/engine/BufferFormat;)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Lcom/xiaomi/camera/core/SingleCameraProcessor;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {v1, v2, v0, p1}, Lcom/xiaomi/camera/core/SingleCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;ZLcom/xiaomi/engine/BufferFormat;)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iget v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->setMaxParallelRequestNumber(I)V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iget v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->setImageBufferQueueSize(I)V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->startWork()V

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/engine/MiCameraAlgo;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->setTaskSession(Lcom/xiaomi/engine/TaskSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public configHALOutputSurface(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configHALOutputSurface: paramsNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "save obsolete image readers"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->getMinHoldImageNum(Ljava/util/List;)I

    move-result v0

    .line 9
    new-instance v1, Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {v1, v0}, Lcom/xiaomi/camera/core/ImageMemoryManager;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    .line 10
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configHALOutputSurface: holdNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    .line 12
    iget v1, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v3, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v4, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;

    iget v0, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->targetCamera:I

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {v2, v0, v3}, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;-><init>(ILcom/xiaomi/camera/core/ImageMemoryManager;)V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->configParallelCaptureSession()V

    .line 17
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method public deInit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 4
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 8
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method public declared-synchronized destroyWhenTasksFinished(I)V
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getToken()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroyWhenTasksFinished(Z)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyFrontProcessing(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->configParallelCaptureSession()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    .line 3
    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/ImageProcessor;

    .line 6
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 11
    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    .line 12
    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "finish: failed!"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    return-object p0
.end method

.method public getFrontProcessingCount()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 2
    iget-boolean v1, v1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getParams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    return-object p0
.end method

.method public getSurfaceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getToken()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isAnyRequestBlocked()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    :cond_1
    iget-boolean v0, v0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isAnyRequestIsHWMFNRProcessing()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHWMFNRProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIdle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isSRRequireReprocess()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSRRequireReprocess:Z

    return p0
.end method

.method public declared-synchronized isStopping()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needWaitAlgorithmEngine()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "needWaitAlgorithmEngine: return true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "needWaitAlgorithmEngine: return false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public needWaitImageClose()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageMemoryManager;->needWaitImageClose()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "needWaitImageClose: return true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "needWaitImageClose: return false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public setMaxParallelRequestNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    :cond_0
    return-void
.end method

.method public setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCbListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    return-void
.end method

.method public setSRRequireReprocess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSRRequireReprocess:Z

    return-void
.end method

.method public declared-synchronized setToken(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
