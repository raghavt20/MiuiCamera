.class public Lcom/ss/android/medialib/audio/AudioDataProcessThread;
.super Ljava/lang/Object;
.source "AudioDataProcessThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;,
        Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;
    }
.end annotation


# static fields
.field private static final MSG_FEED:I = 0x3

.field private static final MSG_START_FEEDING:I = 0x0

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_STOP_FEEDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioDataProcessThread"


# instance fields
.field private mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDiscard:Z

.field private volatile mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

.field private mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

.field private final mLock:Ljava/lang/Object;

.field private mReady:Z

.field private final mReadyFence:Ljava/lang/Object;

.field private mRecorderInterface:Ld/a/a/a;

.field private mRunning:Z

.field private mStopped:Z


# direct methods
.method public constructor <init>(Ld/a/a/a;Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Ld/a/a/a;

    .line 8
    iput-object p2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/audio/AudioDataProcessThread;IID)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->handleStartFeeding(IID)V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->handleStopFeeding()V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

    return-object p0
.end method

.method private handleStartFeeding(IID)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Ld/a/a/a;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartFeeding() called with: sampleRateInHz = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], channels = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], speed = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDataProcessThread"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Ld/a/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Ld/a/a/a;->initWavFile(IID)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "init wav file failed"

    .line 4
    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    :cond_1
    return-void
.end method

.method private handleStopFeeding()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AudioDataProcessThread"

    const-string v2, "handleStopFeeding() called"

    .line 2
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Ld/a/a/a;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRecorderInterface:Ld/a/a/a;

    iget-boolean v2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    invoke-interface {v1, v2}, Ld/a/a/a;->closeWavFile(Z)I

    goto :goto_0

    :cond_1
    const-string v1, "AudioDataProcessThread"

    const-string v2, "handleStop: Discard wav file"

    .line 7
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    .line 10
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public discard()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mDiscard:Z

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public feed([BI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {p0, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "AudioDataProcessThread"

    const-string p1, "feed audioData"

    .line 6
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isProcessing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;-><init>(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)V

    iput-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    .line 5
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "AudioDataProcessThread"

    const-string v1, "Encoder thread exiting"

    .line 8
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 10
    :try_start_1
    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    iput-boolean v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    .line 12
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 13
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public start()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FILE__()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FUNCTION__()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDataProcessThread"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    if-eqz v1, :cond_0

    const-string p0, "AudioDataProcessThread"

    const-string v1, "thread already running"

    .line 4
    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mRunning:Z

    .line 7
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "AudioDataProcessThread"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 8
    :catch_0
    :goto_0
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public startFeeding(ID)V
    .locals 2

    const-string v0, "AudioDataProcessThread"

    const-string v1, "startFeeding"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReady:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "AudioDataProcessThread"

    const-string v1, "stop()"

    .line 5
    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopFeeding()V
    .locals 2

    const-string v0, "AudioDataProcessThread"

    const-string v1, "stopFeeding"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public waitUtilAudioProcessDone()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mReadyFence:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mHandler:Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 5
    :try_start_2
    iget-boolean v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "AudioDataProcessThread"

    const-string v2, "waiting audio process start"

    .line 6
    invoke-static {v1, v2}, Lcom/ss/android/medialib/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string p0, "AudioDataProcessThread"

    const-string v1, "waiting audio process done"

    .line 9
    invoke-static {p0, v1}, Lcom/ss/android/medialib/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :catchall_1
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method
