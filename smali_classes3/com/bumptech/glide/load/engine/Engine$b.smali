.class public Lcom/bumptech/glide/load/engine/Engine$b;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/g;

.field private final gn:Lcom/bumptech/glide/load/engine/EngineJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/load/engine/EngineJob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g;",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$b;->cb:Lcom/bumptech/glide/request/g;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$b;->gn:Lcom/bumptech/glide/load/engine/EngineJob;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$b;->gn:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$b;->cb:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/EngineJob;->b(Lcom/bumptech/glide/request/g;)V

    return-void
.end method
