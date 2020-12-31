.class public final synthetic Lcom/android/camera/features/mimoji2/module/impl/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->a:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->b:I

    iput p3, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->c:I

    iput p4, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->d:I

    iput p5, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->e:I

    iput-boolean p6, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->a:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    iget v1, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->b:I

    iget v2, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->c:I

    iget v3, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->d:I

    iget v4, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->e:I

    iget-boolean v5, p0, Lcom/android/camera/features/mimoji2/module/impl/a;->f:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->g(IIIIZ)V

    return-void
.end method
