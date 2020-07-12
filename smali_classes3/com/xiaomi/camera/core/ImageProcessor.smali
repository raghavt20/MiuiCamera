.class public abstract Lcom/xiaomi/camera/core/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;,
        Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMAGE_BUFFER_QUEUE_SIZE:I = 0x4

.field private static final MSG_IMAGE_DOFILTER:I = 0x2

.field private static final MSG_IMAGE_RECEIVED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageProcessor"


# instance fields
.field protected mBlockVariable:Landroid/os/ConditionVariable;

.field mDepthImageReaderHolder:Landroid/media/ImageReader;

.field mEffectImageReaderHolder:Landroid/media/ImageReader;

.field mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

.field private mImageBufferQueueSize:I

.field mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field private mImageReaderHandler:Landroid/os/Handler;

.field private mImageReaderThread:Landroid/os/HandlerThread;

.field mIsBokehMode:Z

.field private mIsNeedStopWork:Z

.field private mMaxParallelRequestNumber:I

.field mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field mRawImageReaderHolder:Landroid/media/ImageReader;

.field private mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTaskDataLock:Ljava/lang/Object;

.field mTaskSession:Lcom/xiaomi/engine/TaskSession;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;ZLcom/xiaomi/engine/BufferFormat;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    .line 8
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    .line 9
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 11
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 12
    iput-boolean p2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    .line 13
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    const-string v0, "D"

    goto :goto_0

    :cond_0
    const-string v0, "S"

    :goto_0
    aput-object v0, p2, v1

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p3}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-virtual {p3}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "_%s_%dx%d_%d"

    .line 15
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    .line 17
    new-instance p2, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    .line 18
    new-instance p1, Lcom/xiaomi/camera/core/FilterProcessor;

    iget-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    invoke-direct {p1, p2}, Lcom/xiaomi/camera/core/FilterProcessor;-><init>(Landroid/os/ConditionVariable;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 19
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p3}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result p2

    invoke-virtual {p3}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/FilterProcessor;->init(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/core/ImageProcessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/core/ImageProcessor;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isAlive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendProcessImageMessage()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "sendProcessImageMessage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez p0, :cond_1

    const-string p0, "Thread"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v1, v2

    const-string p0, "%s already die!"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method protected dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 2
    .param p1    # Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Thread already die!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchTask(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTask: taskSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected doFilter(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 9
    .param p1    # Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->image:Landroid/media/Image;

    .line 2
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 3
    iget v3, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->target:I

    .line 4
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 5
    invoke-interface {v4, v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_0

    if-ne v5, v3, :cond_4

    .line 6
    :cond_0
    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v6

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    .line 8
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 9
    :cond_1
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v6

    .line 10
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCameraId()I

    .line 11
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 13
    :cond_3
    :goto_0
    sget-object v6, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doFilter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-virtual {v1, v4, v0, v3}, Lcom/xiaomi/camera/core/FilterProcessor;->doFilterSync(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;I)Landroid/media/Image;

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 15
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doFilter: no task data found for image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    invoke-interface {v1, v0, v3, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    goto :goto_2

    .line 17
    :cond_6
    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    if-eqz p1, :cond_7

    .line 18
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFilter: release pool image "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 20
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_7
    :goto_2
    if-eqz v3, :cond_a

    if-eq v3, v5, :cond_9

    const/4 p1, 0x2

    if-eq v3, p1, :cond_8

    goto :goto_3

    .line 21
    :cond_8
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 22
    :goto_3
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 23
    :cond_9
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_4

    .line 24
    :cond_a
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 25
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V

    return-void
.end method

.method protected getImageBufferQueueSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return p0
.end method

.method protected getImageReaderHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getTaskSession()Lcom/xiaomi/engine/TaskSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    return-object p0
.end method

.method public isAlgorithmEngineBusy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method abstract isIdle()Z
.end method

.method protected onProcessImageDone()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    sget-object v2, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProcessImageDone: taskSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected onProcessImageStart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void
.end method

.method abstract processImage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object p0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v2, "queueImageToPool: wait E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p0, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 5
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "queueImageToPool: wait X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 7
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    return-object p0
.end method

.method public releaseResource()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 7
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    :cond_2
    return-void
.end method

.method public setImageBufferQueueSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return-void
.end method

.method public setMaxParallelRequestNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    :cond_0
    return-void
.end method

.method public setTaskSession(Lcom/xiaomi/engine/TaskSession;)V
    .locals 0
    .param p1    # Lcom/xiaomi/engine/TaskSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    return-void
.end method

.method public startWork()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/core/ImageProcessor$1;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor$1;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    .line 5
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "startWork: %s started"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized stopWork()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "stopWork: %s stopped"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    if-eqz v0, :cond_2

    .line 11
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v0}, Lcom/xiaomi/engine/TaskSession;->close()V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseResource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopWorkWhenIdle()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopWorkWhenIdle"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsNeedStopWork:Z

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryToStopWork()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsNeedStopWork:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
