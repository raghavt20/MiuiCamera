.class public final synthetic Lcom/android/camera/features/mimoji2/module/impl/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$5;

.field public final synthetic b:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$5;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/b;->a:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$5;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/b;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/b;->a:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$5;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$5;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method
