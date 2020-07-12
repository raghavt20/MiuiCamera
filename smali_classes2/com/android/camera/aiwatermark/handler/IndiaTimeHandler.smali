.class public Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;
.super Lcom/android/camera/aiwatermark/handler/TimeHandler;
.source "IndiaTimeHandler.java"


# instance fields
.field private mTimeWatermark:Lcom/android/camera/aiwatermark/data/TimeWatermark;

.field private mWatermarkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/TimeHandler;-><init>(Z)V

    .line 2
    new-instance p1, Lcom/android/camera/aiwatermark/data/TimeWatermark;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/data/TimeWatermark;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;->mTimeWatermark:Lcom/android/camera/aiwatermark/data/TimeWatermark;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;->mTimeWatermark:Lcom/android/camera/aiwatermark/data/TimeWatermark;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/TimeWatermark;->getForAI()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method
