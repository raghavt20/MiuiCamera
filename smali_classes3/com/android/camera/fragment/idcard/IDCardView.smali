.class public Lcom/android/camera/fragment/idcard/IDCardView;
.super Landroid/view/View;
.source "IDCardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IDCardView"


# instance fields
.field private mBigColor:I

.field private mBitmap1:Landroid/graphics/Bitmap;

.field private mBitmap2:Landroid/graphics/Bitmap;

.field private mBitmap3:Landroid/graphics/Bitmap;

.field private mBitmap4:Landroid/graphics/Bitmap;

.field private mBitmapHeight:F

.field private mBitmapWidth:F

.field private mContext:Landroid/content/Context;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mHint:Ljava/lang/String;

.field private mIDCardRectF:Landroid/graphics/RectF;

.field private mMarginLeft:F

.field private mMarginTop:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectHeight:F

.field private mRectPaint:Landroid/graphics/Paint;

.field private mRectWidth:F

.field private mSignBitmap:Landroid/graphics/Bitmap;

.field private mSignMarginLeft:F

.field private mSignMarginTop:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/idcard/IDCardView;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method private decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IDCardView"

    const-string p2, "decodeResourceCatchOOM"

    .line 2
    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mContext:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0700f0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f060030

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBigColor:I

    const v0, 0x7f0700ec

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginLeft:F

    const v0, 0x7f0700ed

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginTop:F

    const v0, 0x7f0700ef

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    const v0, 0x7f0700ee

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    const v0, 0x7f0700ea

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0700eb

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x7f0700e8

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0700e9

    .line 20
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f080296

    .line 21
    invoke-direct {p0, p1, v4}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    const v4, 0x7f080297

    .line 22
    invoke-direct {p0, p1, v4}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap2:Landroid/graphics/Bitmap;

    const v4, 0x7f080298

    .line 23
    invoke-direct {p0, p1, v4}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap3:Landroid/graphics/Bitmap;

    const v4, 0x7f080299

    .line 24
    invoke-direct {p0, p1, v4}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap4:Landroid/graphics/Bitmap;

    const v4, 0x7f08029d

    .line 25
    invoke-direct {p0, p1, v4}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const v5, 0x7f08029b

    .line 26
    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 27
    iget-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    .line 28
    iget-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    const v6, 0x7f0f0122

    .line 29
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0f0121

    .line 30
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_0

    .line 31
    iput-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignMarginLeft:F

    .line 33
    iput v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignMarginTop:F

    .line 34
    iput-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 35
    :cond_0
    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    .line 36
    iput v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignMarginLeft:F

    .line 37
    iput v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignMarginTop:F

    .line 38
    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    .line 39
    :goto_0
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    .line 40
    iget-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginLeft:F

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 41
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginTop:F

    add-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 42
    iget v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    add-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    add-float/2addr v0, v3

    .line 43
    iget v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 44
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    .line 45
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 46
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const v1, 0x7f0700de

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    int-to-float p1, v1

    .line 49
    iget-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBigColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap4:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 16
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 18
    iget v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignMarginLeft:F

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignMarginTop:F

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method
