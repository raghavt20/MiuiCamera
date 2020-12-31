.class public Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentActionMimoji.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MIMOJI_AVATAR:I = 0x1

.field public static final MIMOJI_UNCLICKABLE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMenuParent:Landroid/widget/LinearLayout;

.field private mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff7

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0032

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09013c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->reInit(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf8

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_3

    const/16 v1, 0x65

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setAvatarPanelState(I)V

    .line 9
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->reInit(I)V

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setAvatarPanelState(I)V

    .line 12
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->reInit(I)V

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    :cond_4
    :goto_0
    return-void
.end method

.method public reInit(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb8

    if-ne p1, v2, :cond_2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    new-array p1, v2, [Ljava/lang/String;

    const v2, 0x7f1001ea

    .line 3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const v1, 0x7f1001e9

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->setTitle(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/String;

    const v0, 0x7f10049f

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->setTitle(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/String;

    const v0, 0x7f10007a

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->setTitle(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/String;

    const v0, 0x7f1001cf

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->setTitle(I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public varargs setTitle(I[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v2

    .line 5
    :cond_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 6
    :goto_0
    array-length v3, p2

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0020

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ColorActivateTextView;

    const v4, -0x66000001

    .line 9
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    const v4, -0xff5701

    .line 10
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 11
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 14
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ColorActivateTextView;

    .line 15
    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v3, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 18
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorActivateTextView;

    const/16 v0, 0x64

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mMenuParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorActivateTextView;

    const/16 v2, 0x65

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getAvatarPanelState()I

    move-result p0

    if-ne p0, v0, :cond_4

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v1, p2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_5
    :goto_2
    return-void
.end method
