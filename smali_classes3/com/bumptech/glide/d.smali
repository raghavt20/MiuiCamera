.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private Oa:Lcom/bumptech/glide/request/f;

.field private final Pa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/n<",
            "**>;>;"
        }
    .end annotation
.end field

.field private Qa:Lcom/bumptech/glide/load/engine/Engine;

.field private Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private Yi:Lcom/bumptech/glide/load/engine/a/o;

.field private cj:Lcom/bumptech/glide/manager/d;

.field private ij:Lcom/bumptech/glide/load/engine/b/b;

.field private jj:Lcom/bumptech/glide/load/engine/b/b;

.field private kj:Lcom/bumptech/glide/load/engine/a/a$a;

.field private lj:Lcom/bumptech/glide/load/engine/a/q;

.field private logLevel:I

.field private mj:Lcom/bumptech/glide/manager/n$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private nj:Lcom/bumptech/glide/load/engine/b/b;

.field private oj:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->Pa:Ljava/util/Map;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/bumptech/glide/d;->logLevel:I

    .line 4
    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->Oa:Lcom/bumptech/glide/request/f;

    return-void
.end method


# virtual methods
.method E(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v2, p0, Lcom/bumptech/glide/d;->ij:Lcom/bumptech/glide/load/engine/b/b;

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->Ej()Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/d;->ij:Lcom/bumptech/glide/load/engine/b/b;

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/d;->jj:Lcom/bumptech/glide/load/engine/b/b;

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->Dj()Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/d;->jj:Lcom/bumptech/glide/load/engine/b/b;

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/d;->nj:Lcom/bumptech/glide/load/engine/b/b;

    if-nez v2, :cond_2

    .line 6
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->Cj()Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/d;->nj:Lcom/bumptech/glide/load/engine/b/b;

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/d;->lj:Lcom/bumptech/glide/load/engine/a/q;

    if-nez v2, :cond_3

    .line 8
    new-instance v2, Lcom/bumptech/glide/load/engine/a/q$a;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/load/engine/a/q$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/a/q$a;->build()Lcom/bumptech/glide/load/engine/a/q;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/d;->lj:Lcom/bumptech/glide/load/engine/a/q;

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/bumptech/glide/d;->cj:Lcom/bumptech/glide/manager/d;

    if-nez v2, :cond_4

    .line 10
    new-instance v2, Lcom/bumptech/glide/manager/g;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/g;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/d;->cj:Lcom/bumptech/glide/manager/d;

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/bumptech/glide/d;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    if-nez v2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/bumptech/glide/d;->lj:Lcom/bumptech/glide/load/engine/a/q;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/a/q;->zj()I

    move-result v2

    if-lez v2, :cond_5

    .line 13
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;-><init>(J)V

    iput-object v3, p0, Lcom/bumptech/glide/d;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/d;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 15
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/d;->Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    if-nez v2, :cond_7

    .line 16
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;

    iget-object v3, p0, Lcom/bumptech/glide/d;->lj:Lcom/bumptech/glide/load/engine/a/q;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/a/q;->yj()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/d;->Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 17
    :cond_7
    iget-object v2, p0, Lcom/bumptech/glide/d;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    if-nez v2, :cond_8

    .line 18
    new-instance v2, Lcom/bumptech/glide/load/engine/a/n;

    iget-object v3, p0, Lcom/bumptech/glide/d;->lj:Lcom/bumptech/glide/load/engine/a/q;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/a/q;->Aj()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/a/n;-><init>(J)V

    iput-object v2, p0, Lcom/bumptech/glide/d;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    .line 19
    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/d;->kj:Lcom/bumptech/glide/load/engine/a/a$a;

    if-nez v2, :cond_9

    .line 20
    new-instance v2, Lcom/bumptech/glide/load/engine/a/m;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/load/engine/a/m;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bumptech/glide/d;->kj:Lcom/bumptech/glide/load/engine/a/a$a;

    .line 21
    :cond_9
    iget-object v2, p0, Lcom/bumptech/glide/d;->Qa:Lcom/bumptech/glide/load/engine/Engine;

    if-nez v2, :cond_a

    .line 22
    new-instance v2, Lcom/bumptech/glide/load/engine/Engine;

    iget-object v4, p0, Lcom/bumptech/glide/d;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    iget-object v5, p0, Lcom/bumptech/glide/d;->kj:Lcom/bumptech/glide/load/engine/a/a$a;

    iget-object v6, p0, Lcom/bumptech/glide/d;->jj:Lcom/bumptech/glide/load/engine/b/b;

    iget-object v7, p0, Lcom/bumptech/glide/d;->ij:Lcom/bumptech/glide/load/engine/b/b;

    .line 23
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->Fj()Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v8

    .line 24
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->Cj()Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v9

    iget-boolean v10, p0, Lcom/bumptech/glide/d;->oj:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Z)V

    iput-object v2, p0, Lcom/bumptech/glide/d;->Qa:Lcom/bumptech/glide/load/engine/Engine;

    .line 25
    :cond_a
    new-instance v6, Lcom/bumptech/glide/manager/n;

    iget-object v2, p0, Lcom/bumptech/glide/d;->mj:Lcom/bumptech/glide/manager/n$a;

    invoke-direct {v6, v2}, Lcom/bumptech/glide/manager/n;-><init>(Lcom/bumptech/glide/manager/n$a;)V

    .line 26
    new-instance v11, Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/d;->Qa:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v3, p0, Lcom/bumptech/glide/d;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    iget-object v4, p0, Lcom/bumptech/glide/d;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iget-object v5, p0, Lcom/bumptech/glide/d;->Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    iget-object v7, p0, Lcom/bumptech/glide/d;->cj:Lcom/bumptech/glide/manager/d;

    iget v8, p0, Lcom/bumptech/glide/d;->logLevel:I

    iget-object v9, p0, Lcom/bumptech/glide/d;->Oa:Lcom/bumptech/glide/request/f;

    .line 27
    invoke-virtual {v9}, Lcom/bumptech/glide/request/f;->lock()Lcom/bumptech/glide/request/f;

    move-result-object v9

    iget-object v10, p0, Lcom/bumptech/glide/d;->Pa:Ljava/util/Map;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/manager/n;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/f;Ljava/util/Map;)V

    return-object v11
.end method

.method a(Lcom/bumptech/glide/load/engine/Engine;)Lcom/bumptech/glide/d;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bumptech/glide/d;->Qa:Lcom/bumptech/glide/load/engine/Engine;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/a$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/a/a$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/d;->kj:Lcom/bumptech/glide/load/engine/a/a$a;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/o;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/a/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/d;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/q$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/a/q$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a/q$a;->build()Lcom/bumptech/glide/load/engine/a/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/a/q;)Lcom/bumptech/glide/d;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/q;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/a/q;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/bumptech/glide/d;->lj:Lcom/bumptech/glide/load/engine/a/q;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/b;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/d;->nj:Lcom/bumptech/glide/load/engine/b/b;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/d;->Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/d;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/manager/d;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/d;->cj:Lcom/bumptech/glide/manager/d;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/bumptech/glide/d;->Oa:Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/n;)Lcom/bumptech/glide/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/n<",
            "*TT;>;)",
            "Lcom/bumptech/glide/d;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/d;->Pa:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method a(Lcom/bumptech/glide/manager/n$a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/n$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/d;->mj:Lcom/bumptech/glide/manager/n$a;

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/b/b;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/d;->jj:Lcom/bumptech/glide/load/engine/b/b;

    return-object p0
.end method

.method public c(Lcom/bumptech/glide/load/engine/b/b;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d;->d(Lcom/bumptech/glide/load/engine/b/b;)Lcom/bumptech/glide/d;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/bumptech/glide/load/engine/b/b;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/d;->ij:Lcom/bumptech/glide/load/engine/b/b;

    return-object p0
.end method

.method public setLogLevel(I)Lcom/bumptech/glide/d;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/d;->logLevel:I

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z(Z)Lcom/bumptech/glide/d;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/d;->oj:Z

    return-object p0
.end method
