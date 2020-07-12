.class public final Lcom/xiaomi/media/imagecodec/JpegUtil;
.super Ljava/lang/Object;
.source "JpegUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JpegUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_jpegutil"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/media/imagecodec/JpegUtil;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlanesExtra(Landroid/media/Image;)[Landroid/media/Image$Plane;
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/media/imagecodec/JpegUtil;->TAG:Ljava/lang/String;

    const-string v1, "getOriginalByteBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.ImageReader$SurfaceImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/xiaomi/media/imagecodec/JpegUtil;->nativeGetPlanesExtra(Landroid/media/Image;)[Landroid/media/Image$Plane;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/xiaomi/media/imagecodec/JpegUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOriginalByteBuffer planes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only images from ImageReader can be fed to JpegUtil, other image source is not supported yet!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input image must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeGetPlanesExtra(Landroid/media/Image;)[Landroid/media/Image$Plane;
.end method
