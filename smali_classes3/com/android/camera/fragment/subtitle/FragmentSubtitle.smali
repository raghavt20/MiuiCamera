.class public Lcom/android/camera/fragment/subtitle/FragmentSubtitle;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentSubtitle.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;
.implements Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    }
.end annotation


# static fields
.field private static final SUBTITLE_CHECK_NETWORK:I = 0x66

.field private static final SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

.field private static final SUBTITLE_FLIP_ROTATE:I

.field private static final SUBTITLE_LANDSCAPE_OFFSET:I

.field private static final SUBTITLE_NO_SPEAK_TIP:I = 0x65

.field private static final SUBTITLE_SHOW_TIME_END:I = 0x64

.field private static final SUBTITLE_VERTICAL_OFFSET:I

.field private static final TAG:Ljava/lang/String; = "FragmentSubtitle"


# instance fields
.field private isNetWorkAvailable:Z

.field private isRecording:Z

.field private mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

.field private mFlipShow:Landroid/widget/TextView;

.field private mLeftShow:Landroid/widget/TextView;

.field private mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

.field private mRightShow:Landroid/widget/TextView;

.field private mSwViewFilp:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mVerticalShow:Landroid/widget/TextView;

.field private mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

.field private subtitleHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private subtitleView:Landroid/view/View;

.field private top:I

.field private topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field private verticalViewHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x433c5c29    # 188.36f

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET:I

    const v0, 0x4365170a    # 229.09f

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    const v0, 0x41d1999a    # 26.2f

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    const/high16 v0, 0x42000000    # 32.0f

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_FLIP_ROTATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mFlipShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    return p0
.end method

.method private setAnyViewGone()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mFlipShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewFilp:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewFilp:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    return-void
.end method

.method private updateLightingRelativeView()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->verticalViewHeight:I

    sget v3, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 11
    :cond_0
    sget v1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    goto/16 :goto_3

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 19
    :cond_2
    sget v2, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    goto :goto_3

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isFlipRotate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 25
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isTopToastShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26
    iget v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    sget v3, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_FLIP_ROTATE:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 27
    :cond_4
    iget v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    :goto_2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mFlipShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewFilp:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewFilp:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    goto :goto_3

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    iget v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    sget v3, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 33
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public checkNetWorkStatus()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "FragmentSubtitle"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    const-string p0, "checkNetWorkStatus: netWork is available "

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    const-string v0, "checkNetWorkStatus: netWork is unavailable"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$2;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff7

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0050

    return p0
.end method

.method public getSubtitleContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleSubtitleRecordingPause()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "FragmentSubtitle"

    const-string v1, "handleSubtitleRecordingPause: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->pauseRecording()V

    return-void
.end method

.method public handleSubtitleRecordingResume()V
    .locals 2

    const-string v0, "FragmentSubtitle"

    const-string v1, "handleSubtitleRecordingResume: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->resumeRecording()V

    return-void
.end method

.method public handleSubtitleRecordingStart()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->checkNetWorkStatus()V

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackSubtitleRecordingStart()V

    const-string v0, "FragmentSubtitle"

    const-string v1, "handleSubtitleRecordingStart: "

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v1, 0x8

    const v2, 0x7f0f040d

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSubtitleHint(II)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    .line 8
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->startRecording()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackWithoutNetwork()V

    :goto_0
    return-void
.end method

.method public handleSubtitleRecordingStop()V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "FragmentSubtitle"

    const-string v1, "handleSubtitleRecordingStop: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    const v2, 0x7f0f040d

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSubtitleHint(II)V

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopRecording()V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    return-void
.end method

.method public initPermission()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCTACanCollect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/fragment/CtaNoticeFragment;->showCta(Landroid/app/FragmentManager;ZLcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Lcom/android/camera/fragment/CtaNoticeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090179

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->verticalViewHeight:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iget v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->verticalViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0901dc

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    const v0, 0x7f0901dd

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    const v0, 0x7f0901db

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mFlipShow:Landroid/widget/TextView;

    const v0, 0x7f0901de

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    const v0, 0x7f09016e

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const v0, 0x7f090170

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const v0, 0x7f090171

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const v0, 0x7f09016f

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewFilp:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 19
    new-instance p1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    .line 20
    new-instance p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/CtaNoticeFragment;->dismiss()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->onDestroy()V

    return-void
.end method

.method public onNegativeClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/16 p2, 0xa2

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {p2}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onPositiveClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
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
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object p1

    .line 3
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe7

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe7

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
