.class Lcom/android/camera/snap/SnapCamera$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/android/camera/snap/SnapCamera;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sessionCb: onConfigureFailed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$000(Lcom/android/camera/snap/SnapCamera;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/snap/SnapCamera;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v1, "onConfigured: CameraDevice was already closed."

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v1, p1}, Lcom/android/camera/snap/SnapCamera;->access$202(Lcom/android/camera/snap/SnapCamera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {p1}, Lcom/android/camera/snap/SnapCamera;->access$300(Lcom/android/camera/snap/SnapCamera;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {p0}, Lcom/android/camera/snap/SnapCamera;->access$400(Lcom/android/camera/snap/SnapCamera;)V

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
