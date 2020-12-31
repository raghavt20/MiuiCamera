.class public abstract Lcom/android/camera/ui/drawable/CameraPaintBase;
.super Ljava/lang/Object;
.source "CameraPaintBase.java"


# static fields
.field public static ALPHA_HINT:I = 0x66

.field public static ALPHA_OPAQUE:I = 0xff

.field public static ALPHA_OUTSTANDING:I = 0xff


# instance fields
.field public isClockwise:Z

.field public isRecording:Z

.field public mBaseRadius:F

.field public mCurrentAlpha:I

.field public mCurrentColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public mCurrentStrokeWidth:F

.field public mCurrentWidthPercent:F

.field protected mDstAlpha:I

.field private mDstBaseRadius:F

.field protected mDstColor:I

.field private mDstMiddleX:F

.field private mDstMiddleY:F

.field protected mDstStrokeWidth:F

.field protected mDstWidthPercent:F

.field public mMiddleX:F

.field public mMiddleY:F

.field public mPaint:Landroid/graphics/Paint;

.field public mSrcAlpha:I

.field private mSrcBaseRadius:F

.field public mSrcColor:I

.field private mSrcMiddleX:F

.field private mSrcMiddleY:F

.field public mSrcStrokeWidth:F

.field public mSrcWidthPercent:F

.field public needZero:Z

.field public timeAngle:F

.field public visible:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->initPaint(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public drawCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->isHide()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getVisible()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->visible:I

    return p0
.end method

.method protected abstract initPaint(Landroid/content/Context;)V
.end method

.method protected isHide()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->visible:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetRecordingState()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    return-void
.end method

.method public reverseClock()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    :goto_0
    return-void
.end method

.method public setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object p0
.end method

.method public setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setCurrentStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public setCurrentValues(FIIF)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    .line 3
    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 4
    iput p4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    return-object p0
.end method

.method public setMiddle(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleX:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleX:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleY:F

    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleY:F

    .line 3
    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcBaseRadius:F

    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstBaseRadius:F

    return-void
.end method

.method public setResult()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    .line 3
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 4
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstStrokeWidth:F

    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    .line 5
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleX:F

    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    .line 6
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleY:F

    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    .line 7
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstBaseRadius:F

    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    .line 12
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    .line 13
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    .line 14
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcStrokeWidth:F

    .line 15
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleX:F

    .line 16
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleY:F

    .line 17
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcBaseRadius:F

    return-void
.end method

.method public setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    .line 2
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    return-object p0
.end method

.method public setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    .line 2
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    return-object p0
.end method

.method public setTargetMiddle(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleX:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleY:F

    .line 3
    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstBaseRadius:F

    .line 4
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleX:F

    .line 5
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleY:F

    .line 6
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcBaseRadius:F

    return-void
.end method

.method public setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstStrokeWidth:F

    .line 2
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcStrokeWidth:F

    return-object p0
.end method

.method public setTargetValues(FIIF)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    .line 3
    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    .line 4
    iput p4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstStrokeWidth:F

    .line 5
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    .line 6
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    .line 7
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    .line 8
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcStrokeWidth:F

    return-void
.end method

.method public setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    .line 2
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    return-object p0
.end method

.method public setVisible(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->visible:I

    return-void
.end method

.method public updateValue(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleX:F

    sub-float/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstMiddleY:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcMiddleY:F

    sub-float/2addr v2, v3

    .line 3
    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstBaseRadius:F

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcBaseRadius:F

    sub-float/2addr v4, v5

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 4
    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    .line 5
    iput v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    mul-float/2addr v4, p1

    add-float/2addr v5, v4

    .line 6
    iput v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    .line 7
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 8
    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    .line 9
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstStrokeWidth:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcStrokeWidth:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 10
    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    if-eq v0, v1, :cond_0

    .line 13
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 14
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    .line 15
    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    if-eq v0, v1, :cond_1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 18
    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    :cond_2
    return-void
.end method
