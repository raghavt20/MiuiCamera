.class public final Lcom/xiaomi/camera/device/CameraHandlerThread$CameraInfo;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraInfo"
.end annotation


# instance fields
.field public mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

.field public mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
