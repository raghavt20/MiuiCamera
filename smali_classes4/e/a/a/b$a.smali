.class Le/a/a/b$a;
.super Ljava/lang/Object;
.source "BufferedAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field Ly:Z

.field private speed:D

.field final synthetic this$0:Le/a/a/b;


# direct methods
.method public constructor <init>(Le/a/a/b;DZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Le/a/a/b$a;->speed:D

    .line 3
    iput-boolean p4, p0, Le/a/a/b$a;->Ly:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "BufferedAudioRecorder"

    .line 1
    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget v2, v1, Le/a/a/b;->bufferSizeInBytes:I

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 2
    iput-boolean v3, v1, Le/a/a/b;->Oy:Z

    .line 3
    new-instance v4, Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget-object v5, v1, Le/a/a/b;->Ny:Le/a/a/a;

    invoke-direct {v4, v5, v5}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;-><init>(Le/a/a/a;Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;)V

    iput-object v4, v1, Le/a/a/b;->My:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    .line 4
    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v1, v1, Le/a/a/b;->My:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->start()V

    .line 5
    iget-boolean v1, p0, Le/a/a/b$a;->Ly:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v4, v1, Le/a/a/b;->My:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget v1, v1, Le/a/a/b;->sampleRateInHz:I

    iget-wide v5, p0, Le/a/a/b$a;->speed:D

    invoke-virtual {v4, v1, v5, v6}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->startFeeding(ID)V

    .line 7
    :cond_0
    :try_start_0
    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v1, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-eqz v1, :cond_8

    .line 8
    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v1, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 9
    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v1, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v1, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 10
    iget-object v1, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v1, v1, Le/a/a/b;->Ny:Le/a/a/a;

    invoke-interface {v1, v3}, Le/a/a/a;->recordStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v6, v1

    move v1, v3

    .line 11
    :catch_0
    :cond_2
    :goto_1
    iget-object v7, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-boolean v8, v7, Le/a/a/b;->isRecording:Z

    if-eqz v8, :cond_8

    .line 12
    iget-object v8, v7, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-eqz v8, :cond_3

    .line 13
    iget v1, v7, Le/a/a/b;->bufferSizeInBytes:I

    invoke-virtual {v8, v2, v3, v1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    :cond_3
    const/4 v7, -0x3

    if-eq v7, v1, :cond_7

    if-lez v1, :cond_5

    .line 14
    :try_start_1
    iget-object v7, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-boolean v7, v7, Le/a/a/b;->isRecording:Z

    if-eqz v7, :cond_4

    .line 15
    iget-object v7, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v7, v7, Le/a/a/b;->Ny:Le/a/a/a;

    invoke-interface {v7, v2, v1}, Le/a/a/a;->addPCMData([BI)I

    .line 16
    :cond_4
    iget-object v7, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v7, v7, Le/a/a/b;->My:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v7}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-boolean v7, v7, Le/a/a/b;->Oy:Z

    if-nez v7, :cond_2

    .line 17
    iget-object v7, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v7, v7, Le/a/a/b;->My:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v7, v2, v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->feed([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 18
    :cond_5
    iget-object v7, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v7, v7, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v7

    if-eq v7, v5, :cond_6

    if-nez v6, :cond_6

    .line 19
    iget-object v6, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v6, v6, Le/a/a/b;->Ny:Le/a/a/a;

    invoke-interface {v6, v3}, Le/a/a/a;->recordStatus(Z)V

    move v6, v4

    :cond_6
    const-wide/16 v7, 0x32

    .line 20
    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 21
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad audio buffer len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void

    :catch_1
    move-exception v1

    .line 22
    :try_start_3
    iget-object v2, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v2, v2, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-eqz v2, :cond_9

    .line 23
    iget-object v2, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    iget-object v2, v2, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 24
    :catch_2
    :cond_9
    iget-object p0, p0, Le/a/a/b$a;->this$0:Le/a/a/b;

    const/4 v2, 0x0

    iput-object v2, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio recording failed!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
