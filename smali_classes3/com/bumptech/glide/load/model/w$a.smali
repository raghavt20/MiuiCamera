.class Lcom/bumptech/glide/load/model/w$a;
.super Ljava/lang/Object;
.source "MultiModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;
.implements Lcom/bumptech/glide/load/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "TData;>;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final Hj:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private callback:Lcom/bumptech/glide/load/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private currentIndex:I

.field private exceptions:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final hq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;>;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/model/w$a;->Hj:Landroid/support/v4/util/Pools$Pool;

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/w$a;->hq:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bumptech/glide/load/model/w$a;->currentIndex:I

    return-void
.end method

.method private Hn()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/model/w$a;->currentIndex:I

    iget-object v1, p0, Lcom/bumptech/glide/load/model/w$a;->hq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/bumptech/glide/load/model/w$a;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/model/w$a;->currentIndex:I

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/model/w$a;->priority:Lcom/bumptech/glide/Priority;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/w$a;->callback:Lcom/bumptech/glide/load/a/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/model/w$a;->a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/w$a;->exceptions:Ljava/util/List;

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/model/w$a;->callback:Lcom/bumptech/glide/load/a/d$a;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/w$a;->exceptions:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "Fetch failed"

    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public L()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/model/w$a;->hq:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->L()Lcom/bumptech/glide/load/DataSource;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/model/w$a;->priority:Lcom/bumptech/glide/Priority;

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/model/w$a;->callback:Lcom/bumptech/glide/load/a/d$a;

    .line 3
    iget-object p2, p0, Lcom/bumptech/glide/load/model/w$a;->Hj:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p2}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/w$a;->exceptions:Ljava/util/List;

    .line 4
    iget-object p2, p0, Lcom/bumptech/glide/load/model/w$a;->hq:Ljava/util/List;

    iget v0, p0, Lcom/bumptech/glide/load/model/w$a;->currentIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/a/d;

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/model/w$a;->exceptions:Ljava/util/List;

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/w$a;->Hn()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/model/w$a;->callback:Lcom/bumptech/glide/load/a/d$a;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/w$a;->Hn()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/model/w$a;->hq:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/a/d;

    .line 2
    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/w$a;->exceptions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/model/w$a;->Hj:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/model/w$a;->exceptions:Ljava/util/List;

    .line 4
    iget-object p0, p0, Lcom/bumptech/glide/load/model/w$a;->hq:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/a/d;

    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ga()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/model/w$a;->hq:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->ga()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
