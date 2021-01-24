.class public Lcom/android/camera/ui/VideoTagView;
.super Ljava/lang/Object;
.source "VideoTagView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_TAG_MARGIN_LEFT:I

.field private static final DEFAULT_TAG_MARGIN_RIGHT:I

.field private static final SPLIT_LINE_MARGIN:I

.field private static final TAG:Ljava/lang/String; = "VideoTagView"

.field private static final VERTICAL_TAG:I = 0x64


# instance fields
.field private isRecordingPause:Z

.field private isShowTagValue:Z

.field private isTagRecording:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultTagWidth:I

.field private mExpandTagWidth:I

.field private mNeedRemoveTime:J

.field private mPauseRecordingTime:J

.field private mStartRecordingTime:J

.field private mTagCountValue:Landroid/widget/TextView;

.field private mTagDefaultLayout:Landroid/widget/LinearLayout;

.field private mTagExpandLayout:Landroid/widget/RelativeLayout;

.field private mTagFullLayout:Landroid/widget/LinearLayout;

.field private recordingPauseTagCount:I

.field private shapeHideAnimator:Landroid/animation/ValueAnimator;

.field private shapeShowAnimator:Landroid/animation/ValueAnimator;

.field private srtBuilder:Ljava/lang/StringBuilder;

.field private videoTagCount:I

.field private videoTagHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x416e6666    # 14.9f

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    const v0, 0x4151999a    # 13.1f

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    const v0, 0x410b3333    # 8.7f

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->SPLIT_LINE_MARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    .line 4
    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    .line 5
    new-instance v0, Lcom/android/camera/ui/VideoTagView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/VideoTagView$1;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    iput-object v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/VideoTagView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/VideoTagView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->shapeHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/VideoTagView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetTagView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/VideoTagView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->setTagLayoutWidth(I)V

    return-void
.end method

.method private getTime(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mStartRecordingTime:J

    sub-long/2addr p1, v0

    .line 2
    iget-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    sub-long/2addr p1, v0

    .line 3
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss,SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "GMT+00:00"

    .line 4
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initTagViewAnimator()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    sget v2, Lcom/android/camera/ui/VideoTagView;->SPLIT_LINE_MARGIN:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    iget v4, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    aput v4, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x12c

    .line 6
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v1, [I

    .line 7
    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/VideoTagView;->shapeHideAnimator:Landroid/animation/ValueAnimator;

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    new-instance v0, Lcom/android/camera/ui/VideoTagView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/VideoTagView$2;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->shapeHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetTagView()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    sget v4, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private setTagLayoutWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    if-eq p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetTagView()V

    :goto_0
    return-void
.end method

.method private setViewMargin(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 4
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method private updateTagValueView(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->initTagViewAnimator()V

    .line 6
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateTagView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetTagView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getVideoTagContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/android/camera/ui/VideoTagView;->mContext:Landroid/content/Context;

    const v0, 0x7f09026a

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090269

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09026b

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09026c

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sget v1, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    add-int/2addr p1, v1

    sget v1, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    sget v1, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    .line 11
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702a5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 13
    iget-object p2, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/ui/VideoTagView;->setViewMargin(Landroid/view/View;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    if-nez v0, :cond_0

    add-int/2addr v0, p1

    .line 5
    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    .line 6
    iget-wide v2, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/VideoTagView;->getTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->updateTagValueView(Landroid/widget/TextView;)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/VideoTagView;->getTime(J)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    .line 10
    iget-object v2, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v2, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "%s\n"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->updateTagValueView(Landroid/widget/TextView;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "VideoTagView"

    const-string v1, "handleTagRecordingPause: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    return-void
.end method

.method public resume()V
    .locals 4

    const-string v0, "VideoTagView"

    const-string v1, "handleTagRecordingResume: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2

    const-string p1, "VideoTagView"

    const-string v0, "handleTagRecordingStart: "

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mStartRecordingTime:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->updateTagView()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoTagView"

    const-string v1, "handleTagRecordingStop: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    .line 3
    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
