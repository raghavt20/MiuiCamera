.class public Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
.super Ljava/lang/Object;
.source "BottomAnimationConfig.java"


# instance fields
.field public mCurrentMode:I

.field public mDuration:I

.field public mIsFPS960:Z

.field public mIsInMimojiCreate:Z

.field public mIsPostProcessing:Z

.field public mIsRecordingCircle:Z

.field public mIsRoundingCircle:Z

.field public mIsStart:Z

.field public mIsVideoBokeh:Z

.field public mNeedFinishRecord:Z

.field public mShouldRepeat:Z


# direct methods
.method private constructor <init>(ZIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    .line 3
    iput p2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    .line 4
    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    .line 6
    iput-boolean p5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    return-void
.end method

.method public static generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;-><init>(ZIZZZ)V

    return-object v6
.end method


# virtual methods
.method public configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    const/16 v1, 0xa1

    const/16 v2, 0xa2

    const/16 v3, 0x7d0

    const/16 v4, 0xb8

    const/16 v5, 0xb1

    const/16 v6, 0xad

    if-eqz v0, :cond_0

    .line 2
    iput v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-ne v0, v6, :cond_1

    .line 4
    iput v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7530

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v3, 0x3a98

    if-ne v0, v1, :cond_3

    .line 8
    iput v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xc9

    .line 10
    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;

    if-eqz v0, :cond_9

    .line 11
    iget v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-float v3, v3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getRecordSpeed()F

    move-result v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_3
    if-eq v0, v5, :cond_7

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v7, 0xae

    if-ne v0, v7, :cond_5

    const/16 v0, 0x3c28

    .line 12
    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_5
    const/16 v7, 0xb7

    if-ne v0, v7, :cond_6

    .line 13
    iput v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_6
    const/16 v0, 0x2710

    .line 14
    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    .line 15
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1388

    .line 16
    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    .line 17
    :cond_8
    iput v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 18
    :cond_9
    :goto_1
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-eq v0, v1, :cond_b

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_b

    if-ne v0, v2, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-nez v0, :cond_b

    :cond_a
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v0, v6, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_2

    :cond_b
    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    .line 19
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-ne v0, v6, :cond_c

    move v0, v3

    goto :goto_3

    :cond_c
    move v0, v7

    :goto_3
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    .line 20
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v0, v5, :cond_e

    if-ne v0, v4, :cond_d

    goto :goto_4

    :cond_d
    move v0, v7

    goto :goto_5

    :cond_e
    :goto_4
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRoundingCircle:Z

    .line 21
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v0, v6, :cond_f

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-eqz v0, :cond_10

    :cond_f
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    move v3, v7

    :goto_6
    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mNeedFinishRecord:Z

    return-object p0
.end method

.method public setSpecifiedDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    return-void
.end method
