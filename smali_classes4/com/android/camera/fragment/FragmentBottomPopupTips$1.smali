.class Lcom/android/camera/fragment/FragmentBottomPopupTips$1;
.super Landroid/os/Handler;
.source "FragmentBottomPopupTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$000(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget p1, p1, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne p1, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xc3

    .line 5
    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result p1

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .line 8
    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$200(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(ILjava/lang/String;I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result p1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEyeLightOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(ILjava/lang/String;I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result p1

    const/16 v2, 0x12

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget p1, p1, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget p1, p1, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLyingDirectHint(ZZ)V

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p0, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$102(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I

    :goto_1
    return-void
.end method
