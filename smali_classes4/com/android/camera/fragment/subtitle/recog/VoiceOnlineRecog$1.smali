.class Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;
.super Ljava/lang/Object;
.source "VoiceOnlineRecog.java"

# interfaces
.implements Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    return-void
.end method

.method public onRecordBuffer([BIII)V
    .locals 4

    const-string p2, "VoiceOnlineRecog"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "app_id"

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->getAccessAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "aue"

    const-string v3, "raw"

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "language"

    const-string v3, "cn_en"

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accent"

    const-string v3, "mandarin"

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "domain"

    const-string v3, "xiaomi"

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rf"

    const-string v3, "deserted"

    .line 10
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dwa"

    const-string v3, "wpgs"

    .line 11
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rate"

    const-string v3, "16000"

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "vgap"

    const/16 v3, 0xf

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "common"

    .line 14
    invoke-virtual {p4, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "business"

    .line 15
    invoke-virtual {p4, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 16
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "status"

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "audio"

    .line 18
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    .line 19
    invoke-virtual {p4, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;

    move-result-object p1

    invoke-virtual {p4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$202(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "onRecordBuffer data was null"

    .line 22
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 23
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRecordBuffer Exception: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onRecordReleased()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    const-string v0, "VoiceOnlineRecog"

    const-string v1, "onRecordReleased "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "encoding"

    const-string v3, "raw"

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$202(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I

    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    :cond_0
    return-void
.end method
