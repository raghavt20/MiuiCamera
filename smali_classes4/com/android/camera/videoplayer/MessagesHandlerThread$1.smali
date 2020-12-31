.class Lcom/android/camera/videoplayer/MessagesHandlerThread$1;
.super Ljava/lang/Object;
.source "MessagesHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/MessagesHandlerThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/MessagesHandlerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->wait(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "InterruptedException"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/player_messages/Message;

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$302(Lcom/android/camera/videoplayer/MessagesHandlerThread;Lcom/android/camera/videoplayer/player_messages/Message;)Lcom/android/camera/videoplayer/player_messages/Message;

    .line 7
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->polledFromQueue()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->runMessage()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->messageFinished()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
