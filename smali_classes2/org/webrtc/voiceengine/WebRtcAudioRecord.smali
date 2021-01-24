.class Lorg/webrtc/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "WebRtcAudioRecord.java"


# instance fields
.field private _audioRecord:Landroid/media/AudioRecord;

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doRecInit:Z

.field private _isRecording:Z

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _tempBufRec:[B

.field final logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 6
    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    const-string v0, "WebRTC AD java"

    .line 7
    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->logTag:Ljava/lang/String;

    const/16 v0, 0x780

    .line 8
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    :goto_0
    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    return-void
.end method

.method private DoLog(Ljava/lang/String;)V
    .locals 0

    const-string p0, "WebRTC AD java"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private DoLogErr(Ljava/lang/String;)V
    .locals 0

    const-string p0, "WebRTC AD java"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private InitRecording(III)I
    .locals 8

    const/16 v0, 0x10

    const/4 v1, 0x2

    .line 1
    invoke-static {p2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    .line 2
    div-int/lit16 v0, p2, 0xc8

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    .line 3
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    :cond_0
    const/4 v0, -0x1

    .line 6
    :try_start_0
    new-instance v1, Landroid/media/AudioRecord;

    const/4 v6, 0x2

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return v0

    .line 8
    :cond_1
    iget p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    return p0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    return v0
.end method

.method private RecordAudio(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    .line 3
    :goto_0
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/16 v0, -0x13

    .line 5
    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set rec thread priority failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 7
    :goto_1
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 10
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v0, p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 11
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordAudio try failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12
    :cond_2
    iget-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    iget p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    return p0

    .line 14
    :goto_2
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private StartRecording()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private StopRecording()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, -0x1

    .line 5
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 6
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 7
    :cond_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 10
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    return v0

    :catchall_0
    move-exception v1

    .line 12
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 13
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
