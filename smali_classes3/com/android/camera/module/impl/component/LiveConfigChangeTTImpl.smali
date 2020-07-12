.class public Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;
.super Ljava/lang/Object;
.source "LiveConfigChangeTTImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;


# static fields
.field private static final MIN_RECORD_TIME:J = 0x1f4L

.field private static final START_OFFSET_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "LiveConfigChangeTTImpl"

.field private static final WHITE_INTENSITY:F = 0.2f


# instance fields
.field private final SPEEDS:[F

.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioController:Lcom/android/camera/module/AudioController;

.field private mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

.field private mAuthResult:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

.field private mBGMPath:Ljava/lang/String;

.field private mBeautyImpl:Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

.field private mConcatVideoPath:Ljava/lang/String;

.field private mConcatWavPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurrentSpeed:F

.field private mFilterImpl:Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mInputSurfaceReady:Z

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsFrontCamera:Z

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingPaused:Z

.field private mPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

.field private mRecordSegmentTimeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/TimeSpeedModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorder:Lcom/ss/android/vesdk/TERecorder;

.field private final mRecorderLock:Ljava/lang/Object;

.field private mReleased:Z

.field private mStartTime:J

.field private mStickerImpl:Lcom/android/camera/protocol/ModeProtocol$StickerProtocol;

.field private mStickerPath:Ljava/lang/String;

.field private mTTNativeIsInit:Z

.field private mTotalRecordingTime:J

.field private mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTTNativeIsInit:Z

    const/4 v1, 0x5

    new-array v1, v1, [F

    .line 4
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->SPEEDS:[F

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorderLock:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    .line 9
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance p1, Lcom/ss/android/vesdk/TERecorder;

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    .line 11
    new-instance p1, Lcom/android/camera/module/impl/component/LiveFilterChangeImpl;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p1, v1}, Lcom/android/camera/module/impl/component/LiveFilterChangeImpl;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mFilterImpl:Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;

    .line 12
    new-instance p1, Lcom/android/camera/module/impl/component/LiveBeautyChangeImpl;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p1, v1}, Lcom/android/camera/module/impl/component/LiveBeautyChangeImpl;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mBeautyImpl:Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

    .line 13
    new-instance p1, Lcom/android/camera/module/impl/component/LiveStickerChangeImpl;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p1, v1}, Lcom/android/camera/module/impl/component/LiveStickerChangeImpl;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mStickerImpl:Lcom/android/camera/protocol/ModeProtocol$StickerProtocol;

    .line 14
    new-instance p1, Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 p1, 0x3c28

    .line 15
    iput p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMaxVideoDurationInMs:I

    .line 16
    new-instance p1, Lcom/android/camera/module/AudioController;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mReleased:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCurrentSpeed:F

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;JF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->updateRecordingTime(JF)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Lcom/ss/android/vesdk/TERecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTTNativeIsInit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mStickerPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->updateBeauty()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private deleteLastSegment()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->deleteLastFrag()I

    return-void
.end method

.method private getTimestamp(Landroid/hardware/SensorEvent;)D
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide p0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 4
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-double p0, v0

    return-wide p0
.end method

.method private hasSegments()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resumeEffect()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->setAudioPath(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->STICKER_RESOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mStickerPath:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->setRecordSpeed(I)V

    return-void
.end method

.method private updateBeauty()V
    .locals 5

    const-string v0, "key_live_shrink_face_ratio"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const-string v2, "key_live_enlarge_eye_ratio"

    .line 2
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const-string v3, "key_live_smooth_strength"

    .line 3
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-gtz v4, :cond_1

    cmpl-float v4, v2, v1

    if-gtz v4, :cond_1

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->setBeautyFaceReshape(ZFF)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->setBeautify(ZF)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->setBeautyFaceReshape(ZFF)V

    .line 7
    invoke-virtual {p0, v1, v3}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->setBeautify(ZF)V

    :goto_1
    return-void
.end method

.method private updateRecordingTime(JF)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    float-to-long p1, p1

    const/4 p3, 0x0

    .line 9
    invoke-static {p1, p2, p3}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canRecordingStop()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->hasSegments()Z

    move-result p0

    return p0
.end method

.method public clearAudio()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mBGMPath:Ljava/lang/String;

    const/4 p0, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    .line 3
    invoke-virtual {v0, v3, p0, v2}, Lcom/ss/android/vesdk/TERecorder;->setRecordBGM(Ljava/lang/String;II)I

    .line 4
    invoke-static {v1, v1}, Lcom/android/camera/CameraSettings;->setCurrentLiveMusic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAuthResult()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAuthResult:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    const/4 v0, 0x3

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$5;->$SwitchMap$com$ss$android$vesdk$runtime$oauth$TEOAuthResult:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    if-eq p0, v0, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public getConcatResult()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mConcatWavPath:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mBGMPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 3
    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mConcatVideoPath:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getRecordSpeed()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCurrentSpeed:F

    return p0
.end method

.method public getSegmentSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStartRecordingTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mStartTime:J

    return-wide v0
.end method

.method public getTimeValue()Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3a98

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v0

    const/4 p0, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRecordingTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    return-wide v0
.end method

.method public initPreview(IIZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "live initPreview:"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mIsFrontCamera:Z

    .line 3
    new-instance v0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;-><init>()V

    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->build()Lcom/ss/android/vesdk/VEPreviewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    if-eqz p3, :cond_0

    .line 7
    sget-object p3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_BACK:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    .line 8
    :goto_0
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings;

    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    invoke-direct {v0, p3, p4, v1}, Lcom/ss/android/vesdk/VECameraSettings;-><init>(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;ILcom/ss/android/vesdk/VESize;)V

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/extra/DataItemLive;->getRecordSegmentTimeInfo()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    .line 10
    iget-boolean p3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInitialized:Z

    if-eqz p3, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/TERecorder;->setCameraSettings(Lcom/ss/android/vesdk/VECameraSettings;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 13
    invoke-static {p1}, Lcom/android/camera/module/impl/component/TimeSpeedModel;->calculateRealTime(Ljava/util/List;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    goto :goto_2

    .line 14
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    goto :goto_2

    .line 16
    :cond_2
    new-instance p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 17
    invoke-virtual {p3, p4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p3

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    .line 18
    invoke-virtual {p3, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p3

    .line 19
    invoke-virtual {p3, p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 21
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object p2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const/4 p3, 0x0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {p1, p2, p3, v1, v0}, Lcom/ss/android/vesdk/TERecorder;->init(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VECameraSettings;)I

    .line 22
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 23
    iget-object p2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/TERecorder;->tryRestore(I)I

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/TimeSpeedModel;->calculateRealTime(Ljava/util/List;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    .line 25
    iput-boolean p4, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    goto :goto_1

    .line 27
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    .line 28
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->clearEnv()I

    .line 29
    :goto_1
    iput-boolean p4, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInitialized:Z

    .line 30
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xc4

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;

    if-eqz p1, :cond_4

    .line 32
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;->onRecordSegmentCreated()V

    .line 33
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->resumeEffect()V

    return-void
.end method

.method public initResource()V
    .locals 8

    const-string v0, "live/"

    .line 1
    sget-object v1, Lcom/android/camera/module/impl/component/MyOwnMonitor;->Instance:Lcom/android/camera/module/impl/component/MyOwnMonitor;

    invoke-static {v1}, Lcom/ss/android/vesdk/VESDK;->setExternalMonitorListener(Lcom/ss/android/vesdk/runtime/VEExternalMonitorListener;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VESDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0f013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0f013c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getActivation()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v1, v3}, Lcom/ss/android/vesdk/runtime/VERuntime;->activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAuthResult:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAuthResult:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    sget-object v2, Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;->OK:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;->TBD:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAuthResult:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getActivationCode()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setActivation(Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activation success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAuthResult:Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_1
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->hasDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->RESOURCE_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeSureNoMedia(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    :cond_2
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->FILTER_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 14
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->RESOURCE_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 15
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->RESHAPE_DIR_NAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 16
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_TMP:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 17
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->CONCAT_VIDEO_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 18
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_LOCAL:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 19
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 20
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    :cond_3
    const v1, 0x8000

    .line 21
    :try_start_0
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "music_global.zip"

    .line 22
    sget-object v3, Lcom/android/camera/module/impl/component/FileUtils;->RESOURCE_LIST_GLOBAL:Ljava/util/List;

    goto :goto_2

    :cond_4
    const-string v2, "music_cn.zip"

    .line 23
    sget-object v3, Lcom/android/camera/module/impl/component/FileUtils;->RESOURCE_LIST_CN:Ljava/util/List;

    .line 24
    :goto_2
    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_LOCAL:Ljava/lang/String;

    invoke-static {v4, v2, v5, v1}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    .line 26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 27
    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/module/impl/component/FileUtils;->STICKER_RESOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3, v1}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    const-string v2, "live/Beauty_12.zip"

    sget-object v3, Lcom/android/camera/module/impl/component/FileUtils;->BEAUTY_12_DIR:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    const-string v2, "live/filter.zip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/module/impl/component/FileUtils;->RESOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mContext:Landroid/content/Context;

    const-string v0, "live/FaceReshape_V2.zip"

    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->RESHAPE_DIR_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    const-string v1, "verify asset zip failed..."

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_4
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->needUpdateEffectModelFiles()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 33
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->updateEffectModelFiles()V

    .line 34
    :cond_6
    sget-object p0, Lcom/android/camera/module/impl/component/FileUtils;->MODELS_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    return-void
.end method

.method public isRecording()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    return p0
.end method

.method public isRecordingPaused()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    return p0
.end method

.method public onDeviceRotationChange([F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setDeviceRotation([F)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRecordConcat(Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->hasSegments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    const-string p1, "record segments is empty, stop concat"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->CONCAT_VIDEO_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->CONCAT_VIDEO_DIR:Ljava/lang/String;

    const-string v2, "concat.mp4"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mConcatVideoPath:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->CONCAT_VIDEO_DIR:Ljava/lang/String;

    const-string v2, "concat.wav"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mConcatWavPath:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mConcatVideoPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mConcatWavPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder;->concatAsync(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRecordPause()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->stopRecord()I

    move-result v0

    .line 5
    sget-object v1, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecordResult onPause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEndFrameTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->deleteLastSegment()V

    .line 9
    sget-object v2, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recording time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", it\'s too short"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_2
    new-instance v2, Lcom/android/camera/module/impl/component/TimeSpeedModel;

    iget v3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCurrentSpeed:F

    float-to-double v3, v3

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/camera/module/impl/component/TimeSpeedModel;-><init>(JD)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/TimeSpeedModel;->calculateRealTime(Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setRecordSegmentTimeInfo(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onRecordResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCurrentSpeed:F

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->startRecord(FJ)I

    move-result v0

    .line 6
    sget-object v1, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecordResult onResume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->updateRecordingTime()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordReverse()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    const-string v1, "delete last frag !!!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/TimeSpeedModel;->calculateRealTime(Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    .line 6
    iget v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMaxVideoDurationInMs:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->updateRecordingTime(JF)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->deleteLastFrag()I

    return-void
.end method

.method public onRecordStart()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setRecordSegmentTimeInfo(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mBGMPath:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v3, v0, v2, v1}, Lcom/ss/android/vesdk/TERecorder;->setRecordBGM(Ljava/lang/String;II)I

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    iget v3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCurrentSpeed:F

    iget-wide v4, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/ss/android/vesdk/TERecorder;->startRecord(FJ)I

    move-result v0

    .line 7
    sget-object v3, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRecordResult onStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    .line 9
    iput-boolean v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->updateRecordingTime()V

    return-void
.end method

.method public onRecordStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->onRecordPause()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setRecordSegmentTimeInfo(Ljava/util/List;)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecordSegmentTimeInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecordingPaused:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->clearEnv()I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->getTimestamp(Landroid/hardware/SensorEvent;)D

    move-result-wide v8

    .line 5
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/16 v5, 0x9

    if-eq v1, v5, :cond_3

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-array v1, v5, [F

    .line 6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    new-array p1, v5, [D

    .line 7
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 8
    aget v2, v1, v3

    float-to-double v4, v2

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p0, p1, v8, v9}, Lcom/ss/android/vesdk/TERecorder;->slamProcessIngestOri([DD)I

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v3

    float-to-double v5, p0

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v4

    float-to-double v10, p0

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v2

    float-to-double p0, p0

    move-wide v2, v5

    move-wide v4, v10

    move-wide v6, p0

    invoke-virtual/range {v1 .. v9}, Lcom/ss/android/vesdk/TERecorder;->slamProcessIngestGra(DDDD)I

    goto :goto_1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v3

    float-to-double v5, p0

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v4

    float-to-double v10, p0

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v2

    float-to-double p0, p0

    move-wide v2, v5

    move-wide v4, v10

    move-wide v6, p0

    invoke-virtual/range {v1 .. v9}, Lcom/ss/android/vesdk/TERecorder;->slamProcessIngestGyr(DDDD)I

    goto :goto_1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v3

    float-to-double v5, p0

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v4

    float-to-double v10, p0

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v2

    float-to-double p0, p0

    move-wide v2, v5

    move-wide v4, v10

    move-wide v6, p0

    invoke-virtual/range {v1 .. v9}, Lcom/ss/android/vesdk/TERecorder;->slamProcessIngestAcc(DDDD)I

    .line 13
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mStickerImpl:Lcom/android/camera/protocol/ModeProtocol$StickerProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    return-void
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mReleased:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    const-string v2, "release"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorder;->stopRecord()I

    move-result v1

    .line 6
    sget-object v2, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRecordResult onRelease: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorder;->stopPreview()I

    move-result v1

    .line 8
    sget-object v2, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPreviewResult onRelease: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/TERecorder;->setNativeInitListener(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/TERecorder;->setRenderCallback(Lcom/ss/android/vesdk/TERecorder$IRenderCallback;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorder;->destroy()V

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceReady:Z

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 14
    iput-object v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    iput-object v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mHandler:Landroid/os/Handler;

    .line 17
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mBGMPath:Ljava/lang/String;

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, p0, v1}, Lcom/ss/android/vesdk/TERecorder;->setRecordBGM(Ljava/lang/String;II)I

    :cond_0
    return-void
.end method

.method public setBeautify(ZF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTTNativeIsInit:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 2
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->BEAUTY_12_DIR:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->setBeautyFace(ILjava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/vesdk/TERecorder;->setBeautyFaceIntensity(FF)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string p2, ""

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->setBeautyFace(ILjava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ss/android/vesdk/TERecorder;->setBeautyFaceIntensity(FF)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setBeautyFaceReshape(ZFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTTNativeIsInit:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    sget-object p0, Lcom/android/camera/module/impl/component/FileUtils;->RESHAPE_DIR_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, p2, p3}, Lcom/ss/android/vesdk/TERecorder;->setFaceReshape(Ljava/lang/String;FF)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    const-string p1, ""

    .line 3
    invoke-virtual {v0, p1, p0, p0}, Lcom/ss/android/vesdk/TERecorder;->setFaceReshape(Ljava/lang/String;FF)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setEffectAudio(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTTNativeIsInit:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 p0, p1, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->pauseEffectAudio(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFilter(ZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTTNativeIsInit:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->FILTER_DIR:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->setFilter(Ljava/lang/String;F)I

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    const-string p1, ""

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->setFilter(Ljava/lang/String;F)I

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setRecordSpeed(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->SPEEDS:[F

    aget p1, v0, p1

    iput p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCurrentSpeed:F

    return-void
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mInputSurfaceReady:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    const-string p1, "startPreview return"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$1;-><init>(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    new-instance v2, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$2;-><init>(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/TERecorder;->setNativeInitListener(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/TERecorder;->setRenderCallback(Lcom/ss/android/vesdk/TERecorder$IRenderCallback;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/TERecorder;->startPreview(Landroid/view/Surface;)I

    move-result p1

    .line 8
    sget-object v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    new-instance v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$3;-><init>(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/TERecorder;->addSlamDetectListener(Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mStickerImpl:Lcom/android/camera/protocol/ModeProtocol$StickerProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->release()V

    return-void
.end method

.method public updateRecordingTime()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_1
    new-instance v0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$4;

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mMaxVideoDurationInMs:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mTotalRecordingTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCurrentSpeed:F

    mul-float/2addr v1, v2

    float-to-long v3, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v1

    float-to-long v5, v2

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$4;-><init>(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mStartTime:J

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public updateRotation(FFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->mRecorder:Lcom/ss/android/vesdk/TERecorder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorder;->updateRotation(FFF)V

    :cond_0
    return-void
.end method
