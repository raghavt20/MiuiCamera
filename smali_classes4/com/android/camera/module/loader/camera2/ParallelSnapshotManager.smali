.class public Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
.super Ljava/lang/Object;
.source "ParallelSnapshotManager.java"


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
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$ManagerState;
    }
.end annotation


# static fields
.field private static final MANAGER_MSG_CLOSE_CAMERA:I = 0x2

.field private static final MANAGER_MSG_CLOSE_FINISH:I = 0x3

.field private static final MANAGER_MSG_CLOSE_SESSION:I = 0x6

.field private static final MANAGER_MSG_CREATE_SESSION:I = 0x5

.field private static final MANAGER_MSG_OPEN_FINISH:I = 0x4

.field private static final MANAGER_MSG_REQUEST_CAMERA:I = 0x1

.field private static final MANAGER_MSG_SET_CLOSE_STATE:I = 0x7

.field private static final MANAGER_STATE_IDLE:I = 0x1

.field private static final MANAGER_STATE_PENDING_CREATE_SESSION:I = 0x5

.field private static final MANAGER_STATE_WAITING_CLOSE:I = 0x2

.field private static final MANAGER_STATE_WAITING_CREATE_SESSION:I = 0x4

.field private static final MANAGER_STATE_WAITING_OPEN:I = 0x3

.field public static final REASON_DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ParallelSnapshotManager"

.field private static sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;


# instance fields
.field private CAMERA_ID_VIRTUAL_PARALLEL:I

.field private mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mCaptureLock:Ljava/lang/Object;

.field private mCurrentPreviewCameraID:I

.field private mCurrentState:I

.field private mCurrentSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCameraOpened:Z

.field private mIsNeedCloseCamera:Z

.field private mIsNeedReOpenCamera:Z

.field private final mMaxQueueSize:I

.field private mPendingSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentState:I

    .line 4
    new-instance v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$2;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VT Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    .line 8
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 9
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMaxQueueSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMaxQueueSize:I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->onCameraOpenFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->removeAllAppMessages()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsCameraOpened:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
    .locals 2

    const-class v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-direct {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;-><init>()V

    sput-object v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getManagerState()I
    .locals 0
    .annotation build Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$ManagerState;
    .end annotation

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentState:I

    return p0
.end method

.method private onCameraOpenFailed(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpenFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    return-void
.end method

.method private onCameraOpenSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    .line 2
    sget-object p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v0, "onCameraOpenSuccess: E"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsNeedCloseCamera:Z

    .line 3
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set close camera device state mIsNeedCloseCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsNeedCloseCamera:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result p1

    if-eq p1, v4, :cond_0

    .line 5
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANAGER_MSG_CLOSE_SESSION manager state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 9
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 10
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    .line 11
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v1, "CaptureSession close"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v1, " have surface pending list, need to recreate session"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->createCaptureSession(Ljava/util/List;)V

    .line 15
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    .line 16
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsNeedCloseCamera:Z

    if-eqz p1, :cond_3

    .line 17
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v1, "begin to close camera"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->closeCamera()V

    .line 19
    :cond_3
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 20
    :pswitch_2
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v6, "create CaptureSession >>>>>>"

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 22
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MANAGER_MSG_CREATE_SESSION manager state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    .line 25
    invoke-direct {p0, v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    .line 26
    sget-object p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string p1, "waiting camera open finish to recreate session"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    sget-object p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string p1, "the same surface, skip"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    monitor-exit v0

    goto/16 :goto_1

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_6

    .line 33
    sget-object v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v2, "cameraCaptureSession is not null"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    .line 35
    monitor-exit v0

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x4

    .line 36
    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 38
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;

    invoke-direct {v3, p0, v5}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;)V

    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 39
    :try_start_3
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 40
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    .line 41
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    sget-object p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string p1, "createSession<<"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    .line 43
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 44
    :pswitch_3
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v1, "open finish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/CameraDevice;

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 46
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 47
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v0, "try to recreate session"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    .line 49
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->createCaptureSession(Ljava/util/List;)V

    .line 50
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    .line 51
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    goto/16 :goto_1

    :pswitch_4
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsCameraOpened:Z

    .line 53
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 54
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 55
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    .line 56
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    .line 57
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsNeedReOpenCamera:Z

    if-eqz v0, :cond_8

    .line 58
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsNeedReOpenCamera:Z

    .line 60
    :cond_8
    sget-object p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string p1, "close finish"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 61
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 62
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not idle, break on msg.what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentState "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 63
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    .line 64
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 65
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force close start reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 67
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 68
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 69
    iput-object v5, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    goto :goto_1

    .line 70
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result p1

    if-eq p1, v4, :cond_a

    .line 71
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getManagerState()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 72
    iput-boolean v4, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsNeedReOpenCamera:Z

    goto :goto_1

    .line 73
    :cond_a
    :try_start_5
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string v0, "open start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setManagerState(I)V

    .line 75
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->CAMERA_ID_VIRTUAL_PARALLEL:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xe6

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->onCameraOpenFailed(ILjava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCamera: failed to open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->CAMERA_ID_VIRTUAL_PARALLEL:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeAllAppMessages()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private setManagerState(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$ManagerState;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsCameraOpened:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsCameraOpened:Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public closeCaptureSession(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createCaptureSession(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCaptureSurface(I)Landroid/view/Surface;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0
.end method

.method public getMaxQueueSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMaxQueueSize:I

    return p0
.end method

.method public isParallelCameraDeviceConfiged(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportPallelCameraDevice()Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentPreviewCameraID:I

    invoke-virtual {p1, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportPallelCameraDevice()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isParallelSessionReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public openCamera(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentPreviewCameraID:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelCameraDeviceConfiged(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2RoleContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2RoleContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2RoleContainer;->getParallelVirtualCameraId()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->CAMERA_ID_VIRTUAL_PARALLEL:I

    .line 4
    sget-object p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CAMERA_ID_VIRTUAL_PARALLEL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->CAMERA_ID_VIRTUAL_PARALLEL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsCameraOpened:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsCameraOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsCameraOpened:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mIsCameraOpened:Z

    .line 9
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCameraCloseState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 4
    iput p1, v1, Landroid/os/Message;->what:I

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
