.class public Lcom/android/camera/features/gif/GifViewPresenter;
.super Ljava/lang/Object;
.source "GifViewPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;


# static fields
.field public static final GIF_EDIT_SHOW:I = 0x12f

.field public static final Gif_EDIT_HIDE:I = 0xca

.field public static final TAG:Ljava/lang/String; = "MimojiFragmentGifEdit"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mEtFakeGifWords:Lcom/android/camera/features/gif/GifFakeEditText;

.field private mEtGifWords:Lcom/android/camera/features/gif/GifEditText;

.field private mFlEtContainer:Landroid/widget/FrameLayout;

.field private mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

.field public mIsAccelerateOpen:Z

.field public mIsClearBgOpen:Z

.field public mIsReverseOpen:Z

.field private mIsShowClearDrawable:Z

.field private mIvClear:Landroid/widget/ImageView;

.field private mLlAccelerate:Landroid/widget/LinearLayout;

.field private mLlAccelerate2:Landroid/widget/LinearLayout;

.field private mLlClearBg:Landroid/widget/LinearLayout;

.field private mLlClearBgOut:Landroid/widget/LinearLayout;

.field private mLlReverse:Landroid/widget/LinearLayout;

.field private mLlReverse2:Landroid/widget/LinearLayout;

.field private mLlThreeButton:Landroid/widget/LinearLayout;

.field private mLlTwoButton:Landroid/widget/LinearLayout;

.field private mRlEtContainer:Landroid/widget/RelativeLayout;

.field private mRlGifBottomOperate:Landroid/widget/RelativeLayout;

.field private mRlStroke:Landroid/widget/RelativeLayout;

.field private mTvGifWords:Lcom/android/camera/features/gif/DragTextView;

.field private rlGifConsume:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/gif/GifViewPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsShowClearDrawable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/features/gif/GifViewPresenter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsShowClearDrawable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/features/gif/GifViewPresenter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifViewPresenter;->setClearIconVisible(Z)V

    return-void
.end method

.method private clearEditState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtGifWords:Lcom/android/camera/features/gif/GifEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtFakeGifWords:Lcom/android/camera/features/gif/GifFakeEditText;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private doAccelerateGif()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->EnableSpeedFilter(Z)V

    return-void
.end method

.method private doClearGifBackgroud()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->EnableVideoSegmentFilter(Z)V

    return-void
.end method

.method private doReverseGif()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->EnableReverseFilter(Z)V

    return-void
.end method

.method private gifBack()V
    .locals 0

    return-void
.end method

.method private initGifView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901c6

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901c1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlEtContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901c4

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->rlGifConsume:Landroid/widget/RelativeLayout;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->rlGifConsume:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f090139

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    const v0, 0x7f09013a

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f090137

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    const v0, 0x7f090138

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBgOut:Landroid/widget/LinearLayout;

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090132

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090133

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013e

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013f

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fc

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIvClear:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ba

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/gif/GifEditText;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtGifWords:Lcom/android/camera/features/gif/GifEditText;

    const v0, 0x7f0900b9

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/gif/GifFakeEditText;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtFakeGifWords:Lcom/android/camera/features/gif/GifFakeEditText;

    .line 23
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtGifWords:Lcom/android/camera/features/gif/GifEditText;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifEditText;->addTextChangedListener(Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;)V

    const v0, 0x7f0900ca

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mFlEtContainer:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 27
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mFlEtContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090140

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlStroke:Landroid/widget/RelativeLayout;

    .line 29
    iget-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtGifWords:Lcom/android/camera/features/gif/GifEditText;

    new-instance v0, Lcom/android/camera/features/gif/GifViewPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/GifViewPresenter$1;-><init>(Lcom/android/camera/features/gif/GifViewPresenter;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    return-void
.end method

.method private setClearIconVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIvClear:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Lcom/android/camera/features/gif/GifEditText$TextJudge;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setSubtitleTextString(Lcom/android/camera/features/gif/GifEditText$TextJudge;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtGifWords:Lcom/android/camera/features/gif/GifEditText;

    if-eqz p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mEtFakeGifWords:Lcom/android/camera/features/gif/GifFakeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public gifConfirmVideo2Gif()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->startVideo2Gif()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifViewPresenter;->initGifView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->doReverseGif()V

    goto :goto_0

    .line 5
    :sswitch_1
    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->doClearGifBackgroud()V

    goto :goto_0

    .line 8
    :sswitch_2
    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->doAccelerateGif()V

    goto :goto_0

    .line 11
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->clearEditState()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fc -> :sswitch_3
        0x7f090132 -> :sswitch_2
        0x7f090133 -> :sswitch_2
        0x7f090137 -> :sswitch_1
        0x7f09013e -> :sswitch_0
        0x7f09013f -> :sswitch_0
    .end sparse-switch
.end method

.method public operateGifPannelVisibleState(I)V
    .locals 1

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setGifMediaPlayer(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    return-void
.end method

.method public updateOperateState()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    const v1, 0x7f0800ed

    const v2, 0x7f0800ec

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/mi/config/b;->K()Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->h3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :goto_2
    iget-object p0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
