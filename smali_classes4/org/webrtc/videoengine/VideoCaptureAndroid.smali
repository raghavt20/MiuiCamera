.class public Lorg/webrtc/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC-JC-VideoCaptureAndroid"

.field private static localPreview:Landroid/view/SurfaceHolder;


# instance fields
.field private bLandScapeMode:Z

.field private camera:Landroid/hardware/Camera;

.field private cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private deviceRotation:Ljava/lang/Integer;

.field private deviceRotationNotifier:Landroid/view/OrientationEventListener;

.field private dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private firstFrame:Z

.field private frameRotation:I

.field private final id:I

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private final native_capturer:J

.field private final numCaptureBuffers:I

.field private rotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bLandScapeMode:Z

    .line 4
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    .line 5
    iput v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    .line 6
    iput v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameRotation:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->firstFrame:Z

    .line 8
    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 9
    iput-wide p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->native_capturer:J

    .line 10
    new-instance p3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    .line 11
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->firstFrame:Z

    .line 12
    iget-object p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {p2, p3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 14
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x5a

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/16 p2, 0xb4

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const/16 p2, 0x10e

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    goto :goto_0

    .line 18
    :cond_3
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    .line 19
    :goto_0
    new-instance p2, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;

    invoke-direct {p2, p0, p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotationNotifier:Landroid/view/OrientationEventListener;

    .line 20
    new-instance p1, Ljava/util/concurrent/Exchanger;

    invoke-direct {p1}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 21
    new-instance p2, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    invoke-direct {p2, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    .line 22
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private native ProvideCameraFrame([BIJI)V
.end method

.method static synthetic access$000(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$002(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/webrtc/videoengine/VideoCaptureAndroid;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setFlashStateOnCameraThread(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewRotationOnCameraThread(I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/videoengine/VideoCaptureAndroid;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setFocusPointOfInterestOnCameraThread(FF)V

    return-void
.end method

.method static synthetic access$500(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setVideoZoomFactorOnCameraThread(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getSupportedVideoZoomMaxFactorOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$700(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isVideoZoomSupportedOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$800(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getCurrentVideoZoomFactorOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/videoengine/VideoCaptureAndroid;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setExposurePointOfInterestOnCameraThread(FF)V

    return-void
.end method

.method private clamp(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 v0, p2, 0x2

    add-int/2addr p0, v0

    const/16 v1, 0x3e8

    if-le p0, v1, :cond_1

    if-lez p1, :cond_0

    sub-int/2addr v1, p2

    goto :goto_0

    :cond_0
    const/16 v1, -0x3e8

    goto :goto_0

    :cond_1
    sub-int v1, p1, v0

    :goto_0
    return v1
.end method

.method private destroy()V
    .locals 2

    const-string v0, "WEBRTC-JC-VideoCaptureAndroid"

    const-string v1, "destroy, stop the thread and looper."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;

    invoke-direct {v1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Exchanger<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Exchanger;->exchange(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getCurrentVideoZoomFactorOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "WEBRTC-JC-VideoCaptureAndroid"

    if-nez p0, :cond_0

    const-string p0, "Camera is null."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "setVideoZoomFactor is not suppored."

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current zoom value is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getSupportedVideoZoomMaxFactorOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "WEBRTC-JC-VideoCaptureAndroid"

    if-nez p0, :cond_0

    const-string p0, "Camera is null."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "setVideoZoomFactor is not supported."

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The max zoom value is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isVideoZoomSupportedOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, "WEBRTC-JC-VideoCaptureAndroid"

    const-string v1, "Camera is null."

    .line 2
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_1
    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized setExposurePointOfInterest(FF)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid$9;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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

.method private setExposurePointOfInterestOnCameraThread(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const-string v1, "WEBRTC-JC-VideoCaptureAndroid"

    if-nez v0, :cond_0

    const-string p0, "Camera is null."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "SettingMeteringArea is not supported."

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v2, 0x12c

    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float v4, p1, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    sub-float/2addr v4, v5

    .line 6
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->clamp(II)I

    move-result v4

    mul-float/2addr v3, p2

    sub-float/2addr v3, v5

    .line 7
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->clamp(II)I

    move-result v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExposurePointOfInterest: left: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " top: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " before convert X:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Y:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    add-int/lit16 p2, v4, 0x12c

    add-int/lit16 v3, v2, 0x12c

    invoke-direct {p1, v4, v2, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v2, Landroid/hardware/Camera$Area;

    const/16 v3, 0x3e8

    invoke-direct {v2, p1, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 13
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Unable to setExposurePointOfInterest."

    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private declared-synchronized setFlashState(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$10;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$10;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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

.method private setFlashStateOnCameraThread(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const-string v1, "WEBRTC-JC-VideoCaptureAndroid"

    if-nez v0, :cond_0

    const-string p0, "Camera is null."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Flash mode setting is not supported."

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "torch"

    goto :goto_0

    :cond_2
    const-string p1, "off"

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Failed to turn the flash on!"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private declared-synchronized setFocusPointOfInterest(FF)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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

.method private setFocusPointOfInterestOnCameraThread(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const-string v1, "WEBRTC-JC-VideoCaptureAndroid"

    if-nez v0, :cond_0

    const-string p0, "Camera is null."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    const-string v2, "auto"

    .line 5
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "SetFocusArea is not supported"

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v2, 0xc8

    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float v4, p1, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    sub-float/2addr v4, v5

    .line 8
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->clamp(II)I

    move-result v4

    mul-float/2addr v3, p2

    sub-float/2addr v3, v5

    .line 9
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->clamp(II)I

    move-result v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetFocusArea: left: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " top: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " before convert X:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Y:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    add-int/lit16 p2, v4, 0xc8

    add-int/lit16 v3, v2, 0xc8

    invoke-direct {p1, v4, v2, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v2, Landroid/hardware/Camera$Area;

    const/16 v3, 0x3e8

    invoke-direct {v2, p1, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 15
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 16
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 17
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "continuous-video"

    if-eq p1, p2, :cond_2

    .line 18
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 21
    :cond_3
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Unable to setFocusPointOfInterest."

    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    return-void
.end method

.method private setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceHolder;",
            "Ljava/util/concurrent/Exchanger<",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p2, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p2, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized setPreviewRotation(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$12;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$12;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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

.method private declared-synchronized setPreviewRotation(IZ)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iput-boolean p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bLandScapeMode:Z

    .line 4
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$13;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$13;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setPreviewRotationOnCameraThread(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewRotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WEBRTC-JC-VideoCaptureAndroid"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 6
    :goto_0
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bLandScapeMode:Z

    if-nez v0, :cond_2

    .line 7
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_2
    return-void
.end method

.method private declared-synchronized setVideoZoomFactor(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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

.method private setVideoZoomFactorOnCameraThread(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const-string v1, "WEBRTC-JC-VideoCaptureAndroid"

    if-nez v0, :cond_0

    const-string p0, "Camera is null."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "setVideoZoomFactor is not supported."

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    const/4 v3, 0x0

    .line 7
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The max zoom value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", and the set zoom value is: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 10
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "setVideoZoomFacor failed."

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startCapture(IIII)Z
    .locals 10

    .line 1
    new-instance v7, Ljava/util/concurrent/Exchanger;

    invoke-direct {v7}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 2
    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v9, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v7, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/concurrent/Exchanger<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEBRTC-JC-VideoCaptureAndroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 3
    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5
    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    sget-object v3, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/SurfaceTexture;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoStabilizationSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 13
    :cond_2
    invoke-virtual {v2, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 14
    invoke-virtual {v2, p3, p4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 p3, 0x11

    .line 15
    sget-object p4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MiTV2"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    const p3, 0x32315659

    .line 16
    :cond_3
    invoke-virtual {v2, p3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 17
    iget-object p4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    mul-int/2addr p1, p2

    .line 18
    invoke-static {p3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p2

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    move p2, v0

    :goto_1
    const/4 p3, 0x3

    if-ge p2, p3, :cond_4

    .line 19
    iget-object p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    new-array p4, p1, [B

    invoke-virtual {p3, p4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 21
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 22
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotationNotifier:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 23
    invoke-direct {p0, p1, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setFocusPointOfInterest(FF)V

    .line 24
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p5, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 26
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotationNotifier:Landroid/view/OrientationEventListener;

    invoke-virtual {p2}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 27
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotationNotifier:Landroid/view/OrientationEventListener;

    invoke-virtual {p2}, Landroid/view/OrientationEventListener;->disable()V

    :goto_2
    const-string p2, "startCapture failed"

    .line 28
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz p1, :cond_5

    .line 30
    new-instance p1, Ljava/util/concurrent/Exchanger;

    invoke-direct {p1}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p5, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WEBRTC-JC-VideoCaptureAndroid"

    const-string v1, "stopCapture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 4
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 5
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 9
    :goto_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 10
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 11
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotationNotifier:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 13
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotationNotifier:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 14
    iget-object p0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotationNotifier:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_1
    const-string p0, "Failed to stop camera"

    .line 15
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Camera is already stopped!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCurrentVideoZoomFactor()I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$8;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$8;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSupportedVideoZoomMaxFactor()I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isVideoZoomSupported()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$7;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$7;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const-string p1, "WEBRTC-JC-VideoCaptureAndroid"

    const-string p2, "camera is null (onPreviewFrame)"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-ne v0, p2, :cond_e

    .line 5
    iget-boolean p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->firstFrame:Z

    const/16 v0, 0x10e

    const/16 v1, 0xb4

    const/16 v2, 0x5a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v3, :cond_6

    .line 6
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v5, 0x13b

    if-ge p2, v5, :cond_4

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v6, 0x2d

    if-gt p2, v6, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v7, 0x87

    if-le p2, v6, :cond_2

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p2, v7, :cond_2

    .line 8
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v2, 0xe1

    if-lt p2, v7, :cond_3

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p2, v2, :cond_3

    .line 10
    iput v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p2, v2, :cond_5

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p2, v5, :cond_5

    .line 12
    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    iput v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    .line 14
    :cond_5
    :goto_1
    iput-boolean v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->firstFrame:Z

    goto :goto_3

    .line 15
    :cond_6
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v5, 0x145

    if-gt p2, v5, :cond_a

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v5, 0x23

    if-ge p2, v5, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v4, 0x37

    if-le p2, v4, :cond_8

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v4, 0x7d

    if-ge p2, v4, :cond_8

    .line 17
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    goto :goto_3

    .line 18
    :cond_8
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v2, 0x91

    if-le p2, v2, :cond_9

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v2, 0xd7

    if-ge p2, v2, :cond_9

    .line 19
    iput v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    goto :goto_3

    .line 20
    :cond_9
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0xeb

    if-le p2, v1, :cond_b

    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceRotation:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x131

    if-ge p2, v1, :cond_b

    .line 21
    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    goto :goto_3

    .line 22
    :cond_a
    :goto_2
    iput v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    .line 23
    :cond_b
    :goto_3
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p2, v3, :cond_c

    .line 24
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    sub-int/2addr p2, v0

    add-int/lit16 p2, p2, 0x168

    rem-int/lit16 p2, p2, 0x168

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameRotation:I

    goto :goto_4

    .line 25
    :cond_c
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez p2, :cond_d

    .line 26
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    add-int/2addr p2, v0

    rem-int/lit16 p2, p2, 0x168

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameRotation:I

    .line 27
    :cond_d
    :goto_4
    array-length v2, p1

    iget-wide v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->native_capturer:J

    iget v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameRotation:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIJI)V

    .line 28
    iget-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_e
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected camera in callback!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopCapture()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$11;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$11;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "WEBRTC-JC-VideoCaptureAndroid"

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCaptureAndroid::surfaceChanged ignored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "WEBRTC-JC-VideoCaptureAndroid"

    const-string v1, "VideoCaptureAndroid::surfaceCreated"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 5
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$14;

    invoke-direct {v2, p0, p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$14;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 6
    invoke-static {v0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "WEBRTC-JC-VideoCaptureAndroid"

    const-string v0, "VideoCaptureAndroid::surfaceDestroyed"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/concurrent/Exchanger;

    invoke-direct {p1}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 5
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$15;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$15;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
