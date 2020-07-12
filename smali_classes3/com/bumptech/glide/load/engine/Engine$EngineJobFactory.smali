.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field final en:Lcom/bumptech/glide/load/engine/b/b;

.field final ij:Lcom/bumptech/glide/load/engine/b/b;

.field final jj:Lcom/bumptech/glide/load/engine/b/b;

.field final listener:Lcom/bumptech/glide/load/engine/r;

.field final nj:Lcom/bumptech/glide/load/engine/b/b;

.field final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/q;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/q;-><init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/a/d;->a(ILcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->jj:Lcom/bumptech/glide/load/engine/b/b;

    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->ij:Lcom/bumptech/glide/load/engine/b/b;

    .line 6
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->en:Lcom/bumptech/glide/load/engine/b/b;

    .line 7
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->nj:Lcom/bumptech/glide/load/engine/b/b;

    .line 8
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/r;

    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to shutdown"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/c;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-static {p0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/EngineJob;->init(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object p0

    return-object p0
.end method

.method shutdown()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->jj:Lcom/bumptech/glide/load/engine/b/b;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->ij:Lcom/bumptech/glide/load/engine/b/b;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->en:Lcom/bumptech/glide/load/engine/b/b;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 4
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->nj:Lcom/bumptech/glide/load/engine/b/b;

    invoke-static {p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
