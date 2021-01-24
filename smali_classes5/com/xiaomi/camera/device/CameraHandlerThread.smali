.class public Lcom/xiaomi/camera/device/CameraHandlerThread;
.super Landroid/os/HandlerThread;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;,
        Lcom/xiaomi/camera/device/CameraHandlerThread$CameraInfo;
    }
.end annotation


# instance fields
.field private final mCameraData:Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;-><init>(Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread;->mCameraData:Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;

    return-void
.end method


# virtual methods
.method public getCameraData()Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread;->mCameraData:Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;

    return-object p0
.end method
