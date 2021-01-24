.class public Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentCloneUseGuide.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final TAG:Ljava/lang/String; = "CloneUseGuide"


# instance fields
.field private mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/clone/GuideAssetVideoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollState:I

.field private final mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mScrollState:I

    .line 4
    new-instance v0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;

    new-instance v1, Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;

    invoke-direct {v1}, Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;-><init>(Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    .line 5
    new-instance v0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$1;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)V

    invoke-direct {v0, v1}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;-><init>(Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->onBackEvent(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mScrollState:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mScrollState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    return-object p0
.end method

.method private backToClonePreviewIfNeeded()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->isOpenUseGuideFromFirstUse()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CloneUseGuide"

    const-string v0, "backToClonePreviewIfNeeded"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lcom/android/camera/fragment/clone/Config;->setOpenUseGuideFromFirstUse(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configClone(Lcom/xiaomi/fenshen/FenShenCam$Mode;ZZ)V

    :cond_1
    return-void
.end method

.method private initAdapter()V
    .locals 13

    const-string v0, "clone_photo_mode_use_guide.mp4"

    const-string v1, "clone_video_mode_use_guide.mp4"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v2, v3, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    new-instance v12, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    const v5, 0x7f0800c2

    const v6, 0x7f1000b2

    const v7, 0x7f1000b3

    const v8, 0x7f1000ae

    const v9, 0x7f1000af

    const v10, 0x7f1000b0

    const v11, 0x7f1000b1

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;-><init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;IIIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    new-instance v12, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    const v5, 0x7f0800c2

    const v6, 0x7f1000b4

    const v7, 0x7f1000b5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;-><init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;IIIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    new-instance v12, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    const v5, 0x7f0800c3

    const v6, 0x7f1000b2

    const v7, 0x7f1000b7

    const v8, 0x7f1000ae

    const v9, 0x7f1000af

    const v10, 0x7f1000b0

    const v11, 0x7f1000b6

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;-><init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;IIIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    new-instance v12, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    const v5, 0x7f0800c3

    const v6, 0x7f1000b4

    const v7, 0x7f1000b5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;-><init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;IIIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFd failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneUseGuide"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance v0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;-><init>(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;Landroid/content/Context;Ljava/util/List;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$3;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 15
    new-instance v0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    .line 16
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->a(Landroid/view/View;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xff04

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0038

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    const-string v0, "CloneUseGuide"

    const-string v1, "initView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090080

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09007f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    sget v1, Lcom/android/camera/Util;->sTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    sget v1, Lcom/android/camera/Util;->sTopBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    new-instance v0, Lcom/android/camera/fragment/clone/a;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/clone/a;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->initAdapter()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/16 p1, 0x17

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string p0, "CloneUseGuide"

    const-string v0, "onDestroy"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string p0, "CloneUseGuide"

    const-string v0, "onPause"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const-string v0, "CloneUseGuide"

    const-string v1, "onResume"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-interface {p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->resumeMediaPlayer()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-interface {p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->resetMediaPlayer()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
