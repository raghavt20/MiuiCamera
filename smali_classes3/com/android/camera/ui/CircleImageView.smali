.class public Lcom/android/camera/ui/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# instance fields
.field private colorRGBA:I

.field private mContext:Landroid/content/Context;

.field private mInnerRadius:I

.field private mOuterRadius:I

.field mPaintInner:Landroid/graphics/Paint;

.field mPaintOutter:Landroid/graphics/Paint;

.field mShowOutter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/CircleImageView;->mShowOutter:Z

    const v0, 0x418d5c29    # 17.67f

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CircleImageView;->mInnerRadius:I

    const v0, 0x41b2a3d7    # 22.33f

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CircleImageView;->mOuterRadius:I

    .line 5
    iput-object p1, p0, Lcom/android/camera/ui/CircleImageView;->mContext:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/CircleImageView;->initGlobalValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/android/camera/ui/CircleImageView;->mShowOutter:Z

    const p2, 0x418d5c29    # 17.67f

    .line 9
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/CircleImageView;->mInnerRadius:I

    const p2, 0x41b2a3d7    # 22.33f

    .line 10
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/CircleImageView;->mOuterRadius:I

    .line 11
    iput-object p1, p0, Lcom/android/camera/ui/CircleImageView;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/CircleImageView;->initGlobalValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/android/camera/ui/CircleImageView;->mShowOutter:Z

    const p2, 0x418d5c29    # 17.67f

    .line 15
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/CircleImageView;->mInnerRadius:I

    const p2, 0x41b2a3d7    # 22.33f

    .line 16
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/CircleImageView;->mOuterRadius:I

    .line 17
    iput-object p1, p0, Lcom/android/camera/ui/CircleImageView;->mContext:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lcom/android/camera/ui/CircleImageView;->initGlobalValue()V

    return-void
.end method

.method private getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/CircleImageView;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private initGlobalValue()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintInner:Landroid/graphics/Paint;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintOutter:Landroid/graphics/Paint;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintInner:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintInner:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintOutter:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintOutter:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintOutter:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 7
    iget v2, p0, Lcom/android/camera/ui/CircleImageView;->mInnerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/CircleImageView;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    iget-boolean v2, p0, Lcom/android/camera/ui/CircleImageView;->mShowOutter:Z

    if-eqz v2, :cond_0

    .line 9
    iget v2, p0, Lcom/android/camera/ui/CircleImageView;->mOuterRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/camera/ui/CircleImageView;->mPaintOutter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public updateView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/CircleImageView;->mShowOutter:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateView(ZI)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/ui/CircleImageView;->mShowOutter:Z

    .line 4
    iput p2, p0, Lcom/android/camera/ui/CircleImageView;->colorRGBA:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/CircleImageView;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/CircleImageView;->mPaintOutter:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
