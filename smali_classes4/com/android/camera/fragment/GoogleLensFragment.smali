.class public Lcom/android/camera/fragment/GoogleLensFragment;
.super Landroid/app/DialogFragment;
.source "GoogleLensFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GoogleLensFragment"


# instance fields
.field private mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/GoogleLensFragment;->mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/GoogleLensFragment;->mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;->onOptionClick(I)V

    :cond_0
    return-void
.end method

.method public static showOptions(Landroid/app/FragmentManager;Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)Lcom/android/camera/fragment/GoogleLensFragment;
    .locals 2

    const-string v0, "GoogleLensFragment"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/GoogleLensFragment;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/GoogleLensFragment;-><init>(Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)V

    .line 3
    invoke-virtual {v1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    check-cast v1, Lcom/android/camera/fragment/GoogleLensFragment;

    return-object v1
.end method


# virtual methods
.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/GoogleLensFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    new-instance p1, Lmiui/app/b$a;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiui/app/b$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f10034e

    .line 2
    invoke-virtual {p1, v0}, Lmiui/app/b$a;->K(I)Lmiui/app/b$a;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/i;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/i;-><init>(Lcom/android/camera/fragment/GoogleLensFragment;)V

    const p0, 0x7f030003

    .line 3
    invoke-virtual {p1, p0, v0}, Lmiui/app/b$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lmiui/app/b$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiui/app/b$a;->c()Lmiui/app/b;

    move-result-object p0

    return-object p0
.end method
