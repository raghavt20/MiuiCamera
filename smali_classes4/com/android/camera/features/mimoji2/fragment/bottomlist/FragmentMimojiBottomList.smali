.class public Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;
.super Lcom/android/camera/fragment/live/FragmentLiveBase;
.source "FragmentMimojiBottomList.java"

# interfaces
.implements Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ADD_STATE:Ljava/lang/String; = "add_state"

.field public static final CLOSE_STATE:Ljava/lang/String; = "close_state"

.field private static final FRAGMENT_INFO:I = 0xfa1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

.field private mContext:Landroid/content/Context;

.field private mIsRTL:Z

.field private mItemWidth:I

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLlProgress:Landroid/widget/LinearLayout;

.field private mMimojiBgAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

.field private mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

.field private mMimojiInfo2List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;",
            ">;"
        }
    .end annotation
.end field

.field private mMimojiInfo2Select:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

.field private mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMimojiTimbreAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

.field private mNoneItemView:Landroid/view/View;

.field private mNoneSelectItemView:Landroid/view/View;

.field private mSelectIndex:I

.field private mSelectState:Ljava/lang/String;

.field private mTotalWidth:I

.field private mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

.field private popContainer:Landroid/widget/RelativeLayout;

.field private popParent:Landroid/widget/RelativeLayout;

.field private final resourceBg:[I

.field private final resourceTimbre:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->resourceBg:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->resourceTimbre:[I

    const-string v0, "close_state"

    .line 4
    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectState:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f0801eb
        0x7f0801ea
        0x7f0801e8
        0x7f0801ec
        0x7f0801e9
        0x7f0801e7
    .end array-data

    :array_1
    .array-data 4
        0x7f0801f7
        0x7f0801f9
        0x7f0801f8
        0x7f0801f6
        0x7f0801fa
    .end array-data
.end method

.method private synthetic a(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->onItemSelected(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2Select:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    return-object p0
.end method

.method private autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v2, :cond_7

    add-int/lit8 v2, v2, -0x2

    if-ne p1, v2, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_8

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, 0x2

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_4

    .line 11
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr p1, v3

    if-nez p2, :cond_6

    move p2, v1

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_4

    :cond_7
    :goto_3
    sub-int/2addr p1, v3

    .line 14
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 15
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move v1, v3

    goto :goto_5

    .line 16
    :catch_0
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p1, "mimoji boolean autoMove[position, adapter]"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    return v1
.end method

.method private synthetic c(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiChangeBg(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;->clearState()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;->setSelectState(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    return-void
.end method

.method private synthetic e(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->setSelectState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 7
    invoke-interface {v0, p1, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiChangeTimbre(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMinojiInfo()V

    .line 3
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v2, "refreshMimojiList AVATAR"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iput v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->updateSelect()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private initAvatarList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$2;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$2;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectState:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectState:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    .line 4
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/c;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/c;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->setOnItemClickListener(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$OnItemClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->IsLoading()Z

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->firstProgressShow(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMinojiInfo()V

    .line 8
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mimoji"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 12
    new-instance v1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    .line 16
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close_state"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 23
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    iput v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private initBgList()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getBackgroundInfos()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->resourceBg:[I

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 4
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "mimoji bg resource size error"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 7
    new-instance v5, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar2/BackgroundInfo;

    iget-object v7, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->resourceBg:[I

    aget v7, v7, v4

    invoke-direct {v5, v6, v7}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;-><init>(Lcom/arcsoft/avatar2/BackgroundInfo;I)V

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 9
    invoke-virtual {v5, v6}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->setSelected(Z)V

    .line 10
    iput v4, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 11
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

    invoke-direct {v1, v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

    .line 13
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/b;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/b;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;)V

    .line 14
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mimoji"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initTimbreList()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->resourceTimbre:[I

    array-length v1, v1

    sget-object v2, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->timbreTypes:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "mimoji timbre resource size error"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->resourceTimbre:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 6
    new-instance v4, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    sget-object v5, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->timbreTypes:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->resourceTimbre:[I

    aget v6, v6, v3

    invoke-direct {v4, v5, v6}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;-><init>(II)V

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setSelected(Z)V

    .line 9
    iput v3, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 10
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

    invoke-direct {v1, v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

    .line 12
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/d;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/d;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;)V

    .line 13
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "mimoji"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

    iget p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->setSelectState(I)Z

    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr p1, v2

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    .line 8
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2
.end method

.method private setSelectItemInCenter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    if-gez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v1, p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showAlertDialog()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001b1

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$3;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$3;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    const v2, 0x7f1001b0

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$4;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$4;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    const p0, 0x7f1001a2

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->a(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic d(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->c(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;I)V

    return-void
.end method

.method public synthetic f(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->e(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;I)V

    return-void
.end method

.method public filelistToMinojiInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getAvatarPanelState()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->getMimojiHumanList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->getMimojiCartoonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2List:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->setMimojiInfoList(Ljava/util/List;)V

    return-void
.end method

.method public firstProgressShow(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p1, "not attached to Activity , skip     firstProgressShow........"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->initView(Landroid/view/View;)V

    return-void

    :cond_1
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMinojiInfo()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfa1

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0062

    return p0
.end method

.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->g()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mItemWidth:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mIsRTL:Z

    const v0, 0x7f09016a

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f090136

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->popContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901c2

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f090141

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    const v0, 0x7f09016d

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    const v0, 0x7f09016c

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneItemView:Landroid/view/View;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneItemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    invoke-direct {p1, v0, p0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    .line 15
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList$1;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    .line 19
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->initTimbreList()V

    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->initBgList()V

    goto :goto_0

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->initAvatarList()V

    goto :goto_0

    .line 23
    :cond_3
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "init MimojiPanelState close"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->setSelectItemInCenter()V

    return-void
.end method

.method protected onAddItemSelected()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mIsNeedShowWhenExit:Z

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xf6

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiCreate()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->forceSwitchFront()Z

    :cond_1
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    .line 4
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "edit"

    const-string v1, "mimoji_click_edit"

    const/16 v2, 0xf7

    const/16 v3, 0xc9

    const/16 v4, 0xf6

    const/4 v5, -0x2

    const/4 v6, 0x0

    if-eq p1, v3, :cond_b

    const/16 v3, 0xca

    if-eq p1, v3, :cond_a

    const/16 v3, 0xcc

    if-eq p1, v3, :cond_8

    const v0, 0x7f09016c

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-virtual {p1, v5, v5, v6}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->processBubbleAni(IILandroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, v6, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiSelect(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;Z)V

    .line 8
    invoke-interface {p1, v6}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiChangeBg(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    if-eqz p0, :cond_7

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->updateSelect()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1, v6}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiChangeBg(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V

    .line 16
    :cond_3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;

    if-eqz p0, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiBgAdapter;->clearState()V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfc

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p1, :cond_5

    .line 21
    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->isComposing()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p1, :cond_6

    .line 25
    invoke-interface {p1, v6, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiChangeTimbre(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;I)V

    .line 26
    :cond_6
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;

    if-eqz p0, :cond_7

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->clearState()V

    :cond_7
    :goto_0
    const-string p0, "mimoji_click_null"

    const-string p1, "preview"

    .line 28
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p1, :cond_9

    .line 31
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2Select:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->directlyEnterEditMode(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;I)V

    .line 32
    :cond_9
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-virtual {p0, v5, v5, v6}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->processBubbleAni(IILandroid/view/View;)V

    goto :goto_1

    .line 34
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog()V

    goto :goto_1

    .line 35
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p1, :cond_c

    .line 37
    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->releaseRender()V

    .line 38
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p1, :cond_d

    .line 40
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2Select:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->directlyEnterEditMode(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;I)V

    .line 41
    :cond_d
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-virtual {p0, v5, v5, v6}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->processBubbleAni(IILandroid/view/View;)V

    :goto_1
    return-void
.end method

.method protected onItemSelected(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;ILandroid/view/View;Z)V
    .locals 7

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v4

    const-string v1, "add_state"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v2, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiInfo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V

    .line 6
    :cond_1
    sget-object v2, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click\u3000currentState:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lastState:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    const/4 v3, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v5, v5, v3}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->processBubbleAni(IILandroid/view/View;)V

    .line 8
    iget-object v2, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->onAddItemSelected()V

    const-string p0, "mimoji_click_add"

    const-string p1, "add"

    .line 10
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-direct {p0, p2, v1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p2

    if-nez p2, :cond_3

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p3

    move v6, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->processBubble(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V

    .line 13
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->setAvatarAndSelect(Ljava/lang/String;Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public processBubble(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "add_state"

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "close_state"

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p5, :cond_1

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiInfo2Select:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    .line 6
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 7
    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p5, 0x0

    .line 8
    aget p3, p3, p5

    .line 9
    iget-object p5, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->popContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p5

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 11
    div-int/lit8 v1, p1, 0x2

    add-int v2, p3, v1

    div-int/2addr v0, p2

    sub-int/2addr v2, v0

    .line 12
    iget-boolean p2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mIsRTL:Z

    if-eqz p2, :cond_0

    .line 13
    iget p2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    sub-int/2addr v1, v0

    add-int v2, p2, v1

    :cond_0
    sub-int/2addr p5, v0

    .line 14
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "coordinateY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-virtual {p0, v2, p5, p4}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->processBubbleAni(IILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public refreshMimojiList()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/a;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/a;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf8

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setAvatarAndSelect(Ljava/lang/String;Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mNoneSelectItemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiCreateItemAdapter2:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->updateSelect()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xf6

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-interface {p0, p2, p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiSelect(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;Z)V

    :cond_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter2:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 3
    invoke-virtual {p1, v1, v1, v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->processBubbleAni(IILandroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf8

    .line 5
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    return-void
.end method
