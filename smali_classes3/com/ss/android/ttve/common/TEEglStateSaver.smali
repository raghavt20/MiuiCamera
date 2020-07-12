.class public Lcom/ss/android/ttve/common/TEEglStateSaver;
.super Ljava/lang/Object;
.source "TEEglStateSaver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "TEEglStateSaver"


# instance fields
.field private mSavedContext:Landroid/opengl/EGLContext;

.field private mSavedDisplay:Landroid/opengl/EGLDisplay;

.field private mSavedDrawSurface:Landroid/opengl/EGLSurface;

.field private mSavedReadSurface:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    .line 4
    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    return-void
.end method


# virtual methods
.method public getSavedEGLContext()Landroid/opengl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public logState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TEEglStateSaver"

    if-nez v0, :cond_0

    const-string v0, "Saved context DOES NOT equal current."

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Saved context DOES equal current."

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x305a

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Saved read surface is EGL_NO_SURFACE"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "Saved read surface DOES NOT equal current."

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "Saved read surface DOES equal current."

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Saved draw surface is EGL_NO_SURFACE"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "Saved draw surface DOES NOT equal current."

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v0, "Saved draw surface DOES equal current."

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_2
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "Saved display DOES NOT equal current."

    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string p0, "Saved display DOES equal current."

    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public makeNothingCurrent()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public makeSavedStateCurrent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public saveEGLState()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    .line 2
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TEEglStateSaver"

    if-eqz v0, :cond_0

    const-string v0, "Saved EGL_NO_CONTEXT"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x305a

    .line 4
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    .line 5
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Saved EGL_NO_SURFACE"

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x3059

    .line 7
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    .line 8
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {p0, v0}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Saved EGL_NO_DISPLAY"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
