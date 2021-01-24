.class Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;
.super Ljava/lang/Object;
.source "MimojiVideoEditorImpl.java"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->combineVideoAudio(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReadyNow()V
    .locals 0

    return-void
.end method

.method public OnReceiveFailed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposeVoiceChangeFile OnReceiveFailed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$100(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$200(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$300()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji void OnReceiveFinish[] composeTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
