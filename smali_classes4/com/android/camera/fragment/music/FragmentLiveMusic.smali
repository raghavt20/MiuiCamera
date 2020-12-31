.class public Lcom/android/camera/fragment/music/FragmentLiveMusic;
.super Landroidx/fragment/app/DialogFragment;
.source "FragmentLiveMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/music/FragmentLiveMusic$MusicPagerAdapter;,
        Lcom/android/camera/fragment/music/FragmentLiveMusic$Mp3DownloadCallback;
    }
.end annotation


# static fields
.field public static final LOCAL:I = 0x1

.field public static final ONLINE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseImageView:Landroid/widget/ImageView;

.field private mCurrentItemIndex:I

.field private mHotMusicText:Landroid/widget/TextView;

.field private mLocalMusicText:Landroid/widget/TextView;

.field private mOldOriginVolumeStream:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/music/FragmentLiveMusic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/music/FragmentLiveMusic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusic;->onClickOnline()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/music/FragmentLiveMusic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusic;->onClickLocal()V

    return-void
.end method

.method private onClickLocal()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060029

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mCurrentItemIndex:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mCurrentItemIndex:I

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mLocalMusicText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mLocalMusicText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mHotMusicText:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mHotMusicText:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method private onClickOnline()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060029

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mCurrentItemIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mCurrentItemIndex:I

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mLocalMusicText:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mLocalMusicText:Landroid/widget/TextView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mHotMusicText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mHotMusicText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090178

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mHotMusicText:Landroid/widget/TextView;

    const v0, 0x7f09017d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mLocalMusicText:Landroid/widget/TextView;

    const v0, 0x7f090179

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mCloseImageView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017a

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;-><init>()V

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ITEM_TYPE"

    if-nez v2, :cond_0

    .line 9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mHotMusicText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mLocalMusicText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f090181

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mCloseImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 18
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    new-instance v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;-><init>()V

    .line 21
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p1, Lcom/android/camera/fragment/music/FragmentLiveMusic$MusicPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusic$MusicPagerAdapter;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusic;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusic$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusic$1;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusic;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 27
    invoke-static {}, Lcom/android/camera/Util;->isContentViewExtendToTopEdges()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x300

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mOldOriginVolumeStream:I

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

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
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusic;->onClickLocal()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusic;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusic;->onClickOnline()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090178 -> :sswitch_2
        0x7f090179 -> :sswitch_1
        0x7f09017d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const p3, 0x7f0c003f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusic;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->mOldOriginVolumeStream:I

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method
