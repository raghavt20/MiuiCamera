.class Lcom/android/camera2/DetachableClickListener$1;
.super Ljava/lang/Object;
.source "DetachableClickListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/DetachableClickListener;->clearOnDetach(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera2/DetachableClickListener;


# direct methods
.method constructor <init>(Lcom/android/camera2/DetachableClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/DetachableClickListener;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dialog attach to window"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowDetached()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera2/DetachableClickListener;->access$102(Lcom/android/camera2/DetachableClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
