.class public Lcom/android/camera/fragment/mimoji/FragmentMimoji;
.super Lcom/android/camera/fragment/live/FragmentLiveBase;
.source "FragmentMimoji.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MimojiAlert;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ADD_STATE:Ljava/lang/String; = "add_state"

.field public static final CLOSE_STATE:Ljava/lang/String; = "close_state"

.field private static final FRAGMENT_INFO:I = 0xfa1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bubbleEditMimojiPresenter:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

.field private mContext:Landroid/content/Context;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mIsRTL:Z

.field private mItemWidth:I

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLlProgress:Landroid/widget/LinearLayout;

.field private mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

.field private mMimojiInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/mimoji/MimojiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMimojiInfoSelect:Lcom/android/camera/fragment/mimoji/MimojiInfo;

.field private mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mNoneItemView:Landroid/view/View;

.field private mNoneSelectItemView:Landroid/view/View;

.field private mSelectIndex:I

.field private mSelectState:Ljava/lang/String;

.field private mTotalWidth:I

.field private popContainer:Landroid/widget/RelativeLayout;

.field private popParent:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;-><init>()V

    const-string v0, "close_state"

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectState:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->onItemSelected(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->bubbleEditMimojiPresenter:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mNoneSelectItemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Lcom/android/camera/fragment/mimoji/MimojiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoSelect:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    return-object p0
.end method

.method private scrollIfNeed(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

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
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr p1, v2

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->getItemCount()I

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
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showAlertDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mDeleteDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001b1

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1001b0

    .line 5
    new-instance v2, Lcom/android/camera/fragment/mimoji/FragmentMimoji$3;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji$3;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1001a2

    .line 6
    new-instance v2, Lcom/android/camera/fragment/mimoji/FragmentMimoji$4;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji$4;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mDeleteDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->a(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;)V

    return-void
.end method

.method public filelistToMinojiInfo()V
    .locals 13

    const-string v0, "/"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-direct {v1}, Lcom/android/camera/fragment/mimoji/MimojiInfo;-><init>()V

    const-string v2, "add_state"

    .line 3
    iput-object v2, v1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    const-wide v2, 0x7fffffffffffffffL

    .line 4
    iput-wide v2, v1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mDirectoryName:J

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/camera/fragment/mimoji/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 10
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 11
    new-instance v7, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-direct {v7}, Lcom/android/camera/fragment/mimoji/MimojiInfo;-><init>()V

    .line 12
    sget-object v8, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->PersonTemplatePath:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mAvatarTemplatePath:Ljava/lang/String;

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "config.dat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "pic.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/camera/fragment/mimoji/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/camera/fragment/mimoji/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-static {v6}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v10}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 21
    iput-object v6, v7, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    .line 22
    iput-object v10, v7, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 23
    iput-object v9, v7, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mPackPath:Ljava/lang/String;

    .line 24
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mDirectoryName:J

    .line 25
    iget-object v6, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :cond_3
    :goto_2
    new-instance v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-direct {v0}, Lcom/android/camera/fragment/mimoji/MimojiInfo;-><init>()V

    .line 31
    sget-object v3, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->PigTemplatePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v3, "pig"

    .line 32
    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/fragment/mimoji/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/pig.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-boolean v0, Lcom/mi/config/b;->J:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/b;->K:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/b;->L:Z

    if-eqz v0, :cond_5

    .line 36
    :cond_4
    new-instance v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-direct {v0}, Lcom/android/camera/fragment/mimoji/MimojiInfo;-><init>()V

    .line 37
    sget-object v3, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->RoyanTemplatePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v3, "royan"

    .line 38
    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/fragment/mimoji/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/royan.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_5
    new-instance v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-direct {v0}, Lcom/android/camera/fragment/mimoji/MimojiInfo;-><init>()V

    .line 42
    sget-object v3, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->BearTemplatePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v3, "bear"

    .line 43
    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/fragment/mimoji/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bear.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-direct {v0}, Lcom/android/camera/fragment/mimoji/MimojiInfo;-><init>()V

    .line 47
    sget-object v3, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->RabbitTemplatePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v3, "rabbit"

    .line 48
    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/fragment/mimoji/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/rabbit.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 50
    iget-object v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->setMimojiInfoList(Ljava/util/List;)V

    .line 52
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_6

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public firstProgressShow(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->TAG:Ljava/lang/String;

    const-string p1, "not attached to Activity , skip     firstProgressShow........"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLlProgress:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->initView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLlProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLlProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

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

.method protected initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mItemWidth:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mTotalWidth:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mIsRTL:Z

    const v0, 0x7f09016c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mNoneItemView:Landroid/view/View;

    const v0, 0x7f09016a

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f090136

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->popContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901c2

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->popParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f090141

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLlProgress:Landroid/widget/LinearLayout;

    .line 11
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    .line 12
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 13
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 14
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const v0, 0x7f09016d

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mNoneSelectItemView:Landroid/view/View;

    .line 17
    new-instance p1, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->popParent:Landroid/widget/RelativeLayout;

    invoke-direct {p1, v0, p0, v2}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->bubbleEditMimojiPresenter:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji$1;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mNoneItemView:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji$2;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance p1, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectState:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    .line 21
    new-instance v0, Lcom/android/camera/fragment/mimoji/a;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/mimoji/a;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->setOnItemClickListener(Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$OnItemClickListener;)V

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsLoading()Z

    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->firstProgressShow(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->filelistToMinojiInfo()V

    .line 25
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mimoji"

    invoke-direct {p1, v0, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070187

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 29
    new-instance v0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v2, p1}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 32
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    .line 33
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v2, p1}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectIndex:I

    .line 38
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    move v3, v2

    .line 39
    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 40
    iget-object v4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    iget-object v4, v4, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    iget-object v4, v4, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    iput v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    iget v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectIndex:I

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->setItemInCenter(I)V

    const-string v3, "close_state"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mNoneSelectItemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->updateSelect()V

    .line 46
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->getMimojiInfoSelected()Lcom/android/camera/fragment/mimoji/MimojiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->onItemSelected(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;Z)V

    .line 48
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMimojiPannelState(Z)V

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

    const/16 v0, 0xd9

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->onMimojiCreate()V

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
    sget-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMimojiPannelState(Z)V

    .line 4
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->showAlertDialog()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xd9

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->releaseRender()V

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xe0

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MimojiEditor;

    if-eqz p1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoSelect:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    invoke-interface {p1, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MimojiEditor;->directlyEnterEditMode(Lcom/android/camera/fragment/mimoji/MimojiInfo;I)V

    :cond_3
    const-string p1, "mimoji_click_edit"

    const-string v0, "edit"

    .line 7
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->bubbleEditMimojiPresenter:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    const/4 p1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onItemSelected(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;Z)V
    .locals 7

    if-eqz p1, :cond_a

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v4

    const-string v1, "add_state"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setmCurrentMimojiInfo(Lcom/android/camera/fragment/mimoji/MimojiInfo;)V

    .line 6
    :cond_1
    sget-object v2, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->TAG:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->bubbleEditMimojiPresenter:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    const/4 v3, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v5, v5, v3}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    .line 8
    iget-object v2, p1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->onAddItemSelected()V

    const-string p0, "mimoji_click_add"

    const-string p1, "add"

    .line 10
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p4, :cond_9

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-eq p2, v1, :cond_8

    if-eq p2, v2, :cond_8

    add-int/lit8 v2, v2, -0x2

    if-ne p2, v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p3

    move v6, p4

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->processBubble(Lcom/android/camera/fragment/mimoji/MimojiInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V

    goto :goto_3

    .line 18
    :cond_6
    :goto_0
    iget-object p3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p2, p2, 0x2

    iget-object p4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    .line 19
    invoke-virtual {p4}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->getItemCount()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 20
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_3

    .line 21
    :cond_7
    :goto_1
    iget-object p3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p2, p2, 0x1

    iget-object p4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    .line 22
    invoke-virtual {p4}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 23
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_3

    :cond_8
    :goto_2
    const/4 p3, 0x0

    add-int/lit8 p2, p2, -0x1

    .line 24
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 25
    iget-object p3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 26
    :goto_3
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->setAvatarAndSelect(Ljava/lang/String;Lcom/android/camera/fragment/mimoji/MimojiInfo;)V

    goto :goto_4

    :cond_9
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p3

    move v6, p4

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->processBubble(Lcom/android/camera/fragment/mimoji/MimojiInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->setAvatarAndSelect(Ljava/lang/String;Lcom/android/camera/fragment/mimoji/MimojiInfo;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public processBubble(Lcom/android/camera/fragment/mimoji/MimojiInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->isPrefabModel(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "add_state"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "close_state"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p5, :cond_1

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoSelect:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 5
    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p5, 0x0

    .line 6
    aget p3, p3, p5

    .line 7
    iget-object p5, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->popContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p5

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 9
    div-int/lit8 v1, p1, 0x2

    add-int v2, p3, v1

    div-int/2addr v0, p2

    sub-int/2addr v2, v0

    .line 10
    iget-boolean p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mIsRTL:Z

    if-eqz p2, :cond_0

    .line 11
    iget p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mTotalWidth:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    sub-int/2addr v1, v0

    add-int v2, p2, v1

    :cond_0
    sub-int/2addr p5, v0

    .line 12
    sget-object p1, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "coordinateY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->bubbleEditMimojiPresenter:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-virtual {p0, v2, p5, p4}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public refreshMimojiList()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->TAG:Ljava/lang/String;

    const-string v1, "refreshMimojiList"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->filelistToMinojiInfo()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectIndex:I

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    iget-object v2, v2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    iget-object v2, v2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iput v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mSelectIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->setItemInCenter(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->updateSelect()V

    .line 11
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe2

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setAvatarAndSelect(Ljava/lang/String;Lcom/android/camera/fragment/mimoji/MimojiInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mNoneSelectItemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setmCurrentMimojiInfo(Lcom/android/camera/fragment/mimoji/MimojiInfo;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->mMimojiCreateItemAdapter:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->updateSelect()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xd9

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p2}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->onMimojiSelect(Lcom/android/camera/fragment/mimoji/MimojiInfo;)V

    :cond_0
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->bubbleEditMimojiPresenter:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe2

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMimojiPannelState(Z)V

    return-void
.end method
