.class public abstract Lcom/xiaomi/camera/rx/SimpleDisposable;
.super Ljava/lang/Object;
.source "SimpleDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private final mDisposeCallbackHandler:Landroid/os/Handler;

.field private final unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->mDisposeCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->onDispose()V

    return-void
.end method

.method private synthetic c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->onDispose()V

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->a()V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->c()V

    return-void
.end method

.method public final dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->mDisposeCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/xiaomi/camera/rx/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/rx/c;-><init>(Lcom/xiaomi/camera/rx/SimpleDisposable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/camera/rx/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/rx/b;-><init>(Lcom/xiaomi/camera/rx/SimpleDisposable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected abstract onDispose()V
.end method
