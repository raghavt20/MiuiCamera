.class public Lcom/ss/android/ttve/utils/CameraInstance;
.super Ljava/lang/Object;
.source "CameraInstance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ASSERT_MSG:Ljava/lang/String; = "\u68c0\u6d4b\u5230CameraDevice \u4e3a null! \u8bf7\u68c0\u67e5"

.field public static final DEFAULT_PREVIEW_RATE:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "CameraInstance"

.field private static mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;


# instance fields
.field private comparatorBigger:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private comparatorSmaller:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mDefaultCameraID:I

.field private mFacing:I

.field private mIsPreviewing:Z

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPreferPreviewHeight:I

.field private mPreferPreviewWidth:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    const/16 v1, 0x500

    .line 4
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    const/16 v2, 0x2d0

    .line 5
    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    .line 6
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewWidth:I

    .line 7
    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewHeight:I

    .line 8
    iput v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    .line 9
    new-instance v0, Lcom/ss/android/ttve/utils/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/utils/CameraInstance$1;-><init>(Lcom/ss/android/ttve/utils/CameraInstance;)V

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    .line 10
    new-instance v0, Lcom/ss/android/ttve/utils/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/utils/CameraInstance$2;-><init>(Lcom/ss/android/ttve/utils/CameraInstance;)V

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorSmaller:Ljava/util/Comparator;

    return-void
.end method

.method private static clamp(I)I
    .locals 2

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    .line 1
    invoke-static {p0, v0, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(III)I

    move-result p0

    return p0
.end method

.method private static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/ss/android/ttve/utils/CameraInstance;
    .locals 2

    const-class v0, Lcom/ss/android/ttve/utils/CameraInstance;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ss/android/ttve/utils/CameraInstance;->mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ss/android/ttve/utils/CameraInstance;

    invoke-direct {v1}, Lcom/ss/android/ttve/utils/CameraInstance;-><init>()V

    sput-object v1, Lcom/ss/android/ttve/utils/CameraInstance;->mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;

    .line 3
    :cond_0
    sget-object v1, Lcom/ss/android/ttve/utils/CameraInstance;->mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    neg-int p1, p1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 8
    iget v1, p1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 11
    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-virtual {p2, p0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget p0, v0, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget p1, v0, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iget p2, v0, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p3, p0, p1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setCameraDisplayOrientation(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    .line 3
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->setOrientationDegrees(I)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    return-void
.end method


# virtual methods
.method public calculateTapArea(FFFI)Landroid/graphics/Rect;
    .locals 5

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    .line 1
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v1, 0x3e8

    sub-int/2addr p1, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr p2, v1

    .line 2
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    const/16 v2, -0x3e8

    invoke-static {p1, v2, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(III)I

    move-result p1

    sub-int/2addr p2, v0

    .line 3
    invoke-static {p2, v2, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(III)I

    move-result p2

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    add-int/2addr p1, p3

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    int-to-float p1, p1

    add-int/2addr p2, p3

    invoke-static {p2}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p1, p2, p3, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    invoke-direct {p0, p4, p2, p1}, Lcom/ss/android/ttve/utils/CameraInstance;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8
    new-instance p0, Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v1

    iget p3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v1

    iget p4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 10
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 11
    iget p1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 12
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public focusAtPoint(FF)V
    .locals 1

    const v0, 0x3da3d70a    # 0.08f

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->focusAtPoint(FFF)V

    return-void
.end method

.method public declared-synchronized focusAtPoint(FFF)V
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const-string p1, "CameraInstance"

    const-string p2, "Error: focus after release."

    .line 3
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->calculateTapArea(FFFI)Landroid/graphics/Rect;

    move-result-object p1

    const-string p2, "CameraInstance"

    const-string p3, "FocusAreas: [%d, %d, %d, %d]"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance p3, Landroid/hardware/Camera$Area;

    const/16 v0, 0x3e8

    invoke-direct {p3, p1, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 12
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string p3, "Multilaser"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string p3, "MS40"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 15
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    const-string p2, "continuous-video"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 17
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    new-instance p2, Lcom/ss/android/ttve/utils/CameraInstance$3;

    invoke-direct {p2, p0}, Lcom/ss/android/ttve/utils/CameraInstance$3;-><init>(Lcom/ss/android/ttve/utils/CameraInstance;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "CameraInstance"

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: focusAtPoint failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "CameraInstance"

    const-string p2, "The device does not support metering areas..."

    .line 19
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    return-object p0
.end method

.method public getCameraFacing()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    return p0
.end method

.method public declared-synchronized getParams()Landroid/hardware/Camera$Parameters;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRotation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    return p0
.end method

.method public initCamera(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    const-string v1, "CameraInstance"

    if-nez v0, :cond_0

    const-string p0, "initCamera: Camera is not opened!"

    .line 2
    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "Picture Format: %x"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 8
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v5, v2

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    if-eqz v5, :cond_3

    .line 11
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    if-lt v7, v8, :cond_2

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    iget v8, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    if-lt v7, v8, :cond_2

    :cond_3
    move-object v5, v6

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 13
    iget-object v6, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    new-array v7, v7, [Ljava/lang/Object;

    .line 15
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "Supported preview size: %d x %d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6

    .line 16
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewWidth:I

    if-lt v7, v8, :cond_5

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    iget v8, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewHeight:I

    if-lt v7, v8, :cond_5

    :cond_6
    move-object v2, v6

    goto :goto_2

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 18
    iget-object v6, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v8, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 19
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v6, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 20
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v5, "continuous-video"

    .line 21
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 22
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_8
    const/16 v2, 0x1e

    mul-int/lit8 v5, p1, 0x2

    .line 23
    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 p1, p1, 0x4

    .line 24
    div-int/lit8 p1, p1, 0x3

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v4

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Supported frame rate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v6, v9, :cond_a

    .line 28
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 29
    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v2, v9, :cond_9

    .line 30
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    .line 31
    :cond_b
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 32
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FpsRange = ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v2, v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    new-array p1, v7, [I

    .line 35
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v4

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_4
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 40
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 42
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewWidth:I

    .line 43
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewHeight:I

    .line 44
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    .line 45
    iget v5, p1, Landroid/hardware/Camera$Size;->height:I

    iput v5, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    new-array p0, v7, [Ljava/lang/Object;

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v4

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "Camera Picture Size: %d x %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v7, [Ljava/lang/Object;

    .line 47
    iget p1, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    iget p1, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "Camera Preview Size: %d x %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isCameraOpened()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviewing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    return p0
.end method

.method public isUsingFrontCamera()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pictureHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    return p0
.end method

.method public pictureWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    return p0
.end method

.method public previewHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewHeight:I

    return p0
.end method

.method public previewWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewWidth:I

    return p0
.end method

.method public declared-synchronized setFocusMode(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOrientationDegrees(I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2
    iget v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 3
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    add-int/lit16 p1, p1, 0xb4

    .line 5
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 6
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 7
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method public declared-synchronized setParams(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 3
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPictureSize(IIZ)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    .line 3
    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 7
    iget-object p3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_2

    .line 9
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v2, p1, :cond_1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    if-lt v2, p2, :cond_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 10
    :cond_3
    iget-object p3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorSmaller:Ljava/util/Comparator;

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_5

    .line 12
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, p1, :cond_4

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    if-gt v2, p2, :cond_4

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 13
    iget p1, v1, Landroid/hardware/Camera$Size;->width:I

    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    :cond_7
    if-eqz v1, :cond_8

    .line 14
    iget p1, v1, Landroid/hardware/Camera$Size;->height:I

    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_8
    :try_start_2
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    iget p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    iget p3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 16
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreferPreviewSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewHeight:I

    .line 2
    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewWidth:I

    return-void
.end method

.method public declared-synchronized startPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraInstance"

    const-string v1, "Camera startPreview..."

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    const-string p1, "CameraInstance"

    const-string v0, "Camera is previewing..."

    .line 3
    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 7
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "CameraInstance"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopCamera()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraInstance"

    const-string v1, "stopCamera..."

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    .line 4
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 8
    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraInstance"

    const-string v1, "Camera stopPreview..."

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    .line 4
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const-string v0, "CameraInstance"

    const-string v1, "Camera stopped!"

    .line 5
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryOpenCamera(Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->tryOpenCamera(Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized tryOpenCamera(Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraInstance"

    const-string v1, "try open camera..."

    .line 2
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 4
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 5
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    .line 6
    invoke-static {v4, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 7
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, p2, :cond_0

    .line 8
    iput v4, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    .line 9
    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/ttve/utils/CameraInstance;->stopPreview()V

    .line 11
    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->release()V

    .line 13
    :cond_2
    iget p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    if-ltz p2, :cond_3

    .line 14
    iget p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    invoke-static {p2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    .line 16
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    .line 17
    :goto_1
    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->setOrientationDegrees(I)I

    move-result p2

    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    const-string p2, "CameraInstance"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p2, :cond_5

    const-string p2, "CameraInstance"

    const-string v2, "Camera opened!"

    .line 20
    invoke-static {p2, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 p2, 0x1e

    .line 21
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/utils/CameraInstance;->initCamera(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    .line 22
    :try_start_4
    invoke-interface {p1}, Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;->cameraReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :cond_4
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 24
    :catch_0
    :try_start_5
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 25
    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 26
    monitor-exit p0

    return v1

    .line 27
    :cond_5
    monitor-exit p0

    return v1

    :catch_1
    move-exception p1

    :try_start_6
    const-string p2, "CameraInstance"

    const-string v2, "Open Camera Failed!"

    .line 28
    invoke-static {p2, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 31
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
