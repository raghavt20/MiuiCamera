.class public Lcom/android/camera/fragment/clone/GuideAssetVideoItem;
.super Lcom/android/camera/fragment/clone/AssetVideoItem;
.source "GuideAssetVideoItem.java"


# instance fields
.field public tip1ResId:I

.field public tip2ResId:I

.field public tip3ResId:I

.field public tip4ResId:I

.field public title1ResId:I

.field public title2ResId:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetFileDescriptor;",
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;IIIIIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/clone/AssetVideoItem;-><init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;I)V

    .line 2
    iput p4, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->title1ResId:I

    .line 3
    iput p5, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->title2ResId:I

    .line 4
    iput p6, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip1ResId:I

    .line 5
    iput p7, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip2ResId:I

    .line 6
    iput p8, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip3ResId:I

    .line 7
    iput p9, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip4ResId:I

    return-void
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public update(ILcom/android/camera/fragment/clone/VideoViewHolder;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/clone/AssetVideoItem;->update(ILcom/android/camera/fragment/clone/VideoViewHolder;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V

    .line 2
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    iget p3, p0, Lcom/android/camera/fragment/clone/AssetVideoItem;->mCoverResource:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTitle1:Landroid/widget/TextView;

    iget p3, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->title1ResId:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->setText(Landroid/widget/TextView;I)V

    .line 4
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTitle2:Landroid/widget/TextView;

    iget p3, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->title2ResId:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->setText(Landroid/widget/TextView;I)V

    .line 5
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTip1:Landroid/widget/TextView;

    iget p3, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip1ResId:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->setText(Landroid/widget/TextView;I)V

    .line 6
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTip2:Landroid/widget/TextView;

    iget p3, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip2ResId:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->setText(Landroid/widget/TextView;I)V

    .line 7
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTip3:Landroid/widget/TextView;

    iget p3, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip3ResId:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->setText(Landroid/widget/TextView;I)V

    .line 8
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mTextViewTip4:Landroid/widget/TextView;

    iget p2, p0, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->tip4ResId:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/clone/GuideAssetVideoItem;->setText(Landroid/widget/TextView;I)V

    return-void
.end method
