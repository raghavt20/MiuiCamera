.class final Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;
.super Lcom/xiaomi/camera/rx/SimpleDisposable;
.source "CameraOpenObservable.java"

# interfaces
.implements Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rx/CameraOpenObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# instance fields
.field private final mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

.field private final mObserver:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaomi/camera/device/CameraOpenHandler;Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/camera/device/CameraOpenHandler;",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rx/SimpleDisposable;-><init>(Landroid/os/Handler;)V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;->mObserver:Lio/reactivex/SingleObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraOpenHandler;Lio/reactivex/SingleObserver;Lcom/xiaomi/camera/rx/CameraOpenObservable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;-><init>(Lcom/xiaomi/camera/device/CameraOpenHandler;Lio/reactivex/SingleObserver;)V

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removing listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOpenObservable"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;->mCameraOpenHandler:Lcom/xiaomi/camera/device/CameraOpenHandler;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/device/CameraOpenHandler;->removeListener(Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;->mObserver:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;->mObserver:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
