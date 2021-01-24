.class public Lcom/xiaomi/camera/rx/CameraOpenObservable;
.super Lio/reactivex/Single;
.source "CameraOpenObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraOpenObservable"


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

.field private final mForceClose:Z

.field private final mSwitched:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mSwitched:Z

    .line 4
    iput-boolean p3, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mForceClose:Z

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraOpenHandler()Lcom/xiaomi/camera/device/CameraOpenHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    return-void
.end method

.method public static create(Ljava/lang/String;ZZ)Lcom/xiaomi/camera/rx/CameraOpenObservable;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/rx/CameraOpenObservable;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/camera/rx/CameraOpenObservable;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;

    iget-object v1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;-><init>(Lcom/xiaomi/camera/device/CameraOpenHandler;Lio/reactivex/SingleObserver;Lcom/xiaomi/camera/rx/CameraOpenObservable$1;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding listener: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraOpenObservable"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mSwitched:Z

    iget-boolean p0, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mForceClose:Z

    invoke-static {p1, v0, v1, p0}, Lcom/xiaomi/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;ZZ)V

    return-void
.end method
