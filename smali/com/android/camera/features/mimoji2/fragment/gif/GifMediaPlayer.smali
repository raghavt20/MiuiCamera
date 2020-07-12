.class public Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;
.super Ljava/lang/Object;
.source "GifMediaPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.android.camera.features.mimoji2.fragment.gif.GifMediaPlayer"

.field private static mFitTextureView:Lcom/android/camera/features/mimoji2/fragment/gif/MiFitTextureView;

.field private static volatile mIsLibLoaded:Z

.field private static final sLocalLibLoader:Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;


# instance fields
.field private mCallback:Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;

.field private mContext:Landroid/content/Context;

.field private mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

.field private mEnableReverseFilter:Z

.field private mEnableSpeedFilter:Z

.field private mEnableSubtitleFilter:Z

.field private mEnableVideoSegmentFilter:Z

.field private mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

.field private mReverseFilterID:J

.field private mSourceID:J

.field private mSpeedFilterID:J

.field private mSubtitleFilterID:J

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextJudge:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;

.field private mVideoHeight:I

.field private mVideoInfo:Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

.field private mVideoSegmentFilterID:J

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$1;

    invoke-direct {v0}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mIsLibLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->initPlayer(Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;)V

    return-void
.end method

.method private CreateFilterByType(I)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/EffectType;->values()[Lcom/xiaomi/Video2GifEditer/EffectType;

    move-result-object p0

    aget-object p0, p0, p1

    .line 2
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$3;->$SwitchMap$com$xiaomi$Video2GifEditer$EffectType:[I

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

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private configureTransform(II)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x44960000    # 1200.0f

    invoke-direct {v3, v2, v2, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 6
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v7, p0, :cond_1

    const/4 v7, 0x3

    if-ne v7, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v6, p0, :cond_2

    const/high16 p0, 0x43340000    # 180.0f

    .line 7
    invoke-virtual {v0, p0, v2, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float v7, v2, v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v5, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 9
    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v3, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    div-float/2addr p2, v4

    div-float/2addr p1, v4

    .line 10
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11
    invoke-virtual {v0, p1, p1, v2, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr p0, v6

    mul-int/lit8 p0, p0, 0x5a

    int-to-float p0, p0

    .line 12
    invoke-virtual {v0, p0, v2, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 13
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mFitTextureView:Lcom/android/camera/features/mimoji2/fragment/gif/MiFitTextureView;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private initPlayer(Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->loadLibrariesOnce(Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    const/16 v0, 0x7b

    invoke-static {p1, v0}, Lcom/xiaomi/MediaRecord/SystemUtil;->Init(Landroid/content/Context;I)V

    .line 3
    new-instance p1, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-virtual {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->ConstructMediaEffectGraph()V

    .line 5
    new-instance p1, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;-><init>(Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ConstructMediaPlayer()Z

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$2;-><init>(Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/Video2GifEditer/EffectNotifier;)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer$SurfaceGravity;

    const/16 v0, 0x780

    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->setGravity(Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer$SurfaceGravity;II)V

    return-void
.end method

.method public static loadLibrariesOnce(Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;

    :cond_0
    const-string v1, "c++_shared"

    .line 4
    invoke-interface {p0, v1}, Lcom/android/camera/features/mimoji2/fragment/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "mimoji_video2gif"

    .line 5
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 6
    sput-boolean p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mIsLibLoaded:Z

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


# virtual methods
.method public EnableReverseFilter(Z)V
    .locals 10

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mReverseFilterID:J

    .line 4
    iget-wide v5, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v5, v0

    if-eqz p1, :cond_0

    .line 5
    iget-object v4, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v7, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v3, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2

    .line 8
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    .line 9
    iput-wide v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mReverseFilterID:J

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public EnableSpeedFilter(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iput-boolean v1, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    .line 2
    iget-object v2, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    .line 3
    invoke-direct {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSpeedFilterID:J

    .line 4
    iget-wide v7, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long v1, v7, v2

    if-eqz v1, :cond_1

    .line 5
    iget-object v6, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v9, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v13, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long v1, v13, v2

    if-eqz v1, :cond_1

    .line 7
    iget-object v12, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v4, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/16 v17, 0x1

    move-wide v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    .line 8
    iput-wide v2, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSpeedFilterID:J

    .line 9
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public EnableSubtitleFilter(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iput-boolean v1, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableSubtitleFilter:Z

    .line 2
    iget-object v2, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    .line 3
    invoke-direct {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSubtitleFilterID:J

    .line 4
    iget-wide v7, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSubtitleFilterID:J

    cmp-long v1, v7, v2

    if-eqz v1, :cond_1

    .line 5
    iget-object v6, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v9, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v13, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSubtitleFilterID:J

    cmp-long v1, v13, v2

    if-eqz v1, :cond_1

    .line 7
    iget-object v12, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v4, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/16 v17, 0x1

    move-wide v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    .line 8
    iput-wide v2, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSubtitleFilterID:J

    .line 9
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public EnableVideoSegmentFilter(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iput-boolean v1, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    .line 2
    iget-object v2, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    .line 3
    invoke-direct {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    .line 4
    iget-wide v7, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    cmp-long v1, v7, v2

    if-eqz v1, :cond_1

    .line 5
    iget-object v6, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v9, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v13, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    cmp-long v1, v13, v2

    if-eqz v1, :cond_1

    .line 7
    iget-object v12, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v4, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    const/16 v17, 0x1

    move-wide v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    .line 8
    iput-wide v2, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    .line 9
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public PlayCameraRecord()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoInfo:Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->StartPreView()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayLoop(Z)V

    :cond_0
    return-void
.end method

.method public SetSpeedRatio(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SetSubtitleText()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    .line 2
    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSubtitleFilterID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "200"

    const-string v2, "posx"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "posy"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "100"

    const-string v2, "subtitle_width"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subtitle_height"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "font_size"

    const-string v2, "36"

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/xiaomi/Video2GifEditer/EffectType;->SubtitleFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    iget-wide v2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSubtitleFilterID:J

    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageContentUri filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v6, v8

    const-string v5, "_data=? "

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "getImageContentUri cursor != null "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string p1, "content://media/external/video/media"

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 10
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImageContentUri uriresult =  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 12
    sget-object p2, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "getImageContentUri  11111"

    invoke-static {p2, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    .line 14
    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    const-string v3, "image/gif"

    .line 15
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p1, p0}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 17
    sget-object v3, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert result:2222  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    .line 18
    invoke-static {p1, v8, p0}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v0, v2, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 20
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert result:444444    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_2
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImageContentUri uriresult5555 =  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    return-object v1
.end method

.method public getVideoInfo()Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoInfo:Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

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
    invoke-direct {p0, p2, p3}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->configureTransform(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setFitTextureView(Lcom/android/camera/features/mimoji2/fragment/gif/MiFitTextureView;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mFitTextureView:Lcom/android/camera/features/mimoji2/fragment/gif/MiFitTextureView;

    .line 2
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mFitTextureView:Lcom/android/camera/features/mimoji2/fragment/gif/MiFitTextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public setSubtitleTextString(Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;-><init>(Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoInfo:Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoInfo:Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddVideoSource(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mSourceID:J

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetAudioMute(Z)V

    .line 4
    iput-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mCallback:Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;

    return-void
.end method

.method public startVideo2Gif()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVideoSegmentFilter()I

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddReverseFilter()I

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mTextJudge:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "posx"

    const-string v2, "200"

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "posy"

    const-string v2, "370"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "100"

    const-string v2, "subtitle_width"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subtitle_height"

    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "font_size"

    const-string v2, "36"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddSubtitleFilter(Ljava/util/Map;)I

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    if-eqz v1, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    :cond_3
    move v12, v0

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoInfo:Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mVideoInfo:Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer$VideoInfo;->getVideoGifUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x14

    const/16 v7, 0x5dc

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1388

    iget-object v13, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mCallback:Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;

    invoke-static/range {v1 .. v13}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->Convert(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    .line 17
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method
