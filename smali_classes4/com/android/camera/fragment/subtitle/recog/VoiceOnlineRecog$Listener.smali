.class Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;
.super Lokhttp3/WebSocketListener;
.source "VoiceOnlineRecog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onClosed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceOnlineRecog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onClosing: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceOnlineRecog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VoiceOnlineRecog"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const-string p2, "stop recorder on disconnect "

    .line 4
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->stopRecord(Z)V

    .line 6
    invoke-interface {p1}, Lokhttp3/WebSocket;->cancel()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p1, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$402(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onFailure()V

    .line 11
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackInterruptionNetwork()V

    if-nez p3, :cond_2

    return-void

    .line 12
    :cond_2
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IOException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0, p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "VoiceOnlineRecog"

    if-eqz v0, :cond_0

    const-string p0, "subitle is empty  "

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 9
    iget-object v7, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v7}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 10
    iget-object v8, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v8}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-gtz v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    :cond_2
    const-string p0, "Subtitles in pause: "

    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[^a-z^A-Z^0-9]"

    const-string v3, ""

    .line 13
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v4, "\\s+"

    .line 15
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v6, v0

    array-length v0, v4

    add-int/2addr v6, v0

    if-ne v6, v5, :cond_5

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_5
    const/16 v5, 0x35

    .line 18
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    if-le v0, v5, :cond_6

    .line 19
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_6
    const-string v0, "\u3002"

    .line 20
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "."

    .line 21
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0, p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackTriggerSubtitle()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v3}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v6}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1708(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v3}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const-string v2, "%s --> %s\n"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const-string p2, "%s\n"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string p2, "stop recorder on final result return"

    .line 32
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->stopRecord(Z)V

    .line 34
    invoke-interface {p1}, Lokhttp3/WebSocket;->cancel()V

    .line 35
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    :cond_7
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    return-void
.end method
