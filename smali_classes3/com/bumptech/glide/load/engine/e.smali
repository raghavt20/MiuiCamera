.class Lcom/bumptech/glide/load/engine/e;
.super Ljava/lang/Object;
.source "DataCacheWriter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/a/a$b;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final options:Lcom/bumptech/glide/load/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/a;Ljava/lang/Object;Lcom/bumptech/glide/load/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a<",
            "TDataType;>;TDataType;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->encoder:Lcom/bumptech/glide/load/a;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/e;->data:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/e;->options:Lcom/bumptech/glide/load/g;

    return-void
.end method


# virtual methods
.method public c(Ljava/io/File;)Z
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->encoder:Lcom/bumptech/glide/load/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->data:Ljava/lang/Object;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/e;->options:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v1, p1, p0}, Lcom/bumptech/glide/load/a;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/g;)Z

    move-result p0

    return p0
.end method
