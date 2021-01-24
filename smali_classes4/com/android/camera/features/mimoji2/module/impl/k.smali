.class public final synthetic Lcom/android/camera/features/mimoji2/module/impl/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/k;->a:I

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/k;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final OnConvertProgress(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimoji2/module/impl/k;->a:I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/k;->b:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->a(ILjava/util/List;I)V

    return-void
.end method
