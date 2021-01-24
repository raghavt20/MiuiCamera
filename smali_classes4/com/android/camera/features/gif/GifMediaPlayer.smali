.class public Lcom/android/camera/features/gif/GifMediaPlayer;
.super Ljava/lang/Object;
.source "GifMediaPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MimojiGifMediaPlayer"

.field private static volatile mIsLibLoaded:Z

.field private static final sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

.field private mEnableReverseFilter:Z

.field private mEnableSpeedFilter:Z

.field private mEnableSubtitleFilter:Z

.field private mEnableVideoSegmentFilter:Z

.field private mFitTextureView:Lcom/android/camera/features/gif/MiFitTextureView;

.field private mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

.field private mReverseFilterID:J

.field private mSourceID:J

.field private mSpeedFilterID:J

.field private mSubtitleFilterID:J

.field private mSurface:Landroid/view/Surface;

.field private mTextJudge:Lcom/android/camera/features/gif/GifEditText$TextJudge;

.field private mVideoPath:Ljava/lang/String;

.field private mVideoSegmentFilterID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/gif/GifMediaPlayer$1;

    invoke-direct {v0}, Lcom/android/camera/features/gif/GifMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V

    return-void
.end method

.method private CreateFilterByType(I)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/EffectType;->values()[Lcom/xiaomi/Video2GifEditer/EffectType;

    move-result-object p0

    aget-object p0, p0, p1

    .line 2
    sget-object p1, Lcom/android/camera/features/gif/GifMediaPlayer$2;->$SwitchMap$com$xiaomi$Video2GifEditer$EffectType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "speed"

    const-string v0, "2"

    .line 4
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->SetptsExtFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide v0

    .line 6
    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->SetptsExtFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p1, v0, v1, p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    move-wide p0, v0

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/xiaomi/Video2GifEditer/EffectType;->SubtitleFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide p0

    goto :goto_0

    .line 8
    :cond_2
    sget-object p0, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide p0

    goto :goto_0

    .line 9
    :cond_3
    sget-object p0, Lcom/xiaomi/Video2GifEditer/EffectType;->ReverseFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfb

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->coverGifSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimoji void startVideo2Gif[] progressValue  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MimojiGifMediaPlayer"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private configureTransform(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x44960000    # 1200.0f

    invoke-direct {v4, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 6
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v8, v0, :cond_1

    const/4 v8, 0x3

    if-ne v8, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v7, v0, :cond_2

    const/high16 p1, 0x43340000    # 180.0f

    .line 7
    invoke-virtual {v1, p1, v3, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v8, v3, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    sub-float v9, v6, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 9
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v4, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    div-float/2addr p2, v5

    div-float/2addr p1, v5

    .line 10
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11
    invoke-virtual {v1, p1, p1, v3, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x5a

    int-to-float p1, v0

    .line 12
    invoke-virtual {v1, p1, v3, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 13
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mFitTextureView:Lcom/android/camera/features/gif/MiFitTextureView;

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->loadLibrariesOnce(Lcom/android/camera/features/gif/MiLibLoader;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    const/16 v0, 0x7b

    invoke-static {p1, v0}, Lcom/xiaomi/MediaRecord/SystemUtil;->Init(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->ConstructMediaEffectGraph()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->SetAudioMute(Z)V

    .line 7
    new-instance p1, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1, v1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;-><init>(Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    .line 8
    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetGraphLoop(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayLoop(Z)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    sget-object p1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingDisableAudioDeviceMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    invoke-virtual {p0, p1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ConstructMediaPlayer(Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;)Z

    return-void
.end method

.method public static loadLibrariesOnce(Lcom/android/camera/features/gif/MiLibLoader;)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/camera/features/gif/GifMediaPlayer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    :cond_0
    const-string v1, "vvc++_shared"

    .line 4
    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_video2gif"

    .line 5
    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 6
    sput-boolean p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private releaseEffectPlayer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->StopPreView()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->DestructMediaPlayer()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    :cond_0
    return-void
.end method

.method private releaseMediaGraph()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->DestructMediaEffectGraph()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    :cond_0
    return-void
.end method


# virtual methods
.method public EnableReverseFilter(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    .line 8
    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    :cond_2
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public EnableSpeedFilter(Z)V
    .locals 14

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v9, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long p1, v9, v0

    if-eqz p1, :cond_1

    .line 6
    iget-object v8, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v11, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    .line 7
    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    .line 8
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public EnableSubtitleFilter(Z)V
    .locals 14

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableSubtitleFilter:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v9, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleFilterID:J

    cmp-long p1, v9, v0

    if-eqz p1, :cond_1

    .line 6
    iget-object v8, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v11, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    .line 7
    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleFilterID:J

    .line 8
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public EnableVideoSegmentFilter(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    .line 3
    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "show_video_segment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    iget-wide v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    invoke-static {p1, v1, v2, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public SetSpeedRatio(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SetSubtitleText()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    .line 2
    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleFilterID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/gif/GifEditText$TextJudge;

    invoke-virtual {v1}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "posx"

    const-string v2, "200"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "posy"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subtitle_width"

    const-string v2, "100"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subtitle_height"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "font_size"

    const-string v2, "36"

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/xiaomi/Video2GifEditer/EffectType;->SubtitleFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    iget-wide v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleFilterID:J

    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0, p2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/camera/features/gif/GifMediaPlayer;->configureTransform(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public pausePlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    :cond_0
    return-void
.end method

.method public playCameraRecord()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "casdfaf"

    invoke-static {v0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->StartPreView()V

    .line 6
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayLoop(Z)V

    goto :goto_1

    :cond_1
    const-string p0, "MimojiGifMediaPlayer"

    const-string v0, "mimoji void playCameraRecord[] null"

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public releaseMedia()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseEffectPlayer()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMediaGraph()V

    return-void
.end method

.method public resumePlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    :cond_0
    return-void
.end method

.method public setFitTextureView(Lcom/android/camera/features/gif/MiFitTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mFitTextureView:Lcom/android/camera/features/gif/MiFitTextureView;

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public setSubtitleTextString(Lcom/android/camera/features/gif/GifEditText$TextJudge;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubtitleTextString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimojiGifMediaPlayer"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/gif/GifEditText$TextJudge;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMedia()V

    .line 2
    sget-object v0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    invoke-direct {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddVideoSource(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->playCameraRecord()V

    return-void
.end method

.method public startVideo2Gif()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MimojiGifMediaPlayer"

    if-nez v0, :cond_0

    const-string p0, "mimoji void startVideo2Gif[] videpath null"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVideoSegmentFilter()I

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddReverseFilter()I

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/gif/GifEditText$TextJudge;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subtile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/gif/GifEditText$TextJudge;

    invoke-virtual {v3}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/gif/GifEditText$TextJudge;

    invoke-virtual {v2}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v2

    const-string v3, "textname"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "posx"

    const-string v3, "200"

    .line 12
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "posy"

    const-string v3, "370"

    .line 13
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subtitle_width"

    const-string v3, "100"

    .line 14
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subtitle_height"

    .line 15
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "font_size"

    const-string v3, "36"

    .line 16
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddSubtitleFilter(Ljava/util/Map;)I

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iget-boolean v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    if-eqz v2, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    :cond_4
    move v13, v0

    .line 19
    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MIMOJI_GIF_"

    const-string v3, "gif"

    invoke-static {v0, v3}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x7d0

    const/4 v6, 0x1

    const/16 v7, 0x14

    const/16 v8, 0x5dc

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1388

    .line 21
    new-instance v14, Lcom/android/camera/features/gif/a;

    invoke-direct {v14, v5}, Lcom/android/camera/features/gif/a;-><init>(Ljava/lang/String;)V

    invoke-static/range {v2 .. v14}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->Convert(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "mimoji void startVideo2Gif  Fail"

    .line 22
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfb

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz p0, :cond_5

    .line 25
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->coverGifError()V

    :cond_5
    return-void
.end method
