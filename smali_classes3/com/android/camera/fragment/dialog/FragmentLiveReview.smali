.class public Lcom/android/camera/fragment/dialog/FragmentLiveReview;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentLiveReview.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff9

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PAUSE_AFTER_PLAY:I = 0xa

.field private static final STATE_PENDING_PLAY:I = 0x2

.field private static final STATE_PENDING_RESUME:I = 0x5

.field private static final STATE_PENDING_SAVE:I = 0x8

.field private static final STATE_PENDING_SHARE:I = 0x6

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_SAVE:I = 0x9

.field private static final STATE_SHARE:I = 0x7

.field private static final STATE_WAIT_SURFACE_CREATE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FragmentLiveReview"


# instance fields
.field private mAudioString:Ljava/lang/String;

.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mCancelProgress:Landroid/widget/ProgressBar;

.field private mComposeState:I

.field private mComposeStateConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

.field private mComposeStateEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExitDialog:Landroid/app/AlertDialog;

.field private mFirstFrame:Landroid/graphics/Bitmap;

.field private mPaused:Z

.field private mPlayStateConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

.field private mPlayStateEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

.field private mPlayerState:I

.field private mPreviewBack:Landroid/widget/ImageView;

.field private mPreviewCombine:Landroid/widget/ImageView;

.field private mPreviewCover:Landroid/widget/ImageView;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mPreviewShare:Landroid/widget/ImageView;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewStartProgress:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mSaveContentValues:Landroid/content/ContentValues;

.field private mSavePath:Ljava/lang/String;

.field private mSaveProgress:Landroid/widget/ProgressBar;

.field private mSaved:Z

.field private mSavedUri:Landroid/net/Uri;

.field private mSegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field private mShareCancel:Landroid/view/View;

.field private mShareLayout:Landroid/view/ViewGroup;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTimeView:Landroid/widget/TextView;

.field private mTopLayout:Landroid/view/ViewGroup;

.field private mUIStateConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUIStateDisposable:Lio/reactivex/disposables/Disposable;

.field private mUIStateEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUiState:I

.field private mVideoHeight:I

.field private mVideoWidth:I


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
    iput v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    .line 3
    new-instance v0, Lcom/android/camera/fragment/dialog/f;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/f;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateConsumer:Lio/reactivex/functions/Consumer;

    .line 4
    new-instance v0, Lcom/android/camera/fragment/dialog/e;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/e;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateConsumer:Lio/reactivex/functions/Consumer;

    .line 5
    new-instance v0, Lcom/android/camera/fragment/dialog/g;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/g;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateConsumer:Lio/reactivex/functions/Consumer;

    .line 6
    new-instance v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$1;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    return-void
.end method

.method static synthetic a(Lcom/android/camera/fragment/fullscreen/ShareInfo;Lcom/android/camera/fragment/fullscreen/ShareInfo;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    iget p1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lcom/android/camera/module/impl/component/MiLivePlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/camera/fragment/dialog/FragmentLiveReview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->releaseCover()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    return-object p0
.end method

.method private checkAndShare()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showShareSheet()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCurStateString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "com.android.camera.fileProvider"

    invoke-static {v1, p0, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.extra.STREAM"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, 0x2

    .line 4
    invoke-static {p0}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "STATE_UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "STATE_PAUSE_AFTER_PLAY"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_SAVE"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_PENDING_SAVE"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_SHARE"

    return-object p0

    :pswitch_4
    const-string p0, "STATE_PENDING_SHARE"

    return-object p0

    :pswitch_5
    const-string p0, "STATE_PENDING_RESUME"

    return-object p0

    :pswitch_6
    const-string p0, "STATE_PAUSED"

    return-object p0

    :pswitch_7
    const-string p0, "STATE_PLAYING"

    return-object p0

    :pswitch_8
    const-string p0, "STATE_PENDING_PLAY"

    return-object p0

    :pswitch_9
    const-string p0, "STATE_WAIT_SURFACE_CREATE"

    return-object p0

    :pswitch_a
    const-string p0, "STATE_IDLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
.end method

.method private hasFrame()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideShareSheet()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Ld/h/a/x;

    invoke-direct {p0}, Ld/h/a/x;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0xc8

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initPlayer()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/android/camera/fragment/dialog/c;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/c;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 5
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateConsumer:Lio/reactivex/functions/Consumer;

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 8
    new-instance v0, Lcom/android/camera/fragment/dialog/j;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/j;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 9
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateConsumer:Lio/reactivex/functions/Consumer;

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 12
    new-instance v0, Lcom/android/camera/fragment/dialog/i;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/i;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 13
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateConsumer:Lio/reactivex/functions/Consumer;

    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 16
    new-instance v0, Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setStateListener(Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;)V

    return-void
.end method

.method private initTextureView()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 7
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$2;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private isComposing()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private releaseCover()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private setUiState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz p1, :cond_0

    .line 5
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private shareMore()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f013f

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to share video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showCover()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private showExitConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f013e

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f013d

    .line 6
    new-instance v2, Lcom/android/camera/fragment/dialog/h;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/dialog/h;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0445

    .line 7
    new-instance v2, Lcom/android/camera/fragment/dialog/b;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/dialog/b;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showShareSheet()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getShareIntent()Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 6
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    sget-object p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v0, "no IntentActivities"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget-object v3, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    array-length v3, v3

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_3

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_1
    if-ge v7, v3, :cond_2

    .line 13
    sget-object v5, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14
    new-instance v5, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_ICON:[I

    aget v10, v4, v7

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_NAME:[I

    aget v11, v4, v7

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 15
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 16
    sget-object v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v5, "no default share entry"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v1, v4

    goto :goto_4

    .line 17
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget v1, v1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-le v1, v4, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_7

    .line 18
    sget-object v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v5, "not match default share strategy"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_4
    if-eqz v1, :cond_8

    .line 19
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    return-void

    .line 20
    :cond_8
    new-instance v1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    add-int/lit8 v6, v3, 0x1

    const v9, 0x7f080167

    const v10, 0x7f0f0038

    const-string v7, "com.android.camera"

    const-string v8, "more"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v1, Lcom/android/camera/fragment/dialog/d;->INSTANCE:Lcom/android/camera/fragment/dialog/d;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07011d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 23
    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int v4, v3, v1

    int-to-float v4, v4

    const/high16 v5, 0x40b00000    # 5.5f

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 25
    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->getItemCount()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_9

    goto :goto_5

    .line 26
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 28
    :cond_a
    :goto_5
    new-instance v4, Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v4, v2, p0, v3}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    .line 29
    new-instance v2, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FullScreen"

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 32
    new-instance v0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 33
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    .line 36
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v2, v1}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 39
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 40
    :goto_6
    sget v0, Lcom/android/camera/Util;->sNavigationBarHeight:I

    if-lez v0, :cond_b

    .line 41
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 43
    :cond_b
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Ld/h/a/z;

    invoke-direct {p0}, Ld/h/a/z;-><init>()V

    .line 44
    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0xc8

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showTime(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v1

    .line 3
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3a98

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v0

    const/4 p1, 0x0

    .line 5
    invoke-static {v0, v1, p1, p1}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startSave(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip save, caz ui state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip save, caz composer state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x6

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 7
    :goto_0
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v0, "startSave"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->combineVideoAudio()V

    return-void
.end method

.method private startSaveToLocal()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "datetaken"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v0, "can\'t add to db."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private startShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 5
    invoke-static {p2}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0x7f0f013f

    .line 7
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    sget-object p2, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to share video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public attemptStartPlay()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startPlay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initTextureView()V

    :goto_0
    return-void
.end method

.method public synthetic b(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public synthetic b(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI state consumer get state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showTime(Ljava/util/List;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public synthetic c(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public synthetic c(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public combineVideoAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "_data"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->startCompose(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic d(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    const/4 v2, 0x7

    const/16 v3, 0x9

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-ne p1, v3, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComposed error, state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    .line 10
    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 11
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 12
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic g(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    const-string p1, "mi_live_click_cancel"

    .line 3
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff9

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0033

    return p0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public synthetic h(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const v0, 0x7f0900bb

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    sget v1, Lcom/android/camera/Util;->sTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    sget v1, Lcom/android/camera/Util;->sTopBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0900b5

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0900af

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0900bd

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ProgressBar;

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0900c4

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0900ae

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0900b7

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f0900b9

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    const v0, 0x7f0900b8

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Landroid/widget/ImageView;

    const v0, 0x7f0900b2

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f0900ba

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f0900b6

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0900c1

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    .line 28
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0900c2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0900be

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareCancel:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0900b3

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    .line 42
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 44
    invoke-static {}, Lcom/android/camera/Util;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 45
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b4

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomLayout:Landroid/view/ViewGroup;

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomLayout:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    sget v0, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 50
    sget v0, Lcom/android/camera/Util;->sBottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 51
    sget v0, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 52
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    sget v0, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 55
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v0, 0x7f06002c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 56
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAfterFrameAvailable ui state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showCover()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    const/16 p1, 0xa

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ui state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    .line 4
    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    const-string v1, "more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startShare(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    goto/16 :goto_1

    .line 9
    :pswitch_3
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    return-void

    :cond_1
    const-string p1, "mi_live_click_share"

    .line 10
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v4, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-nez p1, :cond_2

    const/4 p1, 0x7

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    goto :goto_1

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_a

    .line 16
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSave(Z)V

    goto :goto_1

    .line 17
    :pswitch_4
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    return-void

    :cond_3
    const-string p1, "mi_live_click_done"

    .line 18
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v4, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-nez p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 22
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    .line 23
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_1

    .line 24
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSave(Z)V

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_1

    .line 26
    :pswitch_5
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v2, :cond_6

    return-void

    .line 27
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    .line 28
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    if-ne p1, v3, :cond_7

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    goto :goto_1

    :cond_7
    if-ne p1, v2, :cond_8

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->resumePlay()V

    goto :goto_1

    .line 31
    :cond_8
    sget-object p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string p1, "skip start play~"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 32
    :pswitch_6
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v1, :cond_9

    return-void

    .line 33
    :cond_9
    invoke-virtual {p0, v4, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    goto :goto_1

    .line 34
    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V

    :cond_a
    :goto_1
    :pswitch_8
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900b2
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showShareSheet()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause ui state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume ui state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showCover()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    const/16 v0, 0xa

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_0
    return-void
.end method

.method public pausePlay(ZZ)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->isComposing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz p0, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->pausePlayer()V

    goto :goto_1

    .line 8
    :cond_2
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip pause play, caz state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->stopPlayer()V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->pausePlayer()V

    :cond_5
    :goto_1
    return-void
.end method

.method public prepare(Landroid/content/ContentValues;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "prepare fail, state is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    const-string p2, "resolution"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    const/4 p2, 0x1

    .line 11
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoHeight:I

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    .line 13
    iget v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    iget v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoHeight:I

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    .line 14
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    iget-object v6, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/module/impl/component/MiLivePlayer;->init(IIIILjava/util/List;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startPlay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :goto_0
    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quitLiveRecordPreview "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string p1, "concat error, action null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 10
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->release()V

    .line 13
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method public resumePlay()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip resume play, caz state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->resumePlayer()V

    :cond_1
    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initTextureView()V

    return-void
.end method

.method public startLiveRecordSaving()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    :cond_1
    return-void
.end method

.method public startPlay(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->startPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "unRegister"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
