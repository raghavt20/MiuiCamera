.class public Lcom/android/camera/features/gif/FragmentGifEdit;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentGifEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfa5

.field public static final TAG:Ljava/lang/String; = "MimojiFragmentGifEdit"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFitTextureView:Lcom/android/camera/features/gif/MiFitTextureView;

.field private mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

.field private mGifViewLayout:Landroid/view/View;

.field private mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

.field private mIlShare:Landroid/widget/LinearLayout;

.field private mIsShare:Z

.field private mLlTextureContainer:Landroid/widget/FrameLayout;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private backToPreview()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->release()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xf6

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->deleteMimojiCache(I)Z

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/16 v0, 0x14

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :cond_2
    const-string p0, "MimojiFragmentGifEdit"

    const-string v0, "mimoji void onCombineError[] cameraAction null"

    .line 11
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    goto :goto_0

    :cond_3
    const-string v0, "mimoji void onCombineError[] recordState null"

    .line 14
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initGifMediaPlayer()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/gif/GifViewPresenter;->setGifMediaPlayer(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mFitTextureView:Lcom/android/camera/features/gif/MiFitTextureView;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setFitTextureView(Lcom/android/camera/features/gif/MiFitTextureView;)V

    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMedia()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    :cond_0
    return-void
.end method

.method private saveGif()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->startVideo2Gif()V

    return-void
.end method


# virtual methods
.method public combineVideoAudio(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p0, :cond_0

    const-string p0, "MimojiFragmentGifEdit"

    const-string p1, "mimoji void combineVideoAudio[savePath] mGifMediaPlayer null"

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setVideoUrl(Ljava/lang/String;)V

    return-void
.end method

.method public coverGifError()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    const v0, 0x7f1004c1

    invoke-static {p0, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public coverGifSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    const/16 v1, 0x1f4

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/camera/storage/ImageSaver;->addGifSync(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "image/gif"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f100475

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/camera/storage/ImageSaver;->addGif(Ljava/lang/String;II)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfa5

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c004e

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->isContentViewExtendToTopEdges()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/camera/Util;->sStatusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    new-instance v0, Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    .line 9
    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;->initView(Landroid/view/View;)V

    const v0, 0x7f09013b

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIlShare:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d8

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/gif/MiFitTextureView;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mFitTextureView:Lcom/android/camera/features/gif/MiFitTextureView;

    .line 13
    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 15
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const v0, 0x7f09013d

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mLlTextureContainer:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const v0, 0x7f0900fd

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fe

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->initGifMediaPlayer()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveGif()V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveGif()V

    goto :goto_0

    .line 6
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900fd -> :sswitch_2
        0x7f0900fe -> :sswitch_1
        0x7f09013b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0c004e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "MimojiFragmentGifEdit"

    const-string v1, "onDestroy  ReleaseMedia"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->release()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->pausePlay()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->resumePlay()V

    :cond_0
    return-void
.end method

.method public operateGifPannelVisibleState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifViewPresenter;->operateGifPannelVisibleState(I)V

    return-void
.end method

.method public reconfigPreviewRadio(I)V
    .locals 0

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
