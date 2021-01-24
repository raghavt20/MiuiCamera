.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager;
.super Landroidx/fragment/app/Fragment;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;


# static fields
.field private static final MAX_REQUEST_TIME:J = 0xa4cb80L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

.field private mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mEnableTrack:Z

.field private mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mIsDestroyed:Z

.field private mIsLoadingAnimationStart:Z

.field private mIsMediaPreparing:Z

.field private mItemType:I

.field private mMediaLoadingProgressBar:Landroid/widget/ProgressBar;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

.field private mMusicPlayPosition:I

.field private mNetworkExceptionLayout:Landroid/widget/LinearLayout;

.field private mPlayingImageView:Landroid/widget/ImageView;

.field private mProgressDialog:Lmiui/app/c;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mUpdateLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/android/camera/resource/tmmusic/TMMusicList;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/resource/tmmusic/TMMusicCatrgoryRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/resource/tmmusic/TMMusicCatrgoryRequest;-><init>(Lcom/android/camera/resource/tmmusic/TMMusicList;)V

    .line 2
    const-class p0, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadOnlineMusicByFeature()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lmiui/app/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiui/app/c;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startPlayOrStopMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadRequest(Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicStartPlay()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/MusicOperation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsMediaPreparing:Z

    return p1
.end method

.method private synthetic b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    return-void
.end method

.method private synthetic f(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->stopDownloadAnimation()V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method private synthetic h(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->stopDownloadAnimation()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f10017f

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/music/MusicOperation;

    invoke-direct {v0}, Lcom/android/camera/fragment/music/MusicOperation;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroid/app/FragmentManager;ZLcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadOnlineMusicByFeature()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_LOCAL:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/music/MusicUtils;->getMusicListFromLocalFolder(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0, v0}, Lcom/android/camera/fragment/music/MusicAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Ljava/util/List;)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/music/LiveMusicInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0, p0, p1}, Lcom/android/camera/fragment/music/MusicAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Ljava/util/List;)V

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0c006c

    iget-object v3, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090177

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p2, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-direct {p2, v0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method

.method private isMusicFileExists(Lcom/android/camera/fragment/music/LiveMusicInfo;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 2
    iget p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp3"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private loadOnlineMusicByFeature()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->z1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadTikTokMusic()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadTMMusic()V

    :goto_0
    return-void
.end method

.method private loadTMMusic()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mEnableTrack:Z

    .line 3
    new-instance v2, Lcom/android/camera/resource/tmmusic/TMMusicCacheLoadRequest;

    invoke-direct {v2}, Lcom/android/camera/resource/tmmusic/TMMusicCacheLoadRequest;-><init>()V

    .line 4
    invoke-virtual {v2, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/android/camera/resource/tmmusic/TMMusicStationsRequest;

    invoke-direct {v3, v1}, Lcom/android/camera/resource/tmmusic/TMMusicStationsRequest;-><init>(Z)V

    .line 6
    invoke-virtual {v3, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/music/c;->a:Lcom/android/camera/fragment/music/c;

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 8
    invoke-static {v2, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;

    invoke-direct {v1}, Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 12
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/music/a;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/music/a;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    new-instance v2, Lcom/android/camera/fragment/music/b;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/music/b;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 13
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private loadTikTokMusic()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;

    invoke-direct {v0}, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLiveMusicFirstRequestTime()J

    move-result-wide v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    const-wide/32 v1, 0xa4cb80

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;->loadFromCache()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/camera/network/live/BaseRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    .line 8
    sget-object p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request online music failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/network/live/BaseRequest;->execute(Lcom/android/camera/network/net/base/ResponseListener;)V

    :goto_0
    return-void
.end method

.method private onLoadError()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onMusicPauseOrStopPlay()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private onMusicSelectedToPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaLoadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v1}, Lcom/android/camera/fragment/music/MusicOperation;->endPlaySession()V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mRequestItemID:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/fragment/music/MusicOperation;->onSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 15
    iput-boolean v4, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsMediaPreparing:Z

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaplayer play failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private onMusicSelectedToUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mRequestItemID:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/music/MusicOperation;->onSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->onSelectedToUse()V

    .line 3
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveAudioChanges;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$LiveAudioChanges;->setAudioPath(Ljava/lang/String;)V

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->setCurrentLiveMusic(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf5

    aput v2, v0, v1

    .line 12
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusic;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method private onMusicStartPlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaLoadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    const v0, 0x7f0801c2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private selectMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->endPlaySession()V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicFileExists(Lcom/android/camera/fragment/music/LiveMusicInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v0, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadMusicForUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startDownloadAnimation()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    .line 2
    new-instance v1, Lmiui/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiui/app/c;

    const v1, 0x7f10017c

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiui/app/c;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiui/app/c;

    new-instance v2, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiui/app/c;

    invoke-virtual {v0, v1}, Lmiui/app/c;->n(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiui/app/c;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDownloadMusicForUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f10017f

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadAnimation()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v1, v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTTMusicDetailInfoRequest(ZLjava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadRequest(Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :goto_0
    return-void
.end method

.method private startDownloadRequest(Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-direct {v1, v0, p1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p2}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/music/d;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/music/d;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    new-instance v0, Lcom/android/camera/fragment/music/e;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/music/e;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 5
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startPlayOrStopMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicOperation;->onPausePlay()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicOperation;->onResumePlay()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicStartPlay()V

    :goto_0
    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f10017f

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaLoadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_1

    .line 16
    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v0, :cond_4

    .line 17
    iget v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v1, v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTTMusicDetailInfoRequest(ZLjava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private startTTMusicDetailInfoRequest(ZLjava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/resource/tmmusic/TMMusicItemRequest;

    invoke-direct {v0, p3}, Lcom/android/camera/resource/tmmusic/TMMusicItemRequest;-><init>(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    .line 2
    const-class p3, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-virtual {v0, p3}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$3;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;ZLjava/lang/String;)V

    new-instance p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 3
    invoke-virtual {p3, v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private stopDownloadAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiui/app/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->b(Ljava/util/List;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic g(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->f(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method public synthetic i(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->h(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090180

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "music_recycler_view"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v2}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const v0, 0x7f090185

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09017e

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    .line 9
    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ITEM_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    .line 11
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsMediaPreparing:Z

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initAdapter()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsMediaPreparing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay()V

    :cond_1
    const v1, 0x7f09017f

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    iput-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v1, 0x7f09017c

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaLoadingProgressBar:Landroid/widget/ProgressBar;

    .line 11
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startPlayOrStopMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 12
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadOnlineMusicByFeature()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09017e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0c0054

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsDestroyed:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onNegativeClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->endPlaySession()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    :cond_0
    return-void
.end method

.method public onPositiveClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadOnlineMusicByFeature()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const v0, 0x7f09017b

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->selectMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    const p2, -0x333334

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay()V

    :cond_0
    return-void
.end method
