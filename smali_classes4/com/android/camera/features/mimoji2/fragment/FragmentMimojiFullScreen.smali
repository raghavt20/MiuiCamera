.class public Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMimojiFullScreen.java"

# interfaces
.implements Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfa4

.field private static final TAG:Ljava/lang/String; = "MIMOJIFullScreen"


# instance fields
.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mBottomTimbreLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mCancelProgress:Landroid/widget/ProgressBar;

.field private mCombineProgress:Landroid/widget/ProgressBar;

.field private mConcatProgress:Landroid/widget/ProgressBar;

.field private mExitDialog:Landroid/app/AlertDialog;

.field private mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

.field private mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

.field private mLiveViewLayout:Landroid/view/View;

.field private mLiveViewStub:Landroid/view/ViewStub;

.field private mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

.field private mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

.field private mPreviewBack:Landroid/widget/ImageView;

.field private mPreviewCombine:Landroid/widget/ImageView;

.field private mPreviewCoverBitmap:Landroid/graphics/Bitmap;

.field private mPreviewCoverView:Landroid/widget/ImageView;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mPreviewShare:Landroid/widget/ImageView;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

.field private mSavedPath:Ljava/lang/String;

.field private mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field private mShareCancel:Landroid/view/View;

.field private mShareLayout:Landroid/view/ViewGroup;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getPreviewRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const v1, 0x7f0801f1

    goto :goto_2

    :cond_3
    const v1, 0x7f0801f0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_5

    .line 20
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->init(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;)Z

    move-result v3

    :cond_5
    if-eqz v3, :cond_6

    .line 21
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->startPlay()V

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    :goto_3
    return-void

    .line 24
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private checkAndShare()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MIMOJI_"

    const-string v3, "mp4"

    invoke-static {v2, v3}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const/4 v2, 0x2

    .line 6
    invoke-static {v2, v0}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-interface {v3}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    .line 8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.STREAM"

    .line 9
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    invoke-static {v2}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x7f100475

    .line 12
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method private getFragmentMiMoji()Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    const/4 v1, 0x0

    const-string v2, "MIMOJIFullScreen"

    if-nez v0, :cond_0

    const-string p0, "getFragmentMiMoji(): fragment is null"

    .line 2
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "getFragmentMiMoji(): fragment is not added yet"

    .line 4
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    return-object p0
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-interface {p0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object p0

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    .line 7
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-static {v1}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private hideShareSheet()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Lc/h/a/x;

    invoke-direct {p0}, Lc/h/a/x;-><init>()V

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

    :cond_0
    return-void
.end method

.method private hideTimbreLayout()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method private initLiveView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09011c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0900cc

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    const v0, 0x7f090243

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    const v0, 0x7f090065

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    const v0, 0x7f0900cb

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0900ec

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const v0, 0x7f090116

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f090124

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f09012b

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f090115

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f09011e

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f090120

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0xae

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    const v0, 0x7f09011f

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    const v0, 0x7f090119

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f090121

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f09011d

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const v0, 0x7f090128

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v2, 0x7f090129

    .line 23
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareCancel:Landroid/view/View;

    .line 26
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011a

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    invoke-static {}, Lcom/android/camera/Util;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 37
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011b

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 40
    sget v0, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 41
    sget v0, Lcom/android/camera/Util;->sBottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 42
    sget v0, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    sget v0, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const p1, 0x7f06005d

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method private onPreviewResume()V
    .locals 2

    const-string v0, "MIMOJIFullScreen"

    const-string v1, "mimoji void onPreviewResume[]"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreviewPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->startPlay()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    :goto_0
    return-void
.end method

.method private pausePlay()V
    .locals 2

    const-string v0, "MIMOJIFullScreen"

    const-string v1, "mimoji void pausePlay[]"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->pausePlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :cond_1
    return-void
.end method

.method private removeTimbreLayout()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void removeTimbreLayout[] Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MIMOJIFullScreen"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private resumePlay()V
    .locals 3

    const-string v0, "MIMOJIFullScreen"

    const-string v1, "mimoji void resumePlay[]"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xfc

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->resumePlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    :cond_0
    const-string p0, "mimoji void resumePlay fail"

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private shareMore()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f100173

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MIMOJIFullScreen"

    const-string v1, "failed to share video shareMore "

    .line 3
    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showExitConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "exit"

    .line 4
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100172

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100171

    .line 8
    new-instance v2, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$1;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$1;-><init>(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100489

    .line 9
    new-instance v2, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$2;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$2;-><init>(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showShareSheet()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "MIMOJIFullScreen"

    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_7

    .line 6
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v3, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    array-length v3, v3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_3

    goto :goto_2

    :cond_3
    move v8, v5

    :goto_1
    if-ge v8, v3, :cond_2

    .line 10
    sget-object v5, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    new-instance v5, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_ICON:[I

    aget v11, v4, v8

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_NAME:[I

    aget v12, v4, v8

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 12
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    const-string v0, "no default share entry"

    .line 13
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v4

    goto :goto_4

    .line 14
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget v0, v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-le v0, v4, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_7

    const-string v0, "not match default share strategy"

    .line 15
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v0, v5

    :goto_4
    if-eqz v0, :cond_8

    .line 16
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->shareMore()V

    return-void

    .line 17
    :cond_8
    new-instance v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    add-int/lit8 v7, v3, 0x1

    const v10, 0x7f0801d1

    const v11, 0x7f100056

    const-string v8, "com.android.camera"

    const-string v9, "more"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$3;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen$3;-><init>(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 20
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int v3, v1, v0

    int-to-float v3, v3

    const/high16 v4, 0x40b00000    # 5.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v1, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 22
    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->getItemCount()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_9

    goto :goto_5

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 25
    :cond_a
    :goto_5
    new-instance v3, Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v3, v2, p0, v1}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    .line 26
    new-instance v1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FullScreen"

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 28
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 29
    new-instance v1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    .line 33
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    :goto_6
    sget v0, Lcom/android/camera/Util;->sNavigationBarHeight:I

    if-lez v0, :cond_b

    .line 38
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 40
    :cond_b
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Lc/h/a/z;

    invoke-direct {p0}, Lc/h/a/z;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0xc8

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_c
    :goto_7
    const-string p0, "no IntentActivities"

    .line 45
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showTimbreLayout()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900cb

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;->refreshMimojiList()I

    .line 11
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method private startCombine()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const-string v1, "mimoji_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const-string v1, "mimoji_deal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MIMOJI_"

    const-string v2, "mp4"

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    :goto_0
    return-void
.end method

.method private startPlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfc

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->startPlay()V

    :cond_0
    return-void
.end method

.method private startShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 5
    invoke-static {p2}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0x7f100173

    .line 7
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to share video "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIMOJIFullScreen"

    invoke-static {p2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->a(Ljava/lang/String;)V

    return-void
.end method

.method public concatResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MIMOJIFullScreen"

    const-string v1, "mimoji void concatResult[]"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/a;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimoji2/fragment/a;-><init>(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfa4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0067

    return p0
.end method

.method public getMimojiVideoSavePath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09016e

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public isMimojiRecordPreviewShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewLayout:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->I1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-direct {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0900d0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p1, v0, p0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->I1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-direct {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f0900d0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiEdit2:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, p2, p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewLayout:Landroid/view/View;

    invoke-static {v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->hideShareSheet()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->showExitConfirm()V

    :goto_0
    return v1

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->getFragmentMiMoji()Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->onBackEvent(I)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 6
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    .line 7
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->hideShareSheet()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live_preview_shareTo_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    const-string v2, "more"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->shareMore()V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    .line 13
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    .line 14
    :try_start_0
    invoke-static {v2, v0}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-interface {v3}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    .line 16
    iget-object v1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->startShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 17
    :catch_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    goto/16 :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    .line 19
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->hideShareSheet()V

    goto :goto_0

    .line 20
    :sswitch_2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const-string v0, "MIMOJIFullScreen"

    if-nez p1, :cond_4

    const-string p0, "concat not finished, skip share~"

    .line 21
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p1, "live_share"

    .line 22
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "uri null"

    .line 24
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    :sswitch_3
    const-string p1, "live_save"

    .line 26
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->pausePlay()V

    .line 28
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 31
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->startCombine()V

    goto :goto_0

    .line 32
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->hideShareSheet()V

    .line 33
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->startPlay()V

    goto :goto_0

    .line 34
    :sswitch_5
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->hideTimbreLayout()V

    return-void

    .line 36
    :sswitch_6
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->showExitConfirm()V

    goto :goto_0

    .line 39
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->showTimbreLayout()V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090065 -> :sswitch_7
        0x7f090119 -> :sswitch_6
        0x7f09011c -> :sswitch_5
        0x7f09011d -> :sswitch_4
        0x7f09011f -> :sswitch_3
        0x7f090120 -> :sswitch_3
        0x7f090121 -> :sswitch_2
        0x7f090125 -> :sswitch_1
        0x7f090127 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCombineError()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MIMOJIFullScreen"

    const-string v1, "onCombineError"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->quitMimojiRecordPreview()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa1

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :cond_1
    const-string p0, "mimoji void onCombineError[] cameraAction null"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xd4

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    goto :goto_0

    :cond_2
    const-string p0, "mimoji void onCombineError[] recordState null"

    .line 10
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onCombineSuccess()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MIMOJIFullScreen"

    const-string v1, "combineSuccess"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->quitMimojiRecordPreview()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMimojiSaveToLocalFinished(Landroid/net/Uri;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIMOJI onMimojiSaveToLocalFinished"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MIMOJIFullScreen"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->pausePlay()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onPreviewResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->onCombineError()V

    :cond_1
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public quitMimojiRecordPreview()V
    .locals 2

    const-string v0, "MIMOJIFullScreen"

    const-string v1, "quitMimojiRecordPreview "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreviewPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->setPreviewCover(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->removeTimbreLayout()V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfc

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p0, :cond_1

    .line 13
    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->onDestory()V

    :cond_1
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xf9

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public startMimojiRecordPreview()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewLayout:Landroid/view/View;

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->initLiveView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mLiveViewLayout:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 18
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 24
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {v0, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 25
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 26
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 27
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 29
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 31
    :cond_2
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 32
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xf6

    .line 33
    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz v0, :cond_3

    .line 34
    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->getTimeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 37
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-static {p0, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public startMimojiRecordSaving()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xf9

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->removeTimbreLayout()V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
