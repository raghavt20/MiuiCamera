.class public Lcom/xiaomi/camera/device/CameraService;
.super Ljava/lang/Object;
.source "CameraService.java"


# static fields
.field private static final DEFAULT_MSG_TYPE:I = 0x1

.field public static final REASON_CLOSE:I = 0x0

.field public static final REASON_DISCONNECTED:I = 0x1

.field private static final sInstance:Lcom/xiaomi/camera/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/util/Singleton<",
            "Lcom/xiaomi/camera/device/CameraService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/device/CameraService$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/CameraService$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/device/CameraService;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread;->getCameraData()Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;

    move-result-object v2

    iput-object v1, v2, Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 7
    new-instance v2, Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/xiaomi/camera/device/CameraOpenHandler;-><init>(Landroid/os/Looper;Landroid/hardware/camera2/CameraManager;)V

    iput-object v2, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    .line 8
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaomi/camera/device/CameraService;->mMainHandler:Landroid/os/Handler;

    .line 9
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/camera/device/b;->a:Lcom/xiaomi/camera/device/b;

    invoke-direct {v2, v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/xiaomi/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    .line 10
    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraService;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/xiaomi/camera/device/callable/CameraCallable;

    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->run()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static addCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static closeCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public static getCameraOpenHandler()Lcom/xiaomi/camera/device/CameraOpenHandler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    return-object v0
.end method

.method public static getCurrentCamera2Device()Lcom/android/camera2/Camera2Proxy;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->getCurrentCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/xiaomi/camera/device/CameraService;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/device/CameraService;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/device/CameraService;

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getServiceHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static openCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;ZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/camera/device/CameraOpenHandler;->openCamera(ILcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;ZZ)V

    return-void
.end method

.method public static preload()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    return-void
.end method

.method public static release(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->release(Z)V

    return-void
.end method


# virtual methods
.method public getConcurrentStreamingCameraIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
