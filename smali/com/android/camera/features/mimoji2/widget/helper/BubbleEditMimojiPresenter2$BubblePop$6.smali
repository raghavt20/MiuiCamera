.class Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleEditMimojiPresenter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->hideBubbleAni()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$800(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$1000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v3, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$800(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v0, -0x1

    aput v0, p1, v2

    .line 6
    aput v0, p1, v4

    const/4 v1, 0x2

    .line 7
    aput v0, p1, v1

    .line 8
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p0, v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$902(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$800(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$800(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p0, v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$902(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z

    return-void
.end method
