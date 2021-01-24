.class public final synthetic Lcom/android/camera/scene/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/scene/ASDResultParse;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scene/ASDResultParse;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/b;->a:Lcom/android/camera/scene/ASDResultParse;

    iput p2, p0, Lcom/android/camera/scene/b;->b:I

    iput p3, p0, Lcom/android/camera/scene/b;->c:I

    iput p4, p0, Lcom/android/camera/scene/b;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/scene/b;->a:Lcom/android/camera/scene/ASDResultParse;

    iget v1, p0, Lcom/android/camera/scene/b;->b:I

    iget v2, p0, Lcom/android/camera/scene/b;->c:I

    iget p0, p0, Lcom/android/camera/scene/b;->d:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/scene/ASDResultParse;->d(III)V

    return-void
.end method
