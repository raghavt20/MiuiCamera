.class public final synthetic Lcom/android/camera/module/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/module/CloneModule;

.field public final synthetic b:I

.field public final synthetic c:Lcom/xiaomi/fenshen/FenShenCam$Message;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;ILcom/xiaomi/fenshen/FenShenCam$Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/v;->a:Lcom/android/camera/module/CloneModule;

    iput p2, p0, Lcom/android/camera/module/v;->b:I

    iput-object p3, p0, Lcom/android/camera/module/v;->c:Lcom/xiaomi/fenshen/FenShenCam$Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/v;->a:Lcom/android/camera/module/CloneModule;

    iget v1, p0, Lcom/android/camera/module/v;->b:I

    iget-object p0, p0, Lcom/android/camera/module/v;->c:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/CloneModule;->d(ILcom/xiaomi/fenshen/FenShenCam$Message;)V

    return-void
.end method
