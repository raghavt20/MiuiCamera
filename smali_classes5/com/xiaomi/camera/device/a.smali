.class public final synthetic Lcom/xiaomi/camera/device/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;


# instance fields
.field public final synthetic a:Lcom/xiaomi/camera/device/CameraOpenHandler;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraOpenHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/a;->a:Lcom/xiaomi/camera/device/CameraOpenHandler;

    iput-boolean p2, p0, Lcom/xiaomi/camera/device/a;->b:Z

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/device/a;->a:Lcom/xiaomi/camera/device/CameraOpenHandler;

    iget-boolean p0, p0, Lcom/xiaomi/camera/device/a;->b:Z

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/camera/device/CameraOpenHandler;->b(ZZ)V

    return-void
.end method
