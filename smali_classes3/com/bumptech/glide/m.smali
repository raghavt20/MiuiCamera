.class public Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/j;
.implements Lcom/bumptech/glide/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/m$a;,
        Lcom/bumptech/glide/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/manager/j;",
        "Lcom/bumptech/glide/g<",
        "Lcom/bumptech/glide/j<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final Zj:Lcom/bumptech/glide/request/f;

.field private static final fk:Lcom/bumptech/glide/request/f;

.field private static final gk:Lcom/bumptech/glide/request/f;


# instance fields
.field private final La:Landroid/os/Handler;

.field private Qj:Lcom/bumptech/glide/request/f;

.field private final _j:Lcom/bumptech/glide/manager/p;

.field private final bk:Lcom/bumptech/glide/manager/o;

.field private final ck:Lcom/bumptech/glide/manager/q;

.field protected final context:Landroid/content/Context;

.field private final dk:Ljava/lang/Runnable;

.field private final ek:Lcom/bumptech/glide/manager/c;

.field protected final gj:Lcom/bumptech/glide/c;

.field final wa:Lcom/bumptech/glide/manager/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/request/f;->k(Ljava/lang/Class;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->lock()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/m;->fk:Lcom/bumptech/glide/request/f;

    .line 2
    const-class v0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-static {v0}, Lcom/bumptech/glide/request/f;->k(Ljava/lang/Class;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->lock()Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/m;->gk:Lcom/bumptech/glide/request/f;

    .line 3
    sget-object v0, Lcom/bumptech/glide/load/engine/o;->DATA:Lcom/bumptech/glide/load/engine/o;

    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->B(Z)Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/m;->Zj:Lcom/bumptech/glide/request/f;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/i;Lcom/bumptech/glide/manager/o;Landroid/content/Context;)V
    .locals 7
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v4, Lcom/bumptech/glide/manager/p;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/p;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->Gi()Lcom/bumptech/glide/manager/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/i;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/p;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/i;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/p;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/bumptech/glide/manager/q;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/q;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    .line 6
    new-instance v0, Lcom/bumptech/glide/k;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/m;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->dk:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->La:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/m;->gj:Lcom/bumptech/glide/c;

    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/m;->wa:Lcom/bumptech/glide/manager/i;

    .line 10
    iput-object p3, p0, Lcom/bumptech/glide/m;->bk:Lcom/bumptech/glide/manager/o;

    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    .line 12
    iput-object p6, p0, Lcom/bumptech/glide/m;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/m$b;

    invoke-direct {p6, p4}, Lcom/bumptech/glide/m$b;-><init>(Lcom/bumptech/glide/manager/p;)V

    .line 14
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/d;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/m;->ek:Lcom/bumptech/glide/manager/c;

    .line 15
    invoke-static {}, Lcom/bumptech/glide/util/l;->Mk()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 16
    iget-object p3, p0, Lcom/bumptech/glide/m;->La:Landroid/os/Handler;

    iget-object p4, p0, Lcom/bumptech/glide/m;->dk:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/i;->b(Lcom/bumptech/glide/manager/j;)V

    .line 18
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/m;->ek:Lcom/bumptech/glide/manager/c;

    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/i;->b(Lcom/bumptech/glide/manager/j;)V

    .line 19
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->Hi()Lcom/bumptech/glide/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/e;->ta()Lcom/bumptech/glide/request/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/f;)V

    .line 20
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/m;)V

    return-void
.end method

.method private e(Lcom/bumptech/glide/request/f;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/m;->Qj:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/m;->Qj:Lcom/bumptech/glide/request/f;

    return-void
.end method

.method private g(Lcom/bumptech/glide/request/target/o;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->e(Lcom/bumptech/glide/request/target/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/bumptech/glide/m;->gj:Lcom/bumptech/glide/c;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/target/o;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/o;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/o;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object p0

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/o;->f(Lcom/bumptech/glide/request/c;)V

    .line 7
    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Ni()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/m;->fk:Lcom/bumptech/glide/request/f;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public Oi()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public Pi()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bumptech/glide/request/f;->C(Z)Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public Qi()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/m;->gk:Lcom/bumptech/glide/request/f;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public Ri()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/m;->Zj:Lcom/bumptech/glide/request/f;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public Si()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/p;->Si()V

    return-void
.end method

.method public Ti()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/p;->Ti()V

    return-void
.end method

.method public Ui()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Ti()V

    .line 3
    iget-object p0, p0, Lcom/bumptech/glide/m;->bk:Lcom/bumptech/glide/manager/o;

    invoke-interface {p0}, Lcom/bumptech/glide/manager/o;->ba()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->Ti()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Vi()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/p;->Vi()V

    return-void
.end method

.method public Wi()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Vi()V

    .line 3
    iget-object p0, p0, Lcom/bumptech/glide/m;->bk:Lcom/bumptech/glide/manager/o;

    invoke-interface {p0}, Lcom/bumptech/glide/manager/o;->ba()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->Vi()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/net/URL;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Ljava/net/URL;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/f;)V

    return-object p0
.end method

.method a(Ljava/lang/Class;)Lcom/bumptech/glide/n;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/n<",
            "*TT;>;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/bumptech/glide/m;->gj:Lcom/bumptech/glide/c;

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->Hi()Lcom/bumptech/glide/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->a(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->a(Ljava/net/URL;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/c;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "*>;",
            "Lcom/bumptech/glide/request/c;",
            ")V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/q;->f(Lcom/bumptech/glide/request/target/o;)V

    .line 11
    iget-object p0, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/manager/p;->i(Lcom/bumptech/glide/request/c;)V

    return-void
.end method

.method public b(Ljava/lang/Class;)Lcom/bumptech/glide/j;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/j<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/bumptech/glide/m;->gj:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/m;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public c(Landroid/net/Uri;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->c(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/m;->e(Lcom/bumptech/glide/request/f;)V

    return-object p0
.end method

.method public bridge synthetic c(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->c(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/bumptech/glide/m$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    return-void
.end method

.method protected d(Lcom/bumptech/glide/request/f;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/f;->Rj()Lcom/bumptech/glide/request/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/m;->Qj:Lcom/bumptech/glide/request/f;

    return-void
.end method

.method public d(Lcom/bumptech/glide/request/target/o;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/l;->Nk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/bumptech/glide/m;->g(Lcom/bumptech/glide/request/target/o;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/m;->La:Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/l;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/request/target/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method e(Lcom/bumptech/glide/request/target/o;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "*>;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/o;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/p;->h(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/q;->e(Lcom/bumptech/glide/request/target/o;)V

    const/4 p0, 0x0

    .line 5
    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/target/o;->f(Lcom/bumptech/glide/request/c;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public f([B)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->f([B)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->f([B)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public g(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->g(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->g(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public isPaused()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/p;->isPaused()Z

    move-result p0

    return p0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->load(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Oi()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->load(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->load(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->load(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Ri()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->load(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/target/o;

    .line 3
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->clear()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/p;->Lj()V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/m;->wa:Lcom/bumptech/glide/manager/i;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/i;->a(Lcom/bumptech/glide/manager/j;)V

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/m;->wa:Lcom/bumptech/glide/manager/i;

    iget-object v1, p0, Lcom/bumptech/glide/m;->ek:Lcom/bumptech/glide/manager/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/i;->a(Lcom/bumptech/glide/manager/j;)V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/m;->La:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/m;->dk:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/m;->gj:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/c;->c(Lcom/bumptech/glide/m;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Vi()V

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/q;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Ti()V

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/m;->ck:Lcom/bumptech/glide/manager/q;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/q;->onStop()V

    return-void
.end method

.method ta()Lcom/bumptech/glide/request/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/m;->Qj:Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/m;->_j:Lcom/bumptech/glide/manager/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/m;->bk:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
