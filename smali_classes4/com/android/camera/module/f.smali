.class public final synthetic Lcom/android/camera/module/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/camera/module/Camera2Module;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/f;->a:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/f;->b:F

    iput p3, p0, Lcom/android/camera/module/f;->c:F

    iput p4, p0, Lcom/android/camera/module/f;->d:I

    iput p5, p0, Lcom/android/camera/module/f;->e:I

    return-void
.end method


# virtual methods
.method public final onOptionClick(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/f;->a:Lcom/android/camera/module/Camera2Module;

    iget v1, p0, Lcom/android/camera/module/f;->b:F

    iget v2, p0, Lcom/android/camera/module/f;->c:F

    iget v3, p0, Lcom/android/camera/module/f;->d:I

    iget v4, p0, Lcom/android/camera/module/f;->e:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/Camera2Module;->q(FFIII)V

    return-void
.end method
