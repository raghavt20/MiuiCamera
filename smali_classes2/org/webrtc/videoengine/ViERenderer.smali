.class public Lorg/webrtc/videoengine/ViERenderer;
.super Ljava/lang/Object;
.source "ViERenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method public static CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->IsSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lorg/webrtc/videoengine/ViEAndroidGLES20;

    invoke-direct {p1, p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Landroid/view/SurfaceView;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
