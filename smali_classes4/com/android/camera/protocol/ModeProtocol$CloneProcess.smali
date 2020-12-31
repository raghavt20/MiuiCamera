.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CloneProcess;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CloneProcess"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x1a2


# virtual methods
.method public abstract getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;
.end method

.method public abstract onFirstSubjectFound()V
.end method

.method public abstract onSaveFinish(ZLandroid/net/Uri;)V
.end method

.method public abstract prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingPause()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingResume()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract quit()V
.end method

.method public abstract showExitConfirm(Z)V
.end method

.method public abstract showSaveAndGiveUp()V
.end method

.method public abstract showStopAndCancel()V
.end method

.method public abstract stopCaptureToPreview()V
.end method

.method public abstract updateCaptureMessage(I)V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;)V
.end method
