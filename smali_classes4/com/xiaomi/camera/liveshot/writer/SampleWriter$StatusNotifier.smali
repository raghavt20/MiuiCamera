.class public Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;
.super Ljava/lang/Object;
.source "SampleWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/writer/SampleWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mStatus:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->mStatus:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->mStatus:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->mStatus:Ljava/lang/Object;

    return-object p0
.end method

.method public notify(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->mStatus:Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
