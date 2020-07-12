.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraSnapAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$BeautyRecordingListener;,
        Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;
    }
.end annotation


# static fields
.field private static final SNAP_ROUND_ORIGINAL_WIDTH:F = 0.688f

.field private static final mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field private mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

.field private mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

.field private mDownSpring:Lcom/facebook/rebound/Spring;

.field private mLiveSpeed:F

.field private mLiveStartTime:J

.field private mLiveTotalTime:J

.field private mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

.field private mModeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

.field private mReboundAnimator:Landroid/animation/ValueAnimator;

.field public mRecordSpring:Lcom/facebook/rebound/Spring;

.field private mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

.field private mRingAnimator:Landroid/animation/ValueAnimator;

.field private mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

.field private mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

.field private mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private mTimeAnimator:Landroid/animation/ValueAnimator;

.field public mUpSpring:Lcom/facebook/rebound/Spring;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    .line 2
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    sput-object v2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 3
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 4
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$16;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$16;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    .line 3
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    .line 4
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    .line 5
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    .line 6
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    .line 7
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveSpeed:F

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveTotalTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    return-object p0
.end method

.method private initReboundSystem()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mUpSpring:Lcom/facebook/rebound/Spring;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mUpSpring:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mUpSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$14;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$14;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$15;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$15;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private updateLiveAnimationConfig()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getRecordSpeed()F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveSpeed:F

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getTotalRecordingTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveTotalTime:J

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getStartRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveStartTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public addSegmentNow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->addSegmentNow(J)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public cancelRebound()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mReboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->resetRecordingState()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mUpSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :cond_0
    return-void
.end method

.method public directFinishRecord()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 4
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v5}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v5

    int-to-float v5, v5

    .line 6
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentValues(FIIF)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iput-boolean v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public finishRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mNeedFinishRecord:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$13;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$13;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->stopRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :goto_0
    return-void

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public hasSegments()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->hasSegments()Z

    move-result p0

    return p0
.end method

.method public hidePaintCenterVVItem()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public hideRoundPaintItem()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public initParameters(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initTargetValues(IZ)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    return-void
.end method

.method public initTargetValues(IZ)V
    .locals 12

    const/16 v0, 0xa1

    const v1, 0x3f3020c5    # 0.688f

    const v2, -0x1abd1

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x3f553f7d    # 0.833f

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    const v10, 0x3f0ccccd    # 0.55f

    const v11, 0x3f404189    # 0.751f

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v9, p2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v1, v9, p2, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v5, v9, v8, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v5, v9, v8, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v3, v9, v8, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v10, v9, p2, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    .line 8
    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    .line 9
    invoke-virtual {p1, v11, v9, p2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v8}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->setNeedSpacing(Z)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v11, v9, v8, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_0

    .line 12
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v9, v8, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v10, v2, v0, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    .line 15
    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    .line 16
    invoke-virtual {p1, v11, v9, v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->setNeedSpacing(Z)V

    .line 18
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v11, v9, v8, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const p2, 0x3f3be76d    # 0.734f

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v3, 0x400b851f    # 2.18f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v9, v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v1, v2, p2, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v5, v9, v8, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 22
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v5, v9, v8, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v3, v9, v8, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v10, v2, p2, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v11, v9, v8, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 26
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    sget p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    .line 27
    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    int-to-float p2, p2

    .line 28
    invoke-virtual {p0, v11, v9, p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 29
    :cond_2
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v9, p2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget p2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v1, v2, p2, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v5, v9, v8, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 32
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v5, v9, v8, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public pauseRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 2
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xa1

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0xb8

    const/16 v4, 0xb1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_4

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    iget v4, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const v1, 0x3f50027e

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    const v4, 0x400b851f    # 2.18f

    .line 8
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedProcessShade(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iput-boolean v7, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    iget v4, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    .line 18
    iget-boolean v8, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_0
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    .line 19
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_1

    .line 21
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    .line 23
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v0, v4, :cond_5

    if-ne v0, v3, :cond_6

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    .line 26
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    .line 27
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 29
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord()V

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iput-boolean v7, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    const/16 v1, 0xff

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 32
    iget-boolean v1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    aput v1, v0, v6

    aput v5, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$6;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeLastSegment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->getSegmentRatios()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->removeLastSegmentAndGetLastTime()J

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->resetRecordingState()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->resetRecordingState()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->resetRecordingState()V

    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->updateLiveAnimationConfig()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->setDurationText(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setWidthHeight(FF)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    .line 2
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    return-void
.end method

.method public showPaintCenterVVItem()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v2, 0x3f360419    # 0.711f

    const v3, -0x15a1c4

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->prepareRecord()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public showRoundPaintItem()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startModeChangeAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startRebound()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initReboundSystem()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mReboundAnimator:Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mReboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mReboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2134

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mReboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mReboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$18;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$18;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mReboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 4
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xae

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->updateLiveAnimationConfig()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    iget v1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-boolean p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 13
    :cond_3
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startRecordAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->finishRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :goto_0
    return-void
.end method

.method public startRingAnimation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setRingVisible(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$5;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startScaleDownAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    const v4, 0x3f2209ab

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0xc8

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$3;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

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

.method public stopRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 4
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xa1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    iget v4, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iput-boolean v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    const/16 v1, 0xff

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->setDurationText(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    const v1, 0x3f3be76d    # 0.734f

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v4, 0x400b851f    # 2.18f

    .line 10
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 12
    :cond_2
    :pswitch_0
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    .line 15
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    .line 16
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 17
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    .line 18
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    .line 19
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 20
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 21
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$9;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$9;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 24
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, v0, [F

    .line 26
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$11;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$11;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

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
.end method

.method public stopRingAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setRingVisible(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
