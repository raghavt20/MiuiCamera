.class public Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;
.super Landroid/os/Handler;
.source "MimojiThumbnailRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderHandler"
.end annotation


# instance fields
.field private final mRenderThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;-><init>(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const/16 p1, 0x60

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->access$500(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->access$400(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->access$600(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->access$300(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V

    goto :goto_0

    .line 7
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->access$200(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->access$100(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Z)V

    :goto_0
    return-void
.end method
