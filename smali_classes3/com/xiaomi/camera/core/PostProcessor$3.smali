.class Lcom/xiaomi/camera/core/PostProcessor$3;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/CaptureDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 14
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v5, v2, :cond_1

    const/4 v5, 0x3

    if-ne v5, v2, :cond_0

    .line 3
    iget-object v5, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-ne v3, v2, :cond_5

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 6
    iget-object v6, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v6}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 7
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v7

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[1] onCaptureDataAvailable: timestamp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v9, v7, v0

    if-eqz v9, :cond_2

    .line 9
    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 10
    iget-object v9, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v9, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-ne v3, v2, :cond_4

    .line 12
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isSaveGroupshotPrimitive()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 14
    invoke-virtual {v6, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->cloneTaskData(I)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v9

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 16
    invoke-virtual {v10}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-nez v12, :cond_3

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 17
    :cond_3
    invoke-virtual {v9, v10, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 18
    iget-object v12, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v12}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[1] onCaptureDataAvailable: add "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v3, 0x4

    if-ne v3, v2, :cond_9

    .line 21
    sget-boolean v2, Ld/d/a;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_6

    .line 22
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCaptureDataAvailable: start process multi-shot image..."

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 24
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v3

    .line 25
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v2

    .line 26
    iget-object v5, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v5}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v5, :cond_8

    .line 27
    invoke-virtual {v5, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 28
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->shouldReprocessBurstShotPicture()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p0

    .line 30
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Ljava/util/List;)V

    goto/16 :goto_2

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p1

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(J)V

    .line 32
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p1

    invoke-interface {p1, v2, v4, v4}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    .line 33
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 34
    invoke-virtual {p0, v2}, Lcom/xiaomi/camera/core/PostProcessor$3;->onOriginalImageClosed(Landroid/media/Image;)V

    goto/16 :goto_2

    .line 35
    :cond_8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[1] onCaptureDataAvailable: no captureResult "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 37
    invoke-virtual {p0, v2}, Lcom/xiaomi/camera/core/PostProcessor$3;->onOriginalImageClosed(Landroid/media/Image;)V

    goto/16 :goto_2

    .line 38
    :cond_9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_3

    .line 40
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 41
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isFirstResult()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 42
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v3

    .line 43
    iget-object v5, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v5}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v5, :cond_d

    .line 44
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->ze()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 45
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result v2

    .line 46
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 47
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 48
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ALGOUP|MMCAMERA]: Add last metadata, index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    :cond_c
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    goto :goto_1

    .line 50
    :cond_d
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[1] onCaptureDataAvailable: no task data with timestamp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 53
    invoke-virtual {p0, v3}, Lcom/xiaomi/camera/core/PostProcessor$3;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 54
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 55
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 56
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 57
    invoke-virtual {p0, v2}, Lcom/xiaomi/camera/core/PostProcessor$3;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 58
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    goto/16 :goto_1

    .line 59
    :cond_e
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p1

    .line 60
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p0

    if-eq p1, p0, :cond_f

    .line 61
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[1] onCaptureDataAvailable: image processor switched"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_f
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Ljava/util/List;)V

    :goto_2
    return-void

    .line 63
    :cond_10
    :goto_3
    sget-boolean p0, Ld/d/a;->IS_DEBUGGABLE:Z

    if-nez p0, :cond_11

    .line 64
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[1] onCaptureDataAvailable: There are no result to process!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There are no result to process!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No multi-frame process result!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOriginalImageClosed(Landroid/media/Image;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOriginalImageClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageMemoryManager;->releaseAnImage(Landroid/media/Image;)V

    :cond_0
    return-void
.end method
