.class public Lcom/android/camera/ui/GradienterDrawer;
.super Landroid/widget/RelativeLayout;
.source "GradienterDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GradienterDrawer$Direct;
    }
.end annotation


# static fields
.field public static final COLOR_NORMAL:I = -0x66000001

.field public static final COLOR_SELECTED:I = -0xd32f01

.field public static final TAG:Ljava/lang/String; = "GradienterDrawer"


# instance fields
.field private isReferenceLineEnabled:Z

.field private isSquareModule:Z

.field private mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field private mDeviceRotation:F

.field private mLineLeftView:Landroid/view/View;

.field private mLineLongColor:I

.field private mLineLongWidth:I

.field private mLineRightView:Landroid/view/View;

.field private mLineShortColor:I

.field private mLineShortView:Landroid/view/View;

.field private mLineShortWidth:I

.field private mParentHeighth:I

.field private mParentWidth:I

.field private mRootView:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, -0xd32f01

    .line 2
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const v0, 0x6affffff

    .line 3
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 7
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 9
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0xd32f01

    .line 22
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const p2, 0x6affffff

    .line 23
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    const/4 p2, 0x1

    .line 24
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 p2, 0x6

    .line 25
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 27
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 29
    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0xd32f01

    .line 12
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const p2, 0x6affffff

    .line 13
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 p2, 0x6

    .line 15
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 17
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 19
    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0090

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d9

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d7

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    return-void
.end method

.method private invalidateView()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private resetMargin()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    const/4 v2, 0x5

    const/16 v3, 0x30

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v1, :cond_8

    new-array v1, v5, [Landroid/widget/LinearLayout$LayoutParams;

    aput-object v0, v1, v6

    .line 3
    invoke-direct {p0, v1}, Lcom/android/camera/ui/GradienterDrawer;->resetParams([Landroid/widget/LinearLayout$LayoutParams;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-direct {p0, v1, v10}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-direct {p0, v1, v10}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 6
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$1;->$SwitchMap$com$android$camera$ui$GradienterDrawer$Direct:[I

    iget-object v10, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v1, v1, v10

    if-eq v1, v5, :cond_6

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_2

    if-eq v1, v4, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v3, v1, 0x3

    .line 8
    iget-boolean v4, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v4, :cond_1

    .line 9
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v1, v8

    goto :goto_0

    .line 10
    :cond_1
    div-int/lit8 v4, v1, 0x3

    iget v6, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v6, v1

    div-int/2addr v6, v9

    add-int v1, v4, v6

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 14
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 15
    div-int/2addr v2, v9

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 16
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 17
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_4

    .line 18
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v2, v1, 0x3

    .line 19
    iget-boolean v3, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v3, :cond_3

    .line 20
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v1, v8

    goto :goto_1

    .line 21
    :cond_3
    div-int/lit8 v3, v1, 0x3

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v4, v1

    div-int/2addr v4, v9

    add-int v1, v3, v4

    .line 22
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    iget-object v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 24
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 25
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 26
    div-int/2addr v3, v9

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 27
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 28
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 29
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v1, :cond_5

    .line 30
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v1, v8

    goto :goto_2

    .line 31
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v2, v1, 0x3

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v4, v1

    div-int/2addr v4, v9

    add-int v1, v2, v4

    .line 32
    :goto_2
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v2, v8

    .line 33
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 36
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 37
    div-int/2addr v3, v9

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 39
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 40
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v1, :cond_7

    .line 41
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v1, v8

    goto :goto_3

    .line 42
    :cond_7
    iget v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v2, v1, 0x3

    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v9

    add-int v1, v2, v3

    .line 43
    :goto_3
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v2, v8

    .line 44
    iget-object v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    iget-object v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 47
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 48
    div-int/2addr v3, v9

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 49
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 50
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 51
    :goto_4
    iget-object p0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 52
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    iget-object v10, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    new-array v11, v8, [Landroid/widget/LinearLayout$LayoutParams;

    aput-object v0, v11, v6

    aput-object v1, v11, v5

    aput-object v10, v11, v9

    .line 54
    invoke-direct {p0, v11}, Lcom/android/camera/ui/GradienterDrawer;->resetParams([Landroid/widget/LinearLayout$LayoutParams;)V

    .line 55
    iget-object v11, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-direct {p0, v11, v6}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 56
    iget-object v11, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-direct {p0, v11, v6}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 57
    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$1;->$SwitchMap$com$android$camera$ui$GradienterDrawer$Direct:[I

    iget-object v12, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_b

    if-eq v11, v9, :cond_b

    if-eq v11, v8, :cond_9

    if-eq v11, v4, :cond_9

    goto :goto_6

    .line 58
    :cond_9
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v3, v9

    .line 59
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 61
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 62
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 63
    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 64
    iget-boolean v2, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v2, :cond_a

    .line 65
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 66
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 67
    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5

    .line 68
    :cond_a
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v4, v2, 0x3

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/lit8 v5, v2, 0x3

    sub-int v5, v4, v5

    div-int/2addr v5, v9

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 70
    div-int/2addr v2, v8

    sub-int/2addr v4, v2

    div-int/2addr v4, v9

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 71
    :goto_5
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    div-int/2addr v2, v9

    sub-int v2, v3, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 72
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    div-int/lit8 v4, v2, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 73
    div-int/2addr v2, v9

    sub-int/2addr v3, v2

    iput v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_6

    .line 74
    :cond_b
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v9

    .line 75
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 78
    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 81
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 82
    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 83
    div-int/2addr v3, v9

    sub-int v3, v2, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 84
    div-int/lit8 v3, v4, 0x2

    sub-int v3, v2, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 85
    div-int/2addr v4, v9

    sub-int/2addr v2, v4

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 86
    :goto_6
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object p0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-virtual {p0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    return-void
.end method

.method private varargs resetParams([Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 3

    .line 1
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 4
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setViewVisible(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateView()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 2
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x42b40000    # 90.0f

    :goto_0
    sub-float/2addr v0, v2

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 7
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 9
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    const/high16 v0, -0x3f600000    # -5.0f

    .line 10
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 11
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v2, 0x43b40000    # 360.0f

    goto :goto_0

    .line 12
    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_5

    move v0, v3

    .line 13
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v1, v2, :cond_6

    .line 15
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 16
    iput-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->resetMargin()V

    :cond_6
    cmpl-float v1, v0, v3

    if-nez v1, :cond_7

    const v1, -0xd32f01

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setLineShortColor(I)V

    goto :goto_2

    :cond_7
    const v1, -0x66000001

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setLineShortColor(I)V

    .line 20
    :goto_2
    iget-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 21
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView  rotationOffset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";  mDeviceRotation :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->invalidateView()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->updateView()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setConfigInfo(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    .line 4
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->updateView()V

    return-void
.end method

.method public setLineShortColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setReferenceLineEnabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    return-void
.end method

.method public setlineWidth(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    .line 3
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-void
.end method
