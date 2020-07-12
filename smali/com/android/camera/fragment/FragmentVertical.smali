.class public Lcom/android/camera/fragment/FragmentVertical;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVertical.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$VerticalProtocol;


# instance fields
.field private mLeftAlertStatus:Landroid/widget/TextView;

.field private mLeftLightingPattern:Landroid/widget/TextView;

.field private mRightAlertStatus:Landroid/widget/TextView;

.field private mRightLightingPattern:Landroid/widget/TextView;

.field private mStateValueText:Ljava/lang/String;

.field private mVerticalViewMenu:Landroid/view/View;

.field private oldDegree:I

.field private stringLightingRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    return-void
.end method

.method private adjustViewHeight(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 2
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    sub-int/2addr v0, p0

    invoke-static {}, Lcom/android/camera/Util;->getBottomHeight()I

    move-result p0

    sub-int/2addr v0, p0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method private updateLightingRelativeView(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    const/16 v0, 0xab

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    .line 14
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    if-lez p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    .line 19
    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    if-lez p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 21
    :cond_5
    iget p1, p0, Lcom/android/camera/fragment/FragmentVertical;->oldDegree:I

    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->starAnimatetViewGone(Landroid/view/View;Z)V

    .line 30
    :cond_7
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->oldDegree:I

    return-void
.end method


# virtual methods
.method public alertLightingHint(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const p1, 0x7f0f012b

    goto :goto_0

    :cond_1
    const p1, 0x7f0f012e

    goto :goto_0

    :cond_2
    const p1, 0x7f0f012d

    :goto_0
    if-ne p1, v1, :cond_3

    const-string p1, ""

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff8

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0057

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0901cf

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mVerticalViewMenu:Landroid/view/View;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVertical;->mVerticalViewMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f09000b

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    const v0, 0x7f0900a9

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    const v0, 0x7f09000c

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    const v0, 0x7f0900aa

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    .line 13
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->oldDegree:I

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public isAnyViewVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
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

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentVertical;->isAnyViewVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 p2, 0x0

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentVertical;->updateLightingRelativeView(ZZ)V

    :cond_1
    return-void
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
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xab

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentVertical;->updateLightingRelativeView(ZZ)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc6

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setLightingPattern(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :pswitch_1
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :pswitch_2
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :pswitch_5
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :pswitch_6
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_7
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_8
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v1

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_9
    const p1, 0x7f0f0131

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    :pswitch_a
    const p1, 0x7f0f0132

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    :pswitch_b
    const p1, 0x7f0f0130

    .line 4
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    :pswitch_c
    const p1, 0x7f0f0137

    .line 5
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    :pswitch_d
    const p1, 0x7f0f0136

    .line 6
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    :pswitch_e
    const p1, 0x7f0f0133

    .line 7
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    :pswitch_f
    const p1, 0x7f0f0138

    .line 8
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    :pswitch_10
    const p1, 0x7f0f0134

    .line 9
    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    goto :goto_2

    .line 10
    :pswitch_11
    iput v1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    .line 11
    :goto_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    if-ne p1, v1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc6

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
