.class Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;
.super Ljava/lang/Object;
.source "MimojiAvatarEngineImpl.java"

# interfaces
.implements Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCapture Result"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2600(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9$1;-><init>(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoResult(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stop video record callback"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$1902(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;Z)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2002(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;Z)Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$1800(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$1800(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2100(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2200(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2300(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Ljava/io/FileOutputStream;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2300(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to close file stream"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2302(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$1302(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2400(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl$9;->this$0:Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;->access$2400(Lcom/android/camera/module/impl/component/MimojiAvatarEngineImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    return-void
.end method
