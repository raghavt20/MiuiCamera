.class public Lcom/android/camera/features/gif/GifEditText;
.super Landroid/widget/EditText;
.source "GifEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/gif/GifEditText$TextJudge;,
        Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOverLimit:Z

.field private mItfTextChanged:Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText;->mContext:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditText;->initEditTextParam()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText;->mContext:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditText;->initEditTextParam()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText;->mContext:Landroid/content/Context;

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditText;->initEditTextParam()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/gif/GifEditText;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifEditText;->mIsOverLimit:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/features/gif/GifEditText;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifEditText;->mIsOverLimit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/features/gif/GifEditText;)Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditText;->mItfTextChanged:Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;

    return-object p0
.end method

.method private getLineCountMeasure(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700cc

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-int p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private initEditTextParam()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v1, 0x20000

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->getFZMiaoWuJWTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 v1, 0x420c0000    # 35.0f

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 11
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 12
    new-instance v0, Lcom/android/camera/features/gif/GifEditText$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/GifEditText$1;-><init>(Lcom/android/camera/features/gif/GifEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText;->mItfTextChanged:Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;

    return-void
.end method

.method public getMaxGifHeight()Lcom/android/camera/features/gif/GifEditText$TextJudge;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/camera/features/gif/GifEditText$TextJudge;

    invoke-direct {v2, p0}, Lcom/android/camera/features/gif/GifEditText$TextJudge;-><init>(Lcom/android/camera/features/gif/GifEditText;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v3, v4, :cond_1

    .line 5
    iput-boolean v5, p0, Lcom/android/camera/features/gif/GifEditText;->mIsOverLimit:Z

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/features/gif/GifEditText;->getLineCountMeasure(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v5, :cond_2

    move v3, v5

    :cond_2
    :goto_0
    if-ne v3, v5, :cond_3

    .line 7
    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->access$200(Lcom/android/camera/features/gif/GifEditText$TextJudge;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->access$300(Lcom/android/camera/features/gif/GifEditText$TextJudge;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v2

    :cond_3
    const/4 p0, 0x0

    move v4, p0

    move v6, v4

    :goto_1
    if-ge v4, v3, :cond_5

    if-gt v4, v5, :cond_5

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 10
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->access$200(Lcom/android/camera/features/gif/GifEditText$TextJudge;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v5, :cond_4

    .line 12
    invoke-virtual {v2, p0}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->setSingleLine(Z)V

    .line 13
    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->access$300(Lcom/android/camera/features/gif/GifEditText$TextJudge;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->access$300(Lcom/android/camera/features/gif/GifEditText$TextJudge;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    return-void
.end method
