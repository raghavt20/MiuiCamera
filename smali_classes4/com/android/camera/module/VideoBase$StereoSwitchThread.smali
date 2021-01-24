.class public Lcom/android/camera/module/VideoBase$StereoSwitchThread;
.super Ljava/lang/Thread;
.source "VideoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StereoSwitchThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method protected constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->mCancelled:Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->openCamera()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    return-void

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetZoom()V

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->readVideoPreferences()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->resizeForPreviewAspectRatio()V

    .line 12
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_3

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->startPreview()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->onPreviewStart()V

    .line 15
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
