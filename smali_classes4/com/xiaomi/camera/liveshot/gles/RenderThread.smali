.class public final Lcom/xiaomi/camera/liveshot/gles/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;
    }
.end annotation


# static fields
.field public static final MSG_DRAW_REQUESTED:I = 0x10

.field public static final MSG_FILTER_CHANGED:I = 0x20

.field public static final MSG_QUIT_REQUESTED:I = 0x30

.field private static final TAG:Ljava/lang/String; = "RenderThread"


# instance fields
.field private mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

.field private mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private volatile mEglContextPrepared:Z

.field private mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

.field private mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

.field private mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

.field private mIsRecordable:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private volatile mReady:Z

.field private volatile mRequestDraw:I

.field private volatile mRequestRelease:Z

.field private final mShardContext:Landroid/opengl/EGLContext;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    .line 5
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    .line 6
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    .line 7
    iput p2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mPreviewWidth:I

    .line 8
    iput p3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mPreviewHeight:I

    .line 9
    iput-object p4, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mShardContext:Landroid/opengl/EGLContext;

    .line 10
    iput-object p5, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    .line 11
    iput-boolean p6, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mIsRecordable:Z

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->doDraw()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/liveshot/gles/RenderThread;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->applyFilterId(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->doQuit()V

    return-void
.end method

.method private applyFilterId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/VideoRecorderCanvas;->applyFilterId(I)V

    :cond_0
    return-void
.end method

.method private doDraw()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    const/4 v2, 0x1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    .line 6
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->makeCurrent()V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 10
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->swapBuffers()Z

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private doQuit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->release()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mIsRecordable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    :goto_0
    new-instance v1, Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mShardContext:Landroid/opengl/EGLContext;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/camera/liveshot/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    .line 3
    new-instance v0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;-><init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->makeCurrent()V

    .line 6
    new-instance v0, Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-direct {v0}, Lcom/android/camera/effect/VideoRecorderCanvas;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    iget v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mPreviewWidth:I

    iget p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mPreviewHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/effect/VideoRecorderCanvas;->setSize(II)V

    return-void
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 3
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglSurfaceBase:Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mSurface:Landroid/view/Surface;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/effect/VideoRecorderCanvas;->deleteProgram()V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 10
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->release()V

    .line 13
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestRelease:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    if-nez v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mPreviewWidth:I

    iget v7, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mPreviewHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 7
    iget p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mRequestDraw:I

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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

.method public getHandler()Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "render thread is not ready yet"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public quit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;-><init>(Lcom/xiaomi/camera/liveshot/gles/RenderThread;Lcom/xiaomi/camera/liveshot/gles/RenderThread$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    .line 3
    sget-object v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "prepare render thread: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iput-boolean v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->prepare()V

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mEglContextPrepared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    sget-object v4, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "FATAL: failed to prepare render thread"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->release()V

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_1
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 12
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_2
    iput-boolean v2, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z

    .line 16
    iput-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    sget-object p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    const-string v0, "prepare render thread: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 19
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 20
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setFilterId(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mHandler:Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public waitUntilReady()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    sget-object v2, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitUntilReady() interrupted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
