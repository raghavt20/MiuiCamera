.class public Lcom/xiaomi/camera/parallelservice/util/ParallelExifUtil;
.super Ljava/lang/Object;
.source "ParallelExifUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParallelExifUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateExif(Ljava/lang/String;)V
    .locals 7

    const-string v0, "close image file failed!"

    .line 1
    sget-object v1, Lcom/xiaomi/camera/parallelservice/util/ParallelExifUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateExif path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v0, Lcom/xiaomi/camera/parallelservice/util/ParallelExifUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExif path not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int p0, v5

    new-array p0, p0, [B

    .line 11
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 12
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->removeParallelProcessComment([B)[B

    move-result-object p0

    .line 13
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 14
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 16
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 18
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, p0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, p0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, p0

    move-object v4, v3

    :goto_0
    move-object p0, v1

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v3, p0

    move-object v4, v3

    :goto_1
    move-object p0, v1

    .line 19
    :goto_2
    :try_start_4
    sget-object v1, Lcom/xiaomi/camera/parallelservice/util/ParallelExifUtil;->TAG:Ljava/lang/String;

    const-string v2, "process exif failed!"

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_1

    .line 20
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 22
    :goto_4
    sget-object v1, Lcom/xiaomi/camera/parallelservice/util/ParallelExifUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_5
    return-void

    :catchall_2
    move-exception p0

    :goto_6
    if-eqz v3, :cond_3

    .line 23
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_8

    :cond_3
    :goto_7
    if-eqz v4, :cond_4

    .line 24
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 25
    :goto_8
    sget-object v2, Lcom/xiaomi/camera/parallelservice/util/ParallelExifUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :cond_4
    :goto_9
    throw p0
.end method
