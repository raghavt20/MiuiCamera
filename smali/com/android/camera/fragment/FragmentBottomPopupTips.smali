.class public Lcom/android/camera/fragment/FragmentBottomPopupTips;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomPopupTips$TipImageType;
    }
.end annotation


# static fields
.field private static final ANIM_DELAY_SHOW:I = 0x3

.field private static final ANIM_DIRECT_HIDE:I = 0x1

.field private static final ANIM_DIRECT_SHOW:I = 0x0

.field private static final ANIM_HIDE:I = 0x4

.field private static final ANIM_SHOW:I = 0x2

.field private static final CALL_TYPE_NOTIFY:I = 0x1

.field private static final CALL_TYPE_PROVIDE:I = 0x0

.field private static final CENTER_TIP_IMAGE_SPEED:I = 0x21

.field private static final CENTER_TIP_IMAGE_VIDEO_BEAUTY:I = 0x23

.field public static final FRAGMENT_INFO:I = 0xfff2

.field private static final LEFT_TIP_IMAGE_AI_WATERMARK:I = 0x17

.field private static final LEFT_TIP_IMAGE_CLOSE:I = 0x14

.field private static final LEFT_TIP_IMAGE_KALEIDOSCOPE:I = 0x16

.field private static final LEFT_TIP_IMAGE_LIGHTING:I = 0x13

.field private static final LEFT_TIP_IMAGE_STICKER:I = 0x12

.field private static final LEFT_TIP_IMAGE_ULTRA_WIDE:I = 0x15

.field private static final MAX_RED_DOT_TIME:J = 0x5265c00L

.field private static final MSG_HIDE_TIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FragmentBottomPopupTips"

.field private static final TIP_ID_CARD:I = 0x4

.field private static final TIP_IMAGE_INVALID:I = -0x1

.field private static final TIP_IMAGE_STICKER:I = 0x2

.field private static final TIP_MIMOJI:I = 0x22

.field private static final TIP_SHINE:I = 0x3

.field private static final TIP_SWITCH_CAMERA:I = 0x24


# instance fields
.field private INIT_TAG:Z

.field private mBottomTipHeight:I

.field private mCenterRedDot:Landroid/view/View;

.field private mCenterTipImage:Landroid/widget/ImageView;

.field private mCloseType:I

.field private mCurrentTipMessage:Ljava/lang/String;

.field private mCurrentTipType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShowLeftImageIntro:Z

.field private mIsShowLyingDirectHint:Z

.field private mLastTipMessage:Ljava/lang/String;

.field private mLastTipType:I

.field private mLeftImageIntro:Landroid/widget/FrameLayout;

.field private mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

.field private mLeftImageIntroContent:Landroid/widget/TextView;

.field private mLeftImageIntroRadius:I

.field private mLeftImageIntroWidth:I

.field private mLeftTipExtraImage:Landroid/widget/ImageView;

.field private mLeftTipImage:Landroid/widget/ImageView;

.field private mLightingPattern:Landroid/widget/TextView;

.field private mLyingDirectHint:Landroid/widget/TextView;

.field private mMimojiTextview:Landroid/widget/TextView;

.field private mNeedShowIDCardTip:Z

.field private mPortraitSuccessHint:Landroid/view/View;

.field private mQrCodeButton:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mSpeedTipImage:Landroid/view/ViewGroup;

.field private mTipImage:Landroid/widget/ImageView;

.field private mTipMessage:Landroid/widget/TextView;

.field private stringLightingRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->INIT_TAG:Z

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    .line 4
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->setBeautyIntroButtonWidth(Landroid/view/View;I)V

    return-void
.end method

.method private adjustViewBackground(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f08004c

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const v0, 0x7f08004d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private clickLeftTop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showAIWatermark(I)V

    return-void
.end method

.method private closeFilter()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showCloseTip(IZ)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideFilter()V

    :cond_0
    return-void
.end method

.method private closeLight()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showCloseTip(IZ)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideLighting(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage()V

    return-void
.end method

.method private currentIsIDCardShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getLeftImageIntroWide()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 5
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroRadius:I

    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private getTipBottomMargin(I)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xd2

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BokehFNumberController;

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 6
    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const v6, 0x7f07013b

    const/16 v7, 0xa5

    if-ne v5, v7, :cond_3

    .line 7
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 10
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :goto_0
    sub-int/2addr p0, p1

    goto/16 :goto_2

    .line 11
    :cond_2
    sget p1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070211

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v0

    goto/16 :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result v5

    if-lez v5, :cond_4

    .line 14
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result p0

    goto/16 :goto_2

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const v5, 0x7f070011

    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    .line 16
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    add-int/2addr p0, v4

    goto :goto_2

    .line 18
    :cond_5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 19
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->visibleHeight()I

    move-result p0

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    .line 21
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BokehFNumberController;->isFNumberVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BokehFNumberController;->getBokehFButtonHeight()I

    move-result p0

    goto :goto_2

    .line 23
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_9

    .line 24
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 26
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    .line 27
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 29
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 30
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    :goto_2
    return p0
.end method

.method private hideAllTipImage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTipImage()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideLeftTipImage()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLeftImageIntro()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideSpeedTipImage()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideZoomTipImage(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideCenterTipImage()V

    return-void
.end method

.method private hideTip(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideZoomTipImage(I)V
    .locals 0

    const/16 p0, 0xa5

    if-eq p1, p0, :cond_2

    const/16 p0, 0xa6

    if-eq p1, p0, :cond_0

    const/16 p0, 0xad

    if-eq p1, p0, :cond_2

    const/16 p0, 0xae

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb7

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->Fd()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    :pswitch_0
    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez p0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xb6

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_3

    const/4 p1, 0x2

    .line 6
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ignoreClick()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isPortraitSuccessHintVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onLeftImageClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/16 v1, 0x21

    if-eq p1, v1, :cond_4

    const/16 v1, 0x22

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->ke()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showKaleidoscope()V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_5

    .line 6
    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez p0, :cond_5

    const/16 p0, 0xcd

    .line 7
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    .line 8
    :pswitch_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->closeLight()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->closeFilter()V

    goto :goto_0

    :pswitch_3
    if-eqz v0, :cond_5

    const/16 p0, 0xcb

    .line 11
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb8

    if-ne p1, v0, :cond_5

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result p1

    if-ne p1, v3, :cond_3

    const/4 p1, 0x3

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showMimojiPanel(I)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showMimojiPanel(I)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    const-string p1, "mi_live_click_speed"

    .line 17
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showLiveSpeed()V

    .line 19
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clickLeftTop()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private reConfigBottomTipOf960FPS()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFPS960(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    const v1, 0x7f0f010c

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    return-void
.end method

.method private reConfigBottomTipOfMacro()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method private reConfigBottomTipOfMimoji()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->getMimojiPannelState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    const v1, 0x7f0f01af

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateMimojiBottomTipImage()V

    :cond_2
    return-void
.end method

.method private reIntTipViewMarginBottom(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getTipBottomMargin(I)I

    move-result p0

    .line 3
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p2, p0, :cond_0

    .line 4
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setBeautyIntroButtonWidth(Landroid/view/View;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 2
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showAIWatermark(I)V
    .locals 0

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideAIWatermark()V

    :cond_1
    return-void
.end method

.method private showBeauty(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideShine()V

    :cond_0
    return-void
.end method

.method private showKaleidoscope()V
    .locals 1

    const-string p0, "mi_live_click_kaleidoscope"

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackKaleidoscopeClick(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    if-eqz p0, :cond_0

    const/16 v0, 0xa6

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchKaleidoscopeActionMenu(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/16 v0, 0x12

    .line 6
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    return-void
.end method

.method private showLiveSpeed()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    if-eqz p0, :cond_0

    const/16 v0, 0xa5

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchLiveActionMenu(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/16 v0, 0xd

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    return-void
.end method

.method private showLiveSticker()V
    .locals 1

    const-string p0, "live_sticker"

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    if-eqz p0, :cond_0

    const/16 v0, 0xa4

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchLiveActionMenu(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/16 v0, 0xc

    .line 6
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_2
    return-void
.end method

.method private startLeftImageIntroAnim(I)V
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directShowOrHideLeftTipImage(Z)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 4
    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroWidth:I

    aput v3, v2, p1

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroRadius:I

    mul-int/2addr v3, v1

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    .line 7
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    new-instance v4, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    .line 9
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    .line 11
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, p1

    aput-object v3, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v1, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$7;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->addPopupUltraWideIntroShowTimes()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateCenterTipImage(IILjava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0x12

    const/16 v5, 0xb8

    const/4 v6, -0x1

    const/16 v7, 0xa2

    const/16 v8, 0x23

    const/16 v9, 0x22

    const/4 v10, 0x1

    if-eq v1, v7, :cond_6

    const/16 v7, 0xae

    if-eq v1, v7, :cond_5

    const/16 v7, 0xb1

    if-eq v1, v7, :cond_2

    if-eq v1, v5, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ActivityBase;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v11

    .line 3
    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4
    iget-boolean v7, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->INIT_TAG:Z

    if-nez v7, :cond_3

    .line 5
    iput-boolean v10, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->INIT_TAG:Z

    .line 6
    invoke-virtual {v11}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiCloseState()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v11}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreview()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 8
    invoke-virtual {v11}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ActivityBase;

    .line 10
    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 11
    iget-boolean v7, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->INIT_TAG:Z

    if-nez v7, :cond_3

    .line 12
    iput-boolean v10, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->INIT_TAG:Z

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setCurrentMimojiCloseState()V

    :cond_3
    :goto_0
    move v7, v9

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiPreview()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->getMimojiPannelState()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_0

    :cond_5
    move v7, v4

    goto :goto_3

    .line 15
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v11

    const/16 v12, 0xc2

    invoke-virtual {v11, v12}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v11

    check-cast v11, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v11, :cond_7

    .line 16
    invoke-interface {v11}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v11

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoBeautyOpen(I)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v11, :cond_8

    goto :goto_1

    .line 18
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoBeautyOpen(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_1
    move v7, v8

    goto :goto_3

    :cond_8
    :goto_2
    move v7, v6

    .line 19
    :goto_3
    iget-object v11, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    const v12, 0x7f090136

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 20
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-eq v7, v6, :cond_13

    const v15, 0x7f080171

    const/16 v6, 0x51

    if-eq v7, v4, :cond_e

    if-eq v7, v9, :cond_b

    if-eq v7, v8, :cond_9

    move v4, v10

    move v15, v14

    goto/16 :goto_7

    :cond_9
    const v4, 0x7f080175

    .line 21
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07013b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 24
    iget-object v5, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 25
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    move v15, v4

    :goto_4
    move v4, v10

    goto/16 :goto_7

    .line 26
    :cond_b
    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v4, v5, :cond_c

    .line 27
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 28
    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v4

    :goto_5
    const-string v5, "add_state"

    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "close_state"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    const v15, 0x7f080170

    .line 30
    :goto_6
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 31
    :cond_e
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSticker()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v15, 0x7f080170

    .line 33
    :cond_f
    iget-object v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz v4, :cond_11

    .line 34
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTTLiveStickerNeedRedDot()Z

    move-result v4

    .line 35
    invoke-static {}, Lcom/android/camera/CameraSettings;->getLiveStickerRedDotTime()J

    move-result-wide v16

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v5, v16, v20

    if-lez v5, :cond_10

    sub-long v18, v18, v16

    const-wide/32 v16, 0x5265c00

    cmp-long v5, v18, v16

    if-gez v5, :cond_11

    :cond_10
    if-eqz v4, :cond_11

    .line 37
    iget-object v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_11
    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v4, :cond_12

    .line 39
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    :cond_12
    const v4, 0x800053

    .line 40
    iput v4, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 41
    :cond_13
    iget-object v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz v4, :cond_14

    .line 42
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    move v4, v14

    move v15, v4

    :goto_7
    if-lez v15, :cond_15

    .line 43
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 44
    iget-object v5, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    :cond_15
    iget-object v5, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v5}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

    .line 46
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 47
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_16

    return-void

    :cond_16
    if-eqz v4, :cond_18

    if-ne v7, v8, :cond_17

    .line 48
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_8

    .line 49
    :cond_17
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v5, v5

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 50
    :cond_18
    :goto_8
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    const/4 v5, 0x2

    if-nez v3, :cond_1a

    if-eqz v4, :cond_19

    goto :goto_a

    :cond_19
    :goto_9
    move v14, v10

    goto :goto_a

    :cond_1a
    const/16 v6, 0xa5

    if-eqz v4, :cond_1d

    if-ne v2, v6, :cond_1c

    .line 51
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_a

    :cond_1b
    move v14, v1

    goto :goto_a

    :cond_1c
    move v14, v5

    goto :goto_a

    :cond_1d
    if-eq v2, v6, :cond_19

    .line 52
    iget v2, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v2, v6, :cond_1e

    goto :goto_9

    :cond_1e
    const/4 v2, 0x4

    move v14, v2

    :goto_a
    if-eqz v14, :cond_23

    if-eq v14, v10, :cond_22

    if-eq v14, v5, :cond_21

    if-eq v14, v1, :cond_20

    const/4 v1, 0x4

    if-eq v14, v1, :cond_1f

    goto :goto_b

    .line 53
    :cond_1f
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 54
    :cond_20
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v0, 0x96

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    const/16 v1, 0x96

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 58
    :cond_21
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 59
    :cond_22
    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_b

    .line 60
    :cond_23
    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method private updateImageBgColor(ILandroid/view/View;)V
    .locals 3

    const/16 p0, 0xa2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const v0, 0x7f080032

    if-eqz p0, :cond_1

    const p0, 0x7f08002e

    const v1, 0x7f0802ec

    goto :goto_1

    :cond_1
    const v1, 0x7f0802ed

    move p0, v0

    :goto_1
    const/16 v2, 0xa5

    if-eq p1, v2, :cond_4

    const/16 v1, 0xb8

    if-eq p1, v1, :cond_2

    .line 1
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 2
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p0

    if-eqz p0, :cond_3

    const v0, 0x7f080030

    .line 3
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 4
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method private updateLeftTipExtraImage(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/16 v1, 0xb7

    const/16 v2, 0x22

    const/16 v3, 0x16

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb8

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v6

    if-nez v6, :cond_2

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result p1

    if-ne p1, v5, :cond_2

    move p1, v2

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->ke()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v4

    :goto_1
    const/4 v1, 0x0

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_3

    move v2, v1

    move v3, v5

    move v4, v3

    goto :goto_3

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    const v2, 0x7f080184

    goto :goto_2

    :cond_4
    const v2, 0x7f080183

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->ke()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f080215

    goto :goto_2

    :cond_6
    const v2, 0x7f080214

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    move v4, v1

    move v3, v5

    goto :goto_3

    :cond_8
    move v2, v1

    move v3, v2

    move v4, v5

    .line 12
    :goto_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 13
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_9

    move v6, v1

    goto :goto_4

    :cond_9
    move v6, v5

    :goto_4
    if-nez v6, :cond_a

    return-void

    :cond_a
    if-lez v2, :cond_b

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 15
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_5

    :cond_c
    const/4 p0, 0x0

    .line 16
    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 17
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x3

    const/4 p1, 0x2

    const/4 v2, 0x4

    if-nez p3, :cond_e

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    move v1, v5

    goto :goto_6

    :cond_e
    if-eqz v3, :cond_11

    const/16 v3, 0xa3

    if-ne p2, v3, :cond_10

    .line 18
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_6

    :cond_f
    move v1, p0

    goto :goto_6

    :cond_10
    move v1, p1

    goto :goto_6

    :cond_11
    move v1, v2

    :goto_6
    if-eqz v1, :cond_16

    if-eq v1, v5, :cond_15

    if-eq v1, p1, :cond_14

    if-eq v1, p0, :cond_13

    if-eq v1, v2, :cond_12

    goto :goto_7

    .line 19
    :cond_12
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 20
    :cond_13
    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p1, 0x96

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 24
    :cond_14
    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 25
    :cond_15
    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_7

    .line 26
    :cond_16
    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_7
    return-void
.end method

.method private updateLeftTipImage(IIILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v5

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/config/a;->isSupportUltraWide()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    const/16 v9, 0x22

    const/16 v10, 0x21

    const/16 v11, 0x13

    const/4 v12, -0x1

    const/16 v13, 0xa5

    const/16 v14, 0x15

    if-eq v1, v13, :cond_d

    const/16 v15, 0xa9

    if-eq v1, v15, :cond_b

    const/16 v15, 0xab

    if-eq v1, v15, :cond_7

    const/16 v15, 0xae

    if-eq v1, v15, :cond_6

    const/16 v15, 0xb7

    if-eq v1, v15, :cond_5

    const/16 v15, 0xb8

    if-eq v1, v15, :cond_4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez v4, :cond_f

    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    iget-boolean v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v4, :cond_13

    .line 7
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :pswitch_1
    if-eqz v6, :cond_3

    if-nez v4, :cond_3

    .line 8
    iget-boolean v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v4, :cond_13

    .line 9
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/a;->ke()Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v4, 0x16

    :goto_1
    move v14, v4

    goto/16 :goto_5

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v5

    .line 13
    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v6

    if-nez v6, :cond_f

    if-nez v5, :cond_f

    .line 14
    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v4

    if-nez v4, :cond_f

    move v14, v9

    goto/16 :goto_5

    :cond_5
    move v14, v10

    goto/16 :goto_5

    :cond_6
    if-eqz v6, :cond_f

    if-nez v4, :cond_f

    .line 15
    iget-boolean v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v4, :cond_13

    .line 16
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :cond_7
    if-eqz v5, :cond_f

    if-eqz v4, :cond_9

    if-eq v4, v7, :cond_8

    goto :goto_3

    .line 17
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/a;->_e()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_2

    .line 18
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/a;->Ze()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_2
    move v4, v11

    goto :goto_1

    :cond_a
    :goto_3
    move v4, v12

    goto :goto_1

    :cond_b
    if-nez v4, :cond_f

    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    .line 19
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    .line 20
    :cond_c
    iget-boolean v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v4, :cond_13

    .line 21
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    .line 22
    :cond_d
    :pswitch_2
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_4

    .line 23
    :cond_e
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    :goto_4
    move v14, v12

    goto :goto_5

    :cond_10
    if-eqz v6, :cond_11

    if-nez v4, :cond_11

    .line 24
    iget-boolean v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v4, :cond_12

    .line 25
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :cond_11
    move v14, v12

    .line 26
    :cond_12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v4

    const/16 v5, 0xa3

    if-ne v1, v5, :cond_13

    if-eqz v4, :cond_13

    const/16 v4, 0x17

    goto/16 :goto_1

    :cond_13
    :goto_5
    const/4 v4, 0x2

    if-eq v14, v12, :cond_22

    const/16 v5, 0x12

    if-eq v14, v5, :cond_20

    if-eq v14, v11, :cond_1f

    if-eq v14, v10, :cond_1d

    if-eq v14, v9, :cond_18

    packed-switch v14, :pswitch_data_1

    goto :goto_7

    :pswitch_3
    const v5, 0x7f080016

    :goto_6
    move v9, v7

    move v6, v8

    goto/16 :goto_a

    .line 27
    :pswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/a;->ke()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v5

    if-eqz v5, :cond_14

    const v5, 0x7f080215

    goto :goto_6

    :cond_14
    const v5, 0x7f080214

    goto :goto_6

    :cond_15
    :goto_7
    move v9, v7

    move v5, v8

    move v6, v5

    goto/16 :goto_a

    .line 29
    :pswitch_5
    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v5

    if-eqz v5, :cond_16

    const v6, 0x7f08027a

    goto :goto_8

    :cond_16
    const v6, 0x7f080279

    :goto_8
    if-eqz v5, :cond_17

    const v5, 0x7f0f0047

    goto :goto_9

    :cond_17
    const v5, 0x7f0f0046

    :goto_9
    move v9, v7

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    goto/16 :goto_a

    .line 30
    :cond_18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result v6

    if-nez v6, :cond_1b

    .line 32
    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 33
    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    move-result-object v5

    if-nez v5, :cond_19

    const v5, 0x7f080183

    goto :goto_6

    :cond_19
    const v5, 0x7f080184

    goto :goto_6

    :cond_1a
    move v5, v8

    move v6, v5

    move v9, v6

    move v14, v12

    goto :goto_a

    .line 34
    :cond_1b
    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    move-result-object v5

    if-nez v5, :cond_1c

    const v5, 0x7f080186

    goto :goto_6

    :cond_1c
    const v5, 0x7f080187

    goto :goto_6

    .line 35
    :cond_1d
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const v5, 0x7f08016e

    goto/16 :goto_6

    :cond_1e
    const v5, 0x7f08016d

    goto/16 :goto_6

    :cond_1f
    const v5, 0x7f080145

    const v6, 0x7f0f0035

    move v9, v7

    goto :goto_a

    .line 36
    :cond_20
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSticker()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 37
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const v5, 0x7f080170

    goto/16 :goto_6

    :cond_21
    const v5, 0x7f080171

    goto/16 :goto_6

    :cond_22
    move v5, v8

    move v6, v5

    move v9, v6

    :goto_a
    if-lez v5, :cond_23

    .line 38
    iget-object v10, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_23
    if-lez v6, :cond_24

    .line 39
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 40
    iget-object v5, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    :cond_24
    iget-object v5, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v5}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

    .line 42
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 43
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v14, :cond_25

    return-void

    :cond_25
    if-eqz v9, :cond_26

    .line 44
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v5, v5

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 45
    :cond_26
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    const/4 v5, 0x3

    if-nez v3, :cond_28

    if-eqz v9, :cond_27

    goto :goto_d

    :cond_27
    :goto_b
    move v8, v7

    goto :goto_d

    :cond_28
    if-eqz v9, :cond_2b

    if-ne v2, v13, :cond_2a

    .line 46
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_c

    :cond_29
    move v8, v5

    goto :goto_c

    :cond_2a
    move v8, v4

    .line 47
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLeftImageIntro()V

    goto :goto_d

    :cond_2b
    if-eq v2, v13, :cond_27

    .line 48
    iget v2, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v2, v13, :cond_2c

    goto :goto_b

    :cond_2c
    move v8, v1

    :goto_d
    if-eqz v8, :cond_31

    if-eq v8, v7, :cond_30

    if-eq v8, v4, :cond_2f

    if-eq v8, v5, :cond_2e

    if-eq v8, v1, :cond_2d

    goto :goto_e

    .line 49
    :cond_2d
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 50
    :cond_2e
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v0, 0x96

    .line 51
    invoke-virtual {v1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 54
    :cond_2f
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 55
    :cond_30
    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_e

    .line 56
    :cond_31
    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateLightingPattern(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    const/16 v0, 0xab

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    if-lez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSpeedTipImage(IILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xa1

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0xae

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v2

    goto :goto_2

    .line 1
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->pc()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    move p1, v1

    :goto_2
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_3

    move v4, v0

    move v5, v4

    move v1, v3

    goto :goto_3

    :cond_3
    const v1, 0x7f0b0005

    move v4, v0

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v0

    move v1, v3

    move v4, v1

    .line 2
    :goto_3
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v0

    :goto_4
    if-eqz v6, :cond_6

    .line 4
    iget-object v7, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    if-lez v1, :cond_6

    .line 5
    iget-object v7, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    const/4 v1, 0x2

    if-ne p1, v2, :cond_8

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeedText()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v7, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    const v8, 0x7f0900c6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    const v7, 0x7f09007d

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x7f08016e

    .line 11
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_7
    const v7, 0x7f08016d

    .line 12
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_5
    if-nez v6, :cond_9

    return-void

    :cond_9
    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    .line 13
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v5, v5

    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_6

    .line 14
    :cond_a
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 15
    :goto_6
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    const/4 v2, 0x4

    if-nez p3, :cond_c

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    move v3, v0

    goto :goto_7

    :cond_c
    if-eqz v4, :cond_f

    const/16 v4, 0xa3

    if-ne p2, v4, :cond_e

    .line 16
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_d
    move v3, p1

    goto :goto_7

    :cond_e
    move v3, v1

    goto :goto_7

    :cond_f
    move v3, v2

    :goto_7
    if-eqz v3, :cond_14

    if-eq v3, v0, :cond_13

    if-eq v3, v1, :cond_12

    if-eq v3, p1, :cond_11

    if-eq v3, v2, :cond_10

    goto :goto_8

    .line 17
    :cond_10
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 18
    :cond_11
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x96

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 21
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 22
    :cond_12
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 23
    :cond_13
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_8

    .line 24
    :cond_14
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_8
    return-void
.end method

.method private updateTipImage(IILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x24

    const/16 v1, 0x22

    const/16 v2, 0xb8

    const/4 v3, -0x1

    const/16 v4, 0xa5

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq p1, v4, :cond_7

    const/16 v7, 0xab

    if-eq p1, v7, :cond_6

    const/16 v7, 0xae

    if-eq p1, v7, :cond_4

    const/16 v7, 0xb0

    if-eq p1, v7, :cond_3

    const/16 v7, 0xb1

    if-eq p1, v7, :cond_2

    const/16 v7, 0xb7

    if-eq p1, v7, :cond_1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1
    :pswitch_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCenterTipImage(IILjava/util/List;)V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v7

    if-nez v7, :cond_c

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v1

    goto/16 :goto_2

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getMiLiveSegmentData()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    move v7, v0

    goto :goto_2

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCenterTipImage(IILjava/util/List;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_0

    .line 11
    :cond_4
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_5
    :goto_0
    move v7, v6

    goto :goto_2

    .line 12
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_0

    .line 13
    :cond_7
    :pswitch_2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_1

    .line 14
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_1

    .line 15
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_1

    .line 16
    :cond_a
    iget-boolean v7, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNeedShowIDCardTip:Z

    if-eqz v7, :cond_b

    move v7, v5

    goto :goto_2

    .line 17
    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_0

    :cond_c
    :goto_1
    move v7, v3

    :goto_2
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v7, v3, :cond_13

    if-eq v7, v1, :cond_11

    if-eq v7, v0, :cond_10

    if-eq v7, v8, :cond_f

    if-eq v7, v6, :cond_e

    if-eq v7, v5, :cond_d

    move v2, v9

    move v0, v10

    move v1, v0

    goto :goto_4

    :cond_d
    const v0, 0x7f08029e

    goto :goto_3

    .line 18
    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getBottomEntryRes(I)I

    move-result v0

    const v1, 0x7f0f0006

    move v2, v9

    goto :goto_4

    :cond_f
    const v0, 0x7f0800c6

    :goto_3
    move v2, v9

    move v1, v10

    goto :goto_4

    :cond_10
    const v0, 0x7f08014f

    goto :goto_3

    .line 19
    :cond_11
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v0, v2, :cond_12

    const v0, 0x7f080185

    goto :goto_3

    .line 20
    :cond_12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getBottomEntryRes(I)I

    move-result v0

    goto :goto_3

    :cond_13
    move v0, v10

    move v1, v0

    move v2, v1

    :goto_4
    if-lez v0, :cond_14

    .line 21
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_14
    if-lez v1, :cond_15

    .line 22
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    :cond_15
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v7, :cond_16

    return-void

    :cond_16
    if-eqz v2, :cond_18

    if-ne v7, v5, :cond_17

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_5

    .line 28
    :cond_17
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 29
    :cond_18
    :goto_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez p3, :cond_1a

    if-eqz v2, :cond_19

    goto :goto_7

    :cond_19
    :goto_6
    move v10, v9

    goto :goto_7

    :cond_1a
    if-eqz v2, :cond_1d

    if-ne p2, v4, :cond_1c

    .line 30
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_7

    :cond_1b
    move v10, v6

    goto :goto_7

    :cond_1c
    move v10, v8

    goto :goto_7

    :cond_1d
    if-eq p2, v4, :cond_19

    .line 31
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v4, :cond_1e

    goto :goto_6

    :cond_1e
    move v10, v5

    :goto_7
    if-eqz v10, :cond_23

    if-eq v10, v9, :cond_22

    if-eq v10, v8, :cond_21

    if-eq v10, v6, :cond_20

    if-eq v10, v5, :cond_1f

    goto :goto_8

    .line 32
    :cond_1f
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 33
    :cond_20
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x96

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 37
    :cond_21
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 38
    :cond_22
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_8

    .line 39
    :cond_23
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public containTips(I)Z
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public directHideCenterTipImage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public directHideLeftImageIntro()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public directHideLyingDirectHint()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public directHideTipImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public directShowLeftImageIntro()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowUltraWideIntro()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    return-void
.end method

.method public directShowOrHideLeftTipImage(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public directlyHideTips()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(ILjava/lang/String;I)V

    .line 12
    :cond_2
    iput v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return-void
.end method

.method public directlyHideTips(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->containTips(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method public directlyHideTipsForce()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return-void
.end method

.method public directlyShowTips(II)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    .line 7
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public getCurrentBottomTipMsg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentBottomTipType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff2

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0017

    return p0
.end method

.method public hideCenterTipImage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideLeftTipImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public hideMimojiTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideQrCodeTip()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  hideQrCodeTip  time  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public hideSpeedTipImage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public hideTipImage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    const v0, 0x7f09013d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800055

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v0, 0x7f090138

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800053

    .line 7
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const v2, 0x7f0801af

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090137

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const v2, 0x7f080183

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013c

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090136

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    sget-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x51

    .line 19
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    const v1, 0x7f090135

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090134

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    const v0, 0x7f090139

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013a

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroRadius:I

    .line 27
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getLeftImageIntroWide()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroWidth:I

    const v0, 0x7f090140

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const v0, 0x7f09013f

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    const v0, 0x7f090021

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const v0, 0x7f090141

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    const v0, 0x7f0900a8

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    invoke-static {}, Lcom/android/camera/Util;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    .line 39
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;I)V

    .line 40
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    .line 41
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 42
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/Util;->startScreenSlideAlphaInAnimation(Landroid/view/View;)V

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701d7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    return-void
.end method

.method public isLightingHintVisible()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VerticalProtocol;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VerticalProtocol;->isAnyViewVisible()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isPortraitHintVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQRTipVisible()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTipShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigBottomTipOfUltraWide()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigBottomTipOfMacro()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigBottomTipOf960FPS()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigBottomTipOfMimoji()V

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftRightTipImageForCinematic(Z)V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    .line 4
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    const/4 p1, 0x1

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipExtraImage(IILjava/util/List;)V

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateSpeedTipImage(IILjava/util/List;)V

    .line 8
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCenterTipImage(IILjava/util/List;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    :cond_1
    return v2

    .line 2
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    if-ne p1, v1, :cond_3

    return v2

    .line 3
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

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

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0xb8

    const/4 v3, 0x2

    const/16 v4, 0x22

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    .line 7
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "attr_asd_detect_tip"

    const-string v0, "qrcode_detected"

    .line 8
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_common_tips"

    .line 9
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc3

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    .line 12
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showQRCodeResult()V

    goto/16 :goto_2

    .line 13
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->setPopupTipBeautyIntroClicked()V

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v6, 0xa0

    .line 17
    invoke-virtual {v1, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xb3

    .line 19
    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const/4 v8, 0x4

    if-eq p1, v3, :cond_c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    if-eq p1, v8, :cond_a

    if-eq p1, v4, :cond_6

    const/16 v1, 0x24

    if-eq p1, v1, :cond_3

    goto/16 :goto_2

    .line 20
    :cond_3
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p1, 0xb7

    if-ne p0, p1, :cond_16

    .line 21
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    .line 22
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const-string p0, "mi_live_switch_camera"

    .line 23
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    if-eqz v6, :cond_16

    new-array p0, v5, [Landroid/view/View;

    .line 24
    invoke-interface {v6, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeCamera([Landroid/view/View;)V

    goto/16 :goto_2

    .line 25
    :cond_6
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p0, v2, :cond_16

    .line 26
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 27
    :cond_7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_8

    return-void

    .line 28
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "mimoji_click_create_switch"

    const-string p1, "create"

    .line 29
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v6, :cond_16

    new-array p0, v5, [Landroid/view/View;

    .line 30
    invoke-interface {v6, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeCamera([Landroid/view/View;)V

    goto/16 :goto_2

    .line 31
    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    .line 32
    invoke-virtual {p0, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const/16 p1, 0xb6

    .line 33
    invoke-interface {p0, p1, v5}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeModeByNewMode(II)V

    .line 34
    invoke-static {}, Lcom/android/camera/storage/Storage;->createHideFile()Z

    .line 35
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoIDCard()V

    goto/16 :goto_2

    .line 36
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    const/4 p1, 0x0

    const-string v0, "beauty_show_bottom_button"

    .line 37
    invoke-static {v0, p1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showBeauty(I)V

    goto/16 :goto_2

    .line 39
    :cond_c
    invoke-interface {v1, v8}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0x15

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/android/camera/CameraSettings;->setPopupUltraWideIntroClicked()V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLeftImageIntro()V

    .line 43
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onLeftImageClick(Landroid/view/View;)V

    goto/16 :goto_2

    .line 44
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_e

    if-eq v0, v4, :cond_d

    goto :goto_0

    .line 45
    :cond_d
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showMimojiPanel(I)V

    goto :goto_0

    .line 46
    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->ke()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 48
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showKaleidoscope()V

    .line 49
    :cond_f
    :goto_0
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_10

    .line 50
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    const-string v0, "live_speed"

    .line 51
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showLiveSpeed()V

    .line 53
    :cond_10
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_14

    if-eq p1, v4, :cond_12

    const/16 v0, 0x23

    if-eq p1, v0, :cond_11

    goto :goto_1

    .line 54
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showOrHideVideoBeautyPanel()V

    goto :goto_1

    .line 55
    :cond_12
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v2, :cond_13

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showMimojiPanel(I)V

    goto :goto_1

    .line 57
    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showOrHideMimojiPanel()V

    goto :goto_1

    .line 58
    :cond_14
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 59
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showLiveSticker()V

    .line 60
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz p1, :cond_15

    const/16 v0, 0x8

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setTTLiveStickerNeedRedDot(Z)V

    .line 63
    :cond_15
    :goto_1
    :pswitch_8
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clickLeftTop()V

    :cond_16
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090135
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    .line 1
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v2, p1, :cond_1

    .line 2
    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    .line 3
    :cond_1
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result v3

    if-nez v3, :cond_2

    if-ne p3, v0, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    :cond_3
    const/4 p3, 0x4

    .line 8
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onBackEvent(I)Z

    .line 9
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipBottomMargin(IZ)V

    .line 10
    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    .line 11
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    .line 12
    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipExtraImage(IILjava/util/List;)V

    .line 13
    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateSpeedTipImage(IILjava/util/List;)V

    .line 14
    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCenterTipImage(IILjava/util/List;)V

    .line 15
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftRightTipImageForCinematic(Z)V

    :cond_4
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getFragmentInto()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    .line 2
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->currentIsIDCardShow()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x23

    if-eq p2, v0, :cond_3

    .line 11
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLightingPattern(ZZ)V

    return-void
.end method

.method public reConfigBottomTipOfUltraWide()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/16 v1, 0xa5

    const/16 v2, 0xa3

    const/16 v3, 0xa2

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v2, v0, :cond_1

    if-eq v1, v0, :cond_1

    if-eq v3, v0, :cond_1

    const/16 v1, 0xa9

    if-eq v1, v0, :cond_1

    const/16 v1, 0xae

    if-eq v1, v0, :cond_1

    const/16 v1, 0xa1

    if-eq v1, v0, :cond_1

    const/16 v1, 0xb7

    if-eq v1, v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v2, v0, :cond_1

    if-eq v1, v0, :cond_1

    if-eq v3, v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    .line 5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 7
    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 8
    :cond_4
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_5

    .line 9
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v1, "1.0"

    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->getZoomRatioHistory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->toFloat(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    return-void

    .line 11
    :cond_5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 12
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 15
    :cond_7
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/16 v1, 0xd

    if-eqz v0, :cond_8

    .line 16
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->shouldShowUltraWideSatTip(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0f046f

    const/4 v2, 0x2

    .line 17
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    goto :goto_0

    :cond_8
    const v0, 0x7f0f046e

    const/4 v2, 0x4

    .line 18
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    :cond_9
    :goto_0
    return-void
.end method

.method public reConfigQrCodeTip()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_9

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xaf

    .line 3
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isTipShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    const v3, 0x7f0f0470

    .line 5
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    const v3, 0x7f0f0471

    .line 6
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()F

    move-result v3

    invoke-static {v3}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 8
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    .line 9
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v4, :cond_4

    .line 10
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    .line 11
    :goto_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xc2

    .line 12
    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v5, :cond_5

    .line 13
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v5, v1

    .line 14
    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xac

    .line 15
    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 16
    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getCurrentAiSceneLevel()I

    move-result v7

    .line 17
    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getAlertIsShow()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    if-eq v7, v6, :cond_6

    const/16 v6, 0x17

    if-eq v7, v6, :cond_6

    const/16 v6, 0x18

    if-eq v7, v6, :cond_6

    const/16 v6, 0x23

    if-eq v7, v6, :cond_6

    const/16 v6, -0x23

    if-ne v7, v6, :cond_7

    :cond_6
    move v6, v2

    goto :goto_5

    :cond_7
    move v6, v1

    .line 18
    :goto_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v7

    if-nez v7, :cond_8

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v7

    if-nez v7, :cond_8

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v3, :cond_8

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    if-nez v0, :cond_8

    if-eqz v6, :cond_9

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    return v2

    :cond_9
    return v1
.end method

.method public reInitTipImage()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigBottomTipOfMacro()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigBottomTipOf960FPS()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xaf

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "pref_camera_first_ultra_wide_use_hint_shown_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowUltraWideIntro()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    :cond_0
    return-void
.end method

.method public selectBeautyTipImage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const p1, 0x7f0800c4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const p1, 0x7f0800c2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setLightingPattern(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :pswitch_1
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :pswitch_2
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :pswitch_3
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :pswitch_4
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :pswitch_5
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :pswitch_6
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_7
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_8
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v0

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_9
    const p1, 0x7f0f0131

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    :pswitch_a
    const p1, 0x7f0f0132

    .line 4
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    :pswitch_b
    const p1, 0x7f0f0130

    .line 5
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    :pswitch_c
    const p1, 0x7f0f0137

    .line 6
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    :pswitch_d
    const p1, 0x7f0f0136

    .line 7
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    :pswitch_e
    const p1, 0x7f0f0133

    .line 8
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    :pswitch_f
    const p1, 0x7f0f0138

    .line 9
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    :pswitch_10
    const p1, 0x7f0f0134

    .line 10
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    goto :goto_2

    .line 11
    :pswitch_11
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    .line 12
    :goto_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    if-ne p1, v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    :cond_1
    const/16 p1, 0xc

    .line 14
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideTipImage()V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->stringLightingRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    if-nez p1, :cond_2

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLightingPattern:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public setPortraitHintVisible(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isLightingHintVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 3
    :goto_0
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    if-nez p1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showCloseTip(IZ)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    .line 4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showOrHideCloseImage(Z)V

    return-void
.end method

.method public showIDCardTip(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNeedShowIDCardTip:Z

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->currentIsIDCardShow()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    return-void
.end method

.method public showMimojiPanel(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideMimoji()V

    :cond_0
    return-void
.end method

.method public showMimojiTip()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 5
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0xbb8

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mMimojiTextview:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public showOrHideCloseImage(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f080175

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0f0034

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public showOrHideMimojiPanel()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMimojiPannelState(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideMimoji()V

    :cond_0
    return-void
.end method

.method public showOrHideVideoBeautyPanel()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 6
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    .line 9
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->expandShineBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    return-void
.end method

.method public showQrCodeTip()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigQrCodeTip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public showTips(III)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(ILjava/lang/String;I)V

    return-void
.end method

.method public showTips(IIII)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;III)V

    int-to-long p0, p4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTips(ILjava/lang/String;I)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "current fragment is not resumed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x1

    const/16 v2, 0xab

    if-ne p1, v0, :cond_2

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v0, v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_4

    return-void

    :cond_4
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isLightingHintVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 10
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitSuccessHintVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 12
    :cond_7
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    const v2, 0x7f0f01ae

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 15
    :cond_8
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    .line 16
    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    new-instance p2, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, p2, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    const/4 p1, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p2, 0x1770

    goto :goto_1

    :pswitch_1
    const/16 p2, 0xbb8

    goto :goto_1

    :pswitch_2
    const/16 p2, 0x7d0

    goto :goto_1

    :pswitch_3
    const/16 p2, 0x3a98

    goto :goto_1

    :pswitch_4
    const/16 p2, 0x1388

    goto :goto_1

    :pswitch_5
    const/16 p2, 0x3e8

    goto :goto_1

    :goto_0
    :pswitch_6
    move p2, p1

    .line 25
    :goto_1
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-lez p2, :cond_a

    .line 26
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 27
    :cond_a
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xa3

    if-ne p0, p2, :cond_b

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p2, 0xc3

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p0, :cond_b

    .line 30
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showTipsWithOrientation(IIIII)V
    .locals 1

    if-eqz p5, :cond_2

    const/4 v0, 0x1

    if-eq p5, v0, :cond_1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p5

    if-nez p5, :cond_3

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(IIII)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(IIII)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xaf

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    return-void
.end method

.method public updateLeftRightTipImageForCinematic(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 3
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_1
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0701c9

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_2
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 13
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateLeftTipImage()V
    .locals 3

    .line 57
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    return-void
.end method

.method public updateLyingDirectHint(ZZ)V
    .locals 6

    if-nez p2, :cond_0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_5

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb6

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isSlideVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 8
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xc2

    .line 9
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v4, :cond_3

    .line 10
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 11
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isTipShowing()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotation(F)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    iget p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectShow(I)V

    goto :goto_3

    .line 17
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public updateMimojiBottomTipImage()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipExtraImage(IILjava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    return-void
.end method

.method public updateTipBottomMargin(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    int-to-float v1, p1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz p2, :cond_2

    int-to-float p2, p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 4
    new-instance p2, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-direct {p2, p0, p1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 5
    invoke-virtual {p2, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-direct {p2, p0, p1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Ld/h/a/c;

    invoke-direct {p0}, Ld/h/a/c;-><init>()V

    .line 9
    invoke-virtual {p2, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->directSetResult(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public updateTipImage()V
    .locals 2

    .line 40
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    return-void
.end method
