.class public final synthetic Lcom/android/camera/features/gif/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OnConvertProgress(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/a;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->a(Ljava/lang/String;I)V

    return-void
.end method
