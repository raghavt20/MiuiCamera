.class public Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraFocusSplitAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final BIG_ALPHA:I = 0xcd

.field public static BIG_RADIUS:I = 0x0

.field public static final CENTER_ALPHA:I = 0xf0

.field public static CENTER_BASE_RADIUS:I = 0x0

.field private static final CENTER_DOWN_SMALL:F = 0.85f

.field private static final CENTER_FOCUSING_BIG:F = 1.0f

.field private static final CENTER_FOCUSING_SMALL:F = 0.95f

.field private static final CIRCLE_DOWN_BIG:F = 1.1f

.field private static final CIRCLE_DOWN_SMALL:F = 0.94f

.field private static final LOCK_PAINT_COLOR:I = 0xffd322

.field private static final STATE_COMBO:I = 0x1

.field private static final STATE_SPLIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraFocusSplitAnimateDrawable"


# instance fields
.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mExposureBitmap:Landroid/graphics/Bitmap;

.field private mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mExposureLocked:Z

.field private mExposureLockedMap:Landroid/graphics/Bitmap;

.field private mExposureX:I

.field private mExposureY:I

.field private mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mFocusLocked:Z

.field private mFocusLockedBitmap:Landroid/graphics/Bitmap;

.field private mFocusMode:Ljava/lang/String;

.field private mFocusX:I

.field private mFocusY:I

.field private mFocusingAnimator:Landroid/animation/ValueAnimator;

.field private mIsTouchFocus:Z

.field private mOrientation:I

.field private mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field private mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

.field private mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field private mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

.field private mResetCenterAnimator:Landroid/animation/ValueAnimator;

.field private mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

.field private mState:I

.field private mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSuccessFlag:I

.field private mTouchDownAnimator:Landroid/animation/ValueAnimator;

.field private pendingState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mOrientation:I

    const-string v1, "auto"

    .line 3
    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusMode:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    .line 6
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    .line 7
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    .line 8
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    .line 9
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    .line 10
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xcd

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4, v3, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v4, v3, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    const/16 v2, 0xcc

    const/16 v5, 0xff

    invoke-static {v5, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v1, v6, v3, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0xf0

    invoke-virtual {p1, v1, v4, v7, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-static {v5, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v7, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 21
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->pendingState:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mIsTouchFocus:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusingAnimation()V

    return-void
.end method

.method private cancelSuccessAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private drawCombo(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->draw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSplit(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->draw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->draw(Landroid/graphics/Canvas;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private start3ALockSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    const-string v1, "start3ALockSuccessAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v4, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$7;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$7;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    new-instance v4, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$8;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$8;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v4, v0, [F

    .line 7
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 10
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$9;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$10;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    .line 12
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 15
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$11;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$11;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$12;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$12;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v4, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p2, v1, v0, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$13;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$13;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startFocusingAnimation()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    const-string v1, "startFocusingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->cancelFocusingAnimation()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Ld/h/a/E;

    invoke-direct {v2}, Ld/h/a/E;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$4;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data
.end method

.method private startNormalFocusSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    const-string v1, "startNormalFocusSuccessAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const v0, 0x3f59999a    # 0.85f

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$6;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$6;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelFocusingAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public cancelResetCenter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->drawCombo(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->drawSplit(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isExposureLocked()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFocusLocked()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFocusOrExposureLocked()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAeAfLockedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v0}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v0, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 4
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v0}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 7
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 8
    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLockedBitmap:Landroid/graphics/Bitmap;

    .line 9
    iput-object p3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCenter(II)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusX:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusY:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    int-to-float v1, p1

    int-to-float v2, p2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setExposureCenter(II)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusCenter(II)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setExposureCenter(II)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureX:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureY:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    int-to-float p1, p1

    int-to-float p2, p2

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFocusCenter(II)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusX:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusY:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    int-to-float p1, p1

    int-to-float p2, p2

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusMode:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mOrientation:I

    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startFocusFailAnimation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->cancelFocusingAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->pendingState:I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->pendingState:I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$14;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$14;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startFocusSuccessAnimation(IZI)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    const-string v1, "startFocusSuccessAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->cancelFocusingAnimation()V

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    .line 4
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    iput v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mIsTouchFocus:Z

    .line 7
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mIsTouchFocus:Z

    if-nez p1, :cond_1

    .line 8
    iput v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iput v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->pendingState:I

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_3

    .line 12
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->pendingState:I

    return-void

    .line 13
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    if-eq p1, p2, :cond_4

    if-ne p1, v0, :cond_5

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 15
    :cond_5
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    if-ne p1, p2, :cond_6

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 17
    :cond_6
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessFlag:I

    if-ne p1, v0, :cond_a

    if-eqz p3, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, p2, :cond_7

    goto :goto_0

    .line 18
    :cond_7
    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->start3ALockSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    goto :goto_0

    .line 20
    :cond_8
    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->start3ALockSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    goto :goto_0

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object p3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLockedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->start3ALockSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_d

    if-eq p3, v1, :cond_c

    if-eq p3, p2, :cond_b

    goto :goto_0

    .line 24
    :cond_b
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startNormalFocusSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    goto :goto_0

    .line 25
    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startNormalFocusSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    goto :goto_0

    .line 26
    :cond_d
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startNormalFocusSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V

    :goto_0
    return-void
.end method

.method public startTouchDownAnimation(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    const-string v1, "startTouchDownAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->cancelFocusingAnimation()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->cancelSuccessAnimation()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->cancelResetCenter()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->pendingState:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSplitBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 10
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 11
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    return-void
.end method
