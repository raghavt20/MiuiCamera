.class public Lcom/android/camera/features/gif/GifFakeEditText;
.super Landroid/widget/TextView;
.source "GifFakeEditText.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/gif/GifFakeEditText;->mContext:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifFakeEditText;->initEditTextParam()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/gif/GifFakeEditText;->mContext:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifFakeEditText;->initEditTextParam()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    iput-object p1, p0, Lcom/android/camera/features/gif/GifFakeEditText;->mContext:Landroid/content/Context;

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifFakeEditText;->initEditTextParam()V

    return-void
.end method

.method private initEditTextParam()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v1, 0x20000

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/gif/GifFakeEditText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->getFZMiaoWuJWTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    .line 11
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 12
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x420c0000    # 35.0f

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 15
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
