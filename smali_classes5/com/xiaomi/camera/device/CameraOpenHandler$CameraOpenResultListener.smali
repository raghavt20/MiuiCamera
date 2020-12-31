.class public interface abstract Lcom/xiaomi/camera/device/CameraOpenHandler$CameraOpenResultListener;
.super Ljava/lang/Object;
.source "CameraOpenHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraOpenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraOpenResultListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)V
.end method
