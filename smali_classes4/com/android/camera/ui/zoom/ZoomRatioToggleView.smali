.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView;
.super Landroid/view/ViewGroup;
.source "ZoomRatioToggleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_OF_FADEOUT_ANIMATION:I = 0x190

.field private static final DEFAULT_DURATION_OF_MOVING_ANIMATION:I = 0x104

.field private static final INVALID_INDEX:I = -0x1

.field private static final INVALID_ZOOM_RATIO:F = -1.0f

.field private static final MOVING_DIRECTION_LEFT_TO_RIGHT:I = 0x1

.field private static final MOVING_DIRECTION_RIGHT_TO_LEFT:I = -0x1

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ZoomRatioToggleView"

.field private static final TIMEOUT_FOR_EXIT_ACTIVE_STATE:I = 0x7d0

.field private static final TOUCH_SCROLL_THRESHOLD:I = 0xa

.field private static final TOUCH_STATE_CLICK:I = 0x1

.field private static final TOUCH_STATE_HIDE_VIEW:I = 0x5

.field private static final TOUCH_STATE_IDLE:I = 0x0

.field private static final TOUCH_STATE_LONG_CLICK:I = 0x3

.field private static final TOUCH_STATE_SCROLL:I = 0x2

.field private static final TOUCH_STATE_SHOWVIEW:I = 0x4

.field private static final UI_DEBUG_ENABLED:Z

.field private static final VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field private mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

.field private mCircleSize:I

.field private mColor:I

.field private mCurrentModule:I

.field private mCurrentSelectedChildIndex:I

.field private mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mInactiveTask:Ljava/lang/Runnable;

.field private final mIndexUpdater:Ljava/lang/Runnable;

.field private mIsImmersive:Z

.field private mIsSuppressed:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mMovingAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

.field private mOverlayViewHasBeenAdded:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mScaleX:F

.field private mScaleY:F

.field private mSliderStateListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mTouchState:I

.field private final mUiHandler:Landroid/os/Handler;

.field private mUseSliderAllowed:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/16 p2, 0xa3

    .line 6
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 7
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleX:F

    .line 8
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleY:F

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    .line 12
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUiHandler:Landroid/os/Handler;

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayViewHasBeenAdded:Z

    .line 14
    new-instance p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mInactiveTask:Ljava/lang/Runnable;

    .line 16
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->init()V

    return-void
.end method

.method static synthetic a(Landroid/animation/AnimatorSet;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    return p0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startFadeInAnimation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSelectedChildIndex(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->longClickChild(I)V

    return-void
.end method

.method private announceCurrentZoomRatioForAccessibility()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v4, 0x7f100047

    .line 2
    invoke-direct {p0, v4, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 3
    invoke-direct {p0, v4, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private clickChildAt(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getMacroZoomRatioIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez v0, :cond_2

    .line 6
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->getMacroZoomRatioIndex(I)I

    move-result p1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    add-int/2addr p1, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 8
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    rem-int/2addr p1, v0

    goto :goto_0

    .line 9
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 10
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-le p1, v0, :cond_4

    :goto_1
    move p2, v1

    goto :goto_2

    .line 12
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->moveTo(IIIZ)V

    :cond_5
    return-void
.end method

.method private static debugUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->P:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Q:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private endTouch(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mSliderStateListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mSliderStateListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;

    invoke-interface {p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;->toShowSlideView()Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return-void
.end method

.method private ensureViewOverlayHasBeenAdded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayViewHasBeenAdded:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "addOverlayView()"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayViewHasBeenAdded:Z

    :cond_0
    return-void
.end method

.method private ensureViewOverlayHasBeenRemoved()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayViewHasBeenAdded:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "removeOverlayView()"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayViewHasBeenAdded:Z

    :cond_0
    return-void
.end method

.method private getContainingChildIndex(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getDimensionPixelSize(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getOverlayView()Lcom/android/camera/ui/zoom/ZoomRatioView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->ensureViewOverlayHasBeenAdded()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    return-object p0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f0701a5

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0701a2

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCircleSize:I

    const v0, 0x7f0702fd

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mStrokeWidth:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mStrokeColor:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mColor:I

    .line 9
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x104

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lc/c/a/a/l;

    invoke-direct {v1}, Lc/c/a/a/l;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lc/c/a/a/m;

    invoke-direct {v3}, Lc/c/a/a/m;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lc/c/a/a/m;

    invoke-direct {v1}, Lc/c/a/a/m;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 19
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 20
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lc/h/a/w;

    invoke-direct {v0}, Lc/h/a/w;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private isAnimating()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ZoomRatioToggleView"

    if-eqz v0, :cond_0

    const-string p0, "isAnimating(): move"

    .line 2
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isAnimating(): fadein"

    .line 4
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "isAnimating(): fadeout"

    .line 6
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private longClickChild(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getMacroZoomRatioIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-interface {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onLongClick(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    :cond_2
    return-void
.end method

.method private moveTo(IIIZ)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v3, p3

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move E: target = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " V.S. current = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ZoomRatioToggleView"

    invoke-static {v8, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v7, v5, :cond_5

    .line 2
    iget v5, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eq v7, v5, :cond_5

    iget-boolean v5, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez v5, :cond_5

    .line 3
    iget-object v5, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget v5, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    sub-int v5, v7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v9, 0x0

    if-eq v3, v2, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v10, v9

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v10, 0x104

    :goto_1
    mul-int v5, v5, p2

    .line 5
    iget v11, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    mul-int/2addr v5, v11

    .line 6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v13, v9

    :goto_2
    if-ge v13, v12, :cond_4

    .line 8
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 9
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v15

    if-ne v13, v7, :cond_2

    new-array v2, v4, [F

    .line 10
    fill-array-data v2, :array_0

    invoke-static {v14, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v4, [F

    aput v15, v2, v9

    int-to-float v9, v5

    add-float/2addr v15, v9

    const/4 v9, 0x1

    aput v15, v2, v9

    .line 11
    invoke-static {v14, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12
    :cond_2
    iget v2, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne v13, v2, :cond_3

    new-array v2, v4, [F

    .line 13
    fill-array-data v2, :array_1

    invoke-static {v14, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v4, [F

    const/4 v9, 0x0

    aput v15, v2, v9

    int-to-float v9, v5

    add-float/2addr v15, v9

    const/4 v9, 0x1

    aput v15, v2, v9

    .line 14
    invoke-static {v14, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-array v2, v4, [F

    .line 15
    fill-array-data v2, :array_2

    invoke-static {v14, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v4, [F

    const/4 v9, 0x0

    aput v15, v2, v9

    int-to-float v9, v5

    add-float/2addr v15, v9

    const/4 v9, 0x1

    aput v15, v2, v9

    .line 16
    invoke-static {v14, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 17
    :cond_4
    iget v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 18
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 19
    iput v7, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    .line 20
    iget-object v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v9, v10

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 21
    iget-object v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 22
    iget-object v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 23
    iget-object v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 24
    iget-object v9, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;ILcom/android/camera/ui/zoom/ZoomRatioView;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 26
    iget-object v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start moving to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :cond_5
    iget v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne v7, v0, :cond_8

    if-eqz p4, :cond_6

    .line 29
    iget-boolean v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_6

    iget-boolean v0, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "same index only run startFadeInAnimation"

    .line 30
    invoke-static {v8, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startFadeInAnimation()V

    .line 32
    :cond_6
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz v0, :cond_9

    .line 33
    iget v1, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    const/4 v1, 0x1

    if-eq v3, v1, :cond_7

    if-ne v3, v4, :cond_9

    .line 34
    :cond_7
    iget-object v1, v6, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v1, :cond_9

    .line 35
    invoke-interface {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onClick(Lcom/android/camera/ui/zoom/ZoomRatioView;)V

    goto :goto_4

    .line 36
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moving ignored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_9
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetAnimators()V
    .locals 3

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "resetAnimators"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleY:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleX:F

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/AnimatorSet;

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mMovingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/android/camera/ui/zoom/a;->a:Lcom/android/camera/ui/zoom/a;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setSelectedChildIndex(IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isLayoutRTL()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ge p1, v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->moveTo(IIIZ)V

    return-void
.end method

.method private startFadeInAnimation()V
    .locals 7

    .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 4
    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    const/4 v6, 0x2

    if-eq v3, v5, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private startLongPressCheck()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    add-int/lit8 v2, v1, -0xa

    if-lt v0, v2, :cond_1

    add-int/lit8 v1, v1, 0xa

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    add-int/lit8 v1, v0, -0xa

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/4 p0, 0x1

    return p0
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startLongPressCheck()V

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return-void
.end method

.method private toHideView()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mSliderStateListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;->isSliderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mSliderStateListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;->toHideSlideView()Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    :cond_1
    return-void
.end method

.method private toShowView(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mSliderStateListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;->toShowSlideView()Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x4

    .line 9
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return-void
.end method


# virtual methods
.method public isImmersive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    return p0
.end method

.method public isSuppressed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomRatioToggleView"

    const-string v0, "UI AUTOMATIC TEST: CLICKED"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAt(II)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCircleSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCircleSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCircleSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCircleSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 6
    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleX:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 7
    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    .line 9
    iget-object v12, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mStrokeColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v12, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getDefaultOpticalZoomRatioIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    .line 3
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v1, v0}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    .line 4
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object v0

    .line 5
    array-length v0, v0

    if-gtz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    iput-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 9
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-eq v0, v5, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 13
    invoke-virtual {v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v7, v5}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatioIcon(F)V

    .line 15
    invoke-virtual {v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v7, v5}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 17
    invoke-virtual {v6, v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatioIndex(I)V

    if-eq v5, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v4

    .line 18
    :goto_1
    invoke-virtual {v6, v7}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 19
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "ZoomRatioToggleView"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    return v2

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent() MOVE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent() DOWN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eq v0, v1, :cond_3

    return v2

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mInactiveTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTouch(Landroid/view/MotionEvent;)V

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {p2}, Lcom/android/camera/HybridZoomingSystem;->getDefaultOpticalZoomRatioIndex(I)I

    move-result p2

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isLayoutRTL()Z

    move-result p3

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 v0, p5, 0x2

    sub-int/2addr p4, v0

    mul-int/2addr p2, p5

    sub-int/2addr p4, p2

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 v0, p5, 0x2

    sub-int/2addr p4, v0

    mul-int/2addr p2, p5

    add-int/2addr p4, p2

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p2, p5

    const/4 p5, 0x0

    move v0, p5

    :goto_1
    if-ge v0, p1, :cond_3

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v2, p4

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v1, p4, p2, v2, v3}, Landroid/view/View;->layout(IIII)V

    if-nez p3, :cond_2

    .line 9
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr p4, v1

    goto :goto_2

    .line 10
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    sub-int/2addr p4, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    .line 17
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18
    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    .line 20
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    .line 21
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    invoke-virtual {p1, p5, p5, p2, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomRatioToggleView"

    const-string v0, "UI AUTOMATIC TEST: LONGCLICKED"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->longClickChild(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 6
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_1

    .line 7
    :cond_2
    div-int v0, v4, v3

    :goto_1
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    .line 8
    iput v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 13
    invoke-static {v2, p1, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 14
    invoke-static {v0, p2, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    const v0, 0x7f100047

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "ZoomRatioToggleView"

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/16 v4, 0x3e8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v0, v3, :cond_6

    const/4 v8, 0x3

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_6

    .line 3
    invoke-direct {p0, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    goto/16 :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent() MOVE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v3, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->toHideView()V

    .line 8
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v8, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v5, :cond_4

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    .line 13
    invoke-interface {v0, p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onTouch(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 14
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    .line 15
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v7, :cond_10

    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->toShowView(F)V

    goto/16 :goto_0

    .line 20
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent() UP: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_7

    .line 22
    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v3, :cond_7

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAt(II)V

    .line 24
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v5, :cond_8

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_8

    .line 26
    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    .line 27
    invoke-interface {v0, p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onTouch(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return v3

    .line 29
    :cond_8
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v7, :cond_9

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 33
    :cond_9
    invoke-direct {p0, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    goto :goto_0

    .line 34
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent() DOWN: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_c

    .line 36
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 38
    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eq v0, v4, :cond_c

    return v1

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUiHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mInactiveTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 41
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 42
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const-string v0, "onTouchEvent() start inactive timer"

    .line 43
    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startInactiveTimer()V

    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTouch(Landroid/view/MotionEvent;)V

    :cond_10
    :goto_0
    return v3
.end method

.method public setActionListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    return-void
.end method

.method public setCaptureCount(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setCaptureCount(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOverlayView()Lcom/android/camera/ui/zoom/ZoomRatioView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setCaptureCount(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCapturingMode(I)Z
    .locals 8

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    .line 2
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 5
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v2}, Lcom/android/camera/HybridZoomingSystem;->getDefaultOpticalZoomRatioIndex(I)I

    move-result v2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c00c1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 9
    invoke-virtual {v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    aget v6, p1, v3

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatioIcon(F)V

    .line 11
    invoke-virtual {v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    aget v6, p1, v3

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 13
    invoke-virtual {v5, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatioIndex(I)V

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 14
    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 15
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iput v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    .line 17
    aget p1, p1, v2

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    return v4

    :cond_3
    return v1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnabled(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomRatioToggleView"

    invoke-static {p1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImmersive(ZZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImmersive(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setImmersive() ignored: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOverlayView()Lcom/android/camera/ui/zoom/ZoomRatioView;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_0
    if-ge p2, p1, :cond_4

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez p1, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->ensureViewOverlayHasBeenRemoved()V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 13
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {p1, p2}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result p1

    const/4 p2, 0x1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSelectedChildIndex(IZ)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "setImmersive() start inactive timer"

    .line 17
    invoke-static {v1, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startInactiveTimer()V

    :cond_4
    return-void
.end method

.method public setRotation(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleX:F

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayViewHasBeenAdded:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mScaleY:F

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mOverlayViewHasBeenAdded:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setSlideStateListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mSliderStateListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$SliderStateListener;

    return-void
.end method

.method public setSuppressed(ZZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppressed(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSuppressed() ignored: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOverlayView()Lcom/android/camera/ui/zoom/ZoomRatioView;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_0
    if-ge p2, p1, :cond_4

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez p1, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->ensureViewOverlayHasBeenRemoved()V

    .line 13
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {p1, v0}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-ne v1, p1, :cond_3

    .line 16
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 17
    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setUseSliderAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderAllowed:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->viewVisibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    :cond_0
    return-void
.end method

.method public setZoomRatio(FI)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->getMacroZoomRatioIndex(I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result v0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomRatio(): zooming action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomRatioToggleView"

    invoke-static {v2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():  current index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():   current zoom = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():   target index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomRatio():    target zoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOverlayView()Lcom/android/camera/ui/zoom/ZoomRatioView;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    const-string p0, "setZoomRatio(): mIsSuppressed"

    .line 13
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-eqz p1, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOverlayView()Lcom/android/camera/ui/zoom/ZoomRatioView;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    const-string p0, "setZoomRatio(): mIsImmersive"

    .line 17
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    const-string p0, "setZoomRatio(): ignored as source is toggle button"

    .line 18
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    sget-boolean p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mInactiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 23
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setZoomRatio() must be called on main ui thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startInactiveTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mInactiveTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUiHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mInactiveTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
