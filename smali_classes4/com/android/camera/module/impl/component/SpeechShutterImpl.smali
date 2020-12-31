.class public Lcom/android/camera/module/impl/component/SpeechShutterImpl;
.super Ljava/lang/Object;
.source "SpeechShutterImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SpeechShutterImpl"


# instance fields
.field private final mActivity:Lcom/android/camera/ActivityBase;

.field private mIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->release()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    return-void
.end method

.method public onPhraseSpottedResult()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mActivity:Lcom/android/camera/ActivityBase;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public processingSpeechShutter(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processingSpeechShutter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v0, "init start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;

    invoke-direct {p1, p0}, Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;-><init>(Lcom/android/camera/module/impl/component/SpeechShutterImpl;)V

    invoke-static {p1}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->openLog(Z)V

    .line 6
    invoke-static {p1}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->saveRecord(Z)V

    .line 7
    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->init()V

    .line 8
    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v1, "init end "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->start()V

    .line 10
    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v1, "processingSpeechShutter start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->restart()V

    .line 13
    sget-object p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string p1, "processingSpeechShutter restart"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 14
    invoke-static {p0}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->stop(I)V

    .line 15
    sget-object p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string p1, "processingSpeechShutter stop"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->onDestroy()V

    return-void
.end method
