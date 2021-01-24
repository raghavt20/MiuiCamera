.class Lcom/android/camera/fragment/manually/FragmentManually$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "FragmentManually.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentManually;->hideManuallyParent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentManually;

.field final synthetic val$animatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/manually/FragmentManually;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    iput-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->val$animatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private fireEndAction()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->access$002(Lcom/android/camera/fragment/manually/FragmentManually;Z)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-static {v0}, Lcom/android/camera/fragment/manually/FragmentManually;->access$100(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->val$animatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually$1;->fireEndAction()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually$1;->fireEndAction()V

    return-void
.end method
