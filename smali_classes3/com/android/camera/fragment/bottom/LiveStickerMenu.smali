.class public Lcom/android/camera/fragment/bottom/LiveStickerMenu;
.super Lcom/android/camera/fragment/bottom/AbBottomMenu;
.source "LiveStickerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LIVE_STICKER_TYPE:I


# instance fields
.field private mLiveStickerMenuTabList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/beauty/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuTextViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/ui/ColorActivateTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/bottom/AbBottomMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    return-void
.end method


# virtual methods
.method addAllView()V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/beauty/MenuItem;

    .line 5
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0004

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    const v5, -0x66000001

    .line 8
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    const v5, -0x4c000001

    .line 9
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 10
    iget-object v5, v3, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget v5, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget v5, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 14
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 15
    iput-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 17
    :goto_1
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    iget v3, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getChildMenuViewList()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/ui/ColorActivateTextView;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    return-object p0
.end method

.method getDefaultType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getMenuData()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/beauty/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->mLiveStickerMenuTabList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->mLiveStickerMenuTabList:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f015d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    .line 6
    iput v1, v0, Lcom/android/camera/fragment/beauty/MenuItem;->number:I

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->mLiveStickerMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->mLiveStickerMenuTabList:Landroid/util/SparseArray;

    return-object p0
.end method

.method isRefreshUI()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method switchMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->addAllView()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/LiveStickerMenu;->getDefaultType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->selectBeautyType(I)V

    return-void
.end method
