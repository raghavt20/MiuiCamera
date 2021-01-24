.class public Lcom/android/camera/ui/V6GestureRecognizer;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;
    }
.end annotation


# static fields
.field public static final GESTURE_EFFECT_CROP_VIEW:I = 0x6

.field public static final GESTURE_EV_ADJUST:I = 0x7

.field public static final GESTURE_HON:I = 0x64

.field public static final GESTURE_NONE:I = 0x0

.field public static final GESTURE_TRACK:I = 0xa

.field public static final GESTURE_VER:I = 0xc8

.field public static final GESTURE_ZOOM:I = 0x9

.field public static final SINGLE_MAX_GESTURE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CameraGestureRecognizer"

.field private static sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;


# instance fields
.field private final MIN_DETECT_DISTANCE:I

.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

.field private mCurrentModule:Lcom/android/camera/module/Module;

.field private mDistanceX:F

.field private mDistanceY:F

.field private mEdgeGesture:I

.field private mGesture:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureDetectorEnable:Z

.field private mInScaling:Z

.field private final mScaleDetector:Lcom/android/camera/ui/zoom/ScaleGestureDetector;

.field private mScaleDetectorEnable:Z

.field private mScrollDirection:I

.field private mScrolled:Z

.field private mTouchDown:Z


# direct methods
.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetectorEnable:Z

    .line 6
    check-cast p1, Lcom/android/camera/Camera;

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    .line 10
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v1, p1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 11
    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer$1;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/ui/V6GestureRecognizer$1;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Lcom/android/camera/ui/zoom/ScaleGestureDetector;

    .line 12
    new-instance p1, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return p0
.end method

.method static synthetic access$1016(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return p0
.end method

.method static synthetic access$212(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return p0
.end method

.method static synthetic access$916(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return v0
.end method

.method private checkControlView(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isAutoZoomViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isZoomAdjustVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isSplitFocusExposureDown()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f090259

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    const v1, 0x7f09025a

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const v1, 0x7f09024d

    .line 7
    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewMoved()Z

    move-result v1

    const/4 v3, 0x6

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewMoved()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    :cond_3
    const/4 v1, 0x2

    .line 13
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isIndicatorVisible(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v1

    const v3, 0x7f09024f

    .line 15
    invoke-interface {v0, v3, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    .line 16
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result p1

    const/4 v0, 0x7

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    .line 21
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private couldNotifyGesture(Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getActivity()Lcom/android/camera/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;
    .locals 2

    const-class v0, Lcom/android/camera/ui/V6GestureRecognizer;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-eq p0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V

    sput-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMoveVector(IIII)Landroid/graphics/Point;
    .locals 0

    .line 1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    sub-int/2addr p1, p3

    .line 2
    iput p1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p4

    .line 3
    iput p2, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method private isCurrentModuleAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isDeparted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGestureDetecting(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    :goto_0
    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static onDestroy(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 3
    sput-object p0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentGesture()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public getGestureOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public isGestureDetecting()Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent mGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraGestureRecognizer"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 5
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    .line 7
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6GestureRecognizer;->setGestureDetectorEnable(Z)V

    goto :goto_1

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    if-nez v0, :cond_2

    return v2

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 12
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    .line 14
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_7

    .line 15
    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    .line 16
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    .line 17
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    .line 18
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_7
    const-string v0, "set to detector"

    .line 19
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    if-eqz v0, :cond_8

    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Lcom/android/camera/ui/zoom/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->checkControlView(Landroid/view/MotionEvent;)Z

    .line 24
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetectorEnable:Z

    if-eqz v0, :cond_9

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v0

    xor-int/2addr v0, v4

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_a

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 29
    :cond_a
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 30
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    .line 31
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    .line 32
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    .line 33
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    .line 34
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_b
    return v0
.end method

.method public setCurrentModule(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-void
.end method

.method public setGesture(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return-void
.end method

.method public setGestureDetectorEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetectorEnable:Z

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setGestureDetectorEnable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraGestureRecognizer"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScaleDetectorEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScaleDetectorEnable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraGestureRecognizer"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
