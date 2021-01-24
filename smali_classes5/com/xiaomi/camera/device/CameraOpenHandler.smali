.class public Lcom/xiaomi/camera/device/CameraOpenHandler;
.super Landroid/os/Handler;
.source "CameraOpenHandler.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;,
        Lcom/xiaomi/camera/device/CameraOpenHandler$ManagerState;
    }
.end annotation


# static fields
.field private static final MANAGER_MSG_CLOSE_CAMERA_AFTER_CAPTURE:I = 0x5

.field private static final MANAGER_MSG_CLOSE_FINISH:I = 0x3

.field private static final MANAGER_MSG_FORCE_CLOSE_CAMERA:I = 0x2

.field private static final MANAGER_MSG_OPEN_FINISH:I = 0x4

.field private static final MANAGER_MSG_REQUEST_CAMERA:I = 0x1

.field private static final MANAGER_STATE_IDLE:I = 0x1

.field private static final MANAGER_STATE_WAITING_CLOSE:I = 0x2

.field private static final MANAGER_STATE_WAITING_OPEN:I = 0x3

.field private static final POP_CAMERA_DELAY_CREATE_SESSION:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCamera2Device:Lcom/android/camera2/Camera2Proxy;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraPreviewHandler:Landroid/os/Handler;

.field private mCurrentState:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    const-string v0, "delay_create_session"

    const-wide/16 v1, 0x1c2

    .line 2
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->POP_CAMERA_DELAY_CREATE_SESSION:J

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/hardware/camera2/CameraManager;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCurrentState:I

    .line 6
    new-instance p1, Lcom/xiaomi/camera/device/CameraOpenHandler$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/device/CameraOpenHandler$1;-><init>(Lcom/xiaomi/camera/device/CameraOpenHandler;)V

    iput-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CameraPreviewHandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCameraPreviewHandler:Landroid/os/Handler;

    .line 10
    iput-object p2, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method private synthetic a(ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release onCaptureCompleted: success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " immediate:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/device/CameraOpenHandler;)Lcom/android/camera2/Camera2Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaomi/camera/device/CameraOpenHandler;Lcom/android/camera2/Camera2Proxy;)Lcom/android/camera2/Camera2Proxy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/device/CameraOpenHandler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCameraPreviewHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/device/CameraOpenHandler;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->POP_CAMERA_DELAY_CREATE_SESSION:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/device/CameraOpenHandler;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/device/CameraOpenHandler;->onCameraOpenFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/device/CameraOpenHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private getManagerState()I
    .locals 0
    .annotation build Lcom/xiaomi/camera/device/CameraOpenHandler$ManagerState;
    .end annotation

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCurrentState:I

    return p0
.end method

.method private declared-synchronized notifyStatus(Ljava/lang/String;ZLcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStatus: cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;

    .line 3
    sget-object v2, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStatus: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {v1, p1, p3}, Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;->onSuccess(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1, p1, p3}, Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;->onFailure(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onCameraOpenFailed(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpenFailed: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p2}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    const/4 p2, 0x3

    .line 4
    invoke-static {p2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->setCameraError(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, v0, p2, p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->notifyStatus(Ljava/lang/String;ZLcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method private onCameraOpenSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpenSuccess: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/camera/device/CameraOpenHandler;->notifyStatus(Ljava/lang/String;ZLcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method private removeAllAppMessages()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private setManagerState(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaomi/camera/device/CameraOpenHandler$ManagerState;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public synthetic b(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/device/CameraOpenHandler;->a(ZZ)V

    return-void
.end method

.method public declared-synchronized clearListeners()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCurrentCamera2Device()Lcom/android/camera2/Camera2Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    return-object p0
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    const-string v0, "open finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, v5}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    .line 4
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    const-string v0, "close finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->o0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->takebackMotor()Z

    .line 10
    :cond_2
    invoke-direct {p0, v5}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    .line 11
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_4

    .line 13
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->getManagerState()I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 15
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not idle, break on msg.what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentState "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCurrentState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 16
    :cond_5
    invoke-direct {p0, v4}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    .line 17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 18
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force close start reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->releasePreview(I)V

    .line 20
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resetConfigs()V

    .line 21
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->close()V

    .line 22
    iput-object v3, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto/16 :goto_0

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p1, v3}, Lcom/android/camera2/Camera2Proxy;->setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "close start"

    if-gez p1, :cond_8

    .line 26
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_e

    .line 27
    invoke-direct {p0, v4}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    .line 28
    sget-object p1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->close()V

    .line 30
    iput-object v3, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto/16 :goto_0

    .line 31
    :cond_8
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    iget-object v6, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ne p1, v6, :cond_b

    .line 32
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was opened successfully"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_9

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but corresponding CameraCapabilities is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe7

    .line 37
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->onCameraOpenFailed(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_9
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->j0()Z

    move-result p1

    if-nez p1, :cond_a

    .line 40
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->cancelSession()V

    .line 41
    :cond_a
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->onCameraOpenSuccess()V

    goto :goto_0

    .line 42
    :cond_b
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_c

    .line 43
    invoke-direct {p0, v4}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    .line 44
    sget-object p1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->close()V

    .line 46
    iput-object v3, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto :goto_0

    .line 47
    :cond_c
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->getManagerState()I

    move-result p1

    if-eq p1, v5, :cond_d

    goto :goto_0

    .line 48
    :cond_d
    :try_start_0
    invoke-direct {p0, v2}, Lcom/xiaomi/camera/device/CameraOpenHandler;->setManagerState(I)V

    .line 49
    sget-object p1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    const-string v0, "open start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xe6

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->onCameraOpenFailed(ILjava/lang/String;)V

    .line 53
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCamera: failed to open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_0
    return-void
.end method

.method openCamera(ILcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCamera: pendingOpenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", forceClose = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->popupMotor()Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 9
    sget-object v1, Lcom/xiaomi/camera/device/CameraOpenHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera: popupMotor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/xiaomi/camera/device/CameraOpenHandler;->addListener(Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;)V

    .line 12
    iget-object p2, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_3

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->removeAllAppMessages()V

    .line 14
    iget-object p2, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_3
    if-eqz p4, :cond_4

    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method release(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Lcom/xiaomi/camera/device/a;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/camera/device/a;-><init>(Lcom/xiaomi/camera/device/CameraOpenHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/device/CameraOpenHandler;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
