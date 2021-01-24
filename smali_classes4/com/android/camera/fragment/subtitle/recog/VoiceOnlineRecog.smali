.class public Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.super Ljava/lang/Object;
.source "VoiceOnlineRecog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;
    }
.end annotation


# static fields
.field private static final FINAL_RESULT_TYPE:Ljava/lang/String; = "0"

.field private static final HOSTURL:Ljava/lang/String; = "wss://xiaomi-ist-api.xfyun.cn/v2/ist"

.field private static final SOCKET_TIME_OUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "VoiceOnlineRecog"


# instance fields
.field private final SAMPLE_RATE:I

.field public final StatusContinueFrame:I

.field public final StatusFirstFrame:I

.field public final StatusLastFrame:I

.field private context:Landroid/content/Context;

.field private currentStatus:I

.field protected handler:Landroid/os/Handler;

.field private isDisConnect:Z

.field private isPauseRecording:Z

.field private isStopRecording:Z

.field public final json:Lcom/google/gson/Gson;

.field private mCanStartRecord:Z

.field private mEdTime:Ljava/lang/String;

.field private mNeedRemoveTime:J

.field private mPauseRecordingTime:J

.field private mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

.field private mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

.field private mResumeRecordingTime:J

.field private mStTime:Ljava/lang/String;

.field private mStartRecordingTime:J

.field private recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

.field private srtBuilder:Ljava/lang/StringBuilder;

.field private srtRowNum:I

.field private type:Ljava/lang/String;

.field private webSocket:Lokhttp3/WebSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    const/16 v1, 0x3e80

    .line 3
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->SAMPLE_RATE:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    .line 5
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusFirstFrame:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusContinueFrame:I

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusLastFrame:I

    .line 8
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->json:Lcom/google/gson/Gson;

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    .line 11
    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->handler:Landroid/os/Handler;

    .line 13
    new-instance v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    .line 14
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->showSubtitleContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1708(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    return-wide v0
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "data"

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "result"

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const-string v1, "cn"

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "st"

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "type"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    const-string v0, "bg"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    const-string v0, "ed"

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    const-string p0, "rt"

    .line 10
    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "ws"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "cw"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "w"

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-wide p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    sub-long/2addr v0, p0

    .line 3
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "HH:mm:ss,SSS"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "GMT+00:00"

    .line 4
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initWebSocket()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->getAccessAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->getAccessAppSecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss://xiaomi-ist-api.xfyun.cn/v2/ist"

    invoke-static {v2, v0, v1}, Lcom/android/camera/fragment/subtitle/recog/AuthUtils;->assembleRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 4
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-void
.end method

.method private showSubtitleContent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getSubtitleContent()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public pauseRecording()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public resumeRecording()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    .line 2
    iget-wide v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public startRecording()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    .line 9
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    if-eqz v0, :cond_1

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->initWebSocket()V

    .line 11
    new-instance v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    const/16 v1, 0x3e80

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->startRecording(Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDisConnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceOnlineRecog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    if-eqz v1, :cond_1

    const-string v1, "stop recorder onstop"

    .line 5
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->stopRecord(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    :cond_1
    return-void
.end method
