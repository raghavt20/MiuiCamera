.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraZoomAdjustPaint.java"


# static fields
.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SLIDER_BACK:I = 0x5

.field private static final ANIM_ZOOM:I = 0x1

.field private static final OVER_FOR_ROUND:I = 0x14

.field private static final RECT_WIDTH:I = 0x1e

.field public static SLIDER_HEIGHT:I

.field private static TOUCH_RECT_WIDTH:I


# instance fields
.field private mAnimState:I

.field public mIsHorizontal:Z

.field private mLineEndPosition:Landroid/graphics/Point;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartPosition:Landroid/graphics/Point;

.field private mMaxZoomRatio:F

.field private mMinZoomRatio:F

.field private mOrientation:I

.field public mSliderOriginalPosition:Landroid/graphics/Point;

.field private mSliderPaint:Landroid/graphics/Paint;

.field private mSliderPosition:Landroid/graphics/Point;

.field private mSliderTouchRect:Landroid/graphics/Rect;

.field private mSliderTouchUpPosition:Landroid/graphics/Point;

.field private mZoomLastColor:I

.field private mZoomLinePaint:Landroid/graphics/Paint;

.field private mZoomMidColor:I

.field private mZoomStartColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    .line 4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    .line 7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    .line 9
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07025a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x14

    sput p2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f07025d

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    .line 12
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    div-int/lit8 p2, p2, 0x2

    iput p2, v4, Landroid/graphics/Point;->y:I

    iput p2, v2, Landroid/graphics/Point;->y:I

    .line 14
    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p2, v3

    iput p2, v4, Landroid/graphics/Point;->x:I

    .line 16
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sget v2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v3, v2, 0x2

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p2, Landroid/graphics/Point;->y:I

    .line 17
    sget v3, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    add-int/lit8 v3, v3, 0x14

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 18
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    add-int/2addr v1, v2

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    div-int/lit8 p2, p2, 0x2

    iput p2, v4, Landroid/graphics/Point;->x:I

    iput p2, v2, Landroid/graphics/Point;->x:I

    .line 20
    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p2, v3

    iput p2, v4, Landroid/graphics/Point;->y:I

    .line 22
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sget v2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v3, v2, 0x2

    iput v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 23
    sget v3, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    add-int/lit8 v3, v3, 0x14

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p2, Landroid/graphics/Point;->y:I

    .line 24
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600c4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomMidColor:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600c2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLastColor:I

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v0, -0x1e

    int-to-float v4, v2

    int-to-float v5, v1

    add-int/lit8 v0, v0, 0x1e

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getSliderTouchRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    :cond_0
    iput v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {p1, v2, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sget v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {p1, v2, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    sget v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    add-int/2addr p0, v0

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public setZoomRange(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMinZoomRatio:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMaxZoomRatio:F

    return-void
.end method

.method public startSliderBackAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return-void
.end method

.method public updateSliderPositionForBackAnim(F)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    sget v4, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    sget v4, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    .line 7
    iput v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    :cond_2
    return-void
.end method
