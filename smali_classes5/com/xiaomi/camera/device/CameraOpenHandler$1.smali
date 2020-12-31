.class Lcom/xiaomi/camera/device/CameraOpenHandler$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraOpenHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraOpenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/device/CameraOpenHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraOpenCallback: closed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$600(Lcom/xiaomi/camera/device/CameraOpenHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->takebackMotor()Z

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraOpenCallback: onDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$000(Lcom/xiaomi/camera/device/CameraOpenHandler;)Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$000(Lcom/xiaomi/camera/device/CameraOpenHandler;)Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->onCameraDisconnected()V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$600(Lcom/xiaomi/camera/device/CameraOpenHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 8
    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    .line 9
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 10
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraOpenCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {p2}, Lcom/android/camera/constant/ExceptionConstant;->transFromCamera2Error(I)I

    move-result p2

    invoke-static {p0, p2, p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$500(Lcom/xiaomi/camera/device/CameraOpenHandler;ILjava/lang/String;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraOpenCallback: camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was opened successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_2

    .line 4
    iget-object v8, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    new-instance v9, Lcom/android/camera2/MiCamera2;

    iget-object v5, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {v5}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$100(Lcom/xiaomi/camera/device/CameraOpenHandler;)Landroid/os/Handler;

    move-result-object v6

    move-object v1, v9

    move-object v2, p1

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/MiCamera2;-><init>(Landroid/hardware/camera2/CameraDevice;ILcom/android/camera2/CameraCapabilities;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {v8, v9}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$002(Lcom/xiaomi/camera/device/CameraOpenHandler;Lcom/android/camera2/Camera2Proxy;)Lcom/android/camera2/Camera2Proxy;

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->setCurrentOpenedCameraId(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->o0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$200(Lcom/xiaomi/camera/device/CameraOpenHandler;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", should delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$400()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$400()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v2, "onOpened: sleep start..."

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$400()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onOpened: sleep end..."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$200(Lcom/xiaomi/camera/device/CameraOpenHandler;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but corresponding CameraCapabilities is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler$1;->this$0:Lcom/xiaomi/camera/device/CameraOpenHandler;

    const/16 v0, 0xe7

    invoke-static {p0, v0, p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->access$500(Lcom/xiaomi/camera/device/CameraOpenHandler;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
