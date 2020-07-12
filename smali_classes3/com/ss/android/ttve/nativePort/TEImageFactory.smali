.class public Lcom/ss/android/ttve/nativePort/TEImageFactory;
.super Ljava/lang/Object;
.source "TEImageFactory.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    }
.end annotation


# static fields
.field private static final BITMAP:Ljava/lang/String; = "bitmap"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFile(Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->recycleBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 8
    :cond_2
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->width:I

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->height:I

    .line 11
    iput-object p1, v0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    const-string p1, "bitmap"

    .line 12
    iput-object p1, v0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->getRotation(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->rotation:I

    return-object v0
.end method

.method public static getImageInfo(Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    new-instance p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;-><init>()V

    .line 5
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->width:I

    .line 6
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->height:I

    .line 7
    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static getRotation(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 p0, 0x0

    if-eqz v0, :cond_3

    const-string v1, "Orientation"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    :cond_3
    return p0
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
