.class public Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;
.super Ljava/lang/Object;
.source "MimojiAvatarEngine2Impl.java"

# interfaces
.implements Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2Base;


# static fields
.field public static final DELETE_GIF:I = 0x3

.field public static final DELETE_MIMOJI_ALL:I = 0x0

.field public static final DELETE_MIMOJI_EMOTICON:I = 0x2

.field public static final DELETE_MIMOJI_VIDEO:I = 0x1

.field private static final FLAG_HAS_FACE:I = 0xa

.field private static final FLAG_INIT_FACE:I = 0x0

.field private static final HANDLER_RECORDING_CURRENT_FILE_SIZE:I = 0x3

.field private static final HANDLER_RECORDING_CURRENT_TIME:I = 0x1

.field private static final HANDLER_RECORDING_MAX_DURATION_REACHED:I = 0x2

.field private static final HANDLER_RECORDING_MAX_FILE_SIZE_REACHED:I = 0x4

.field private static final HANDLER_RESOURCE_ERROR_BROKEN:I = 0x0

.field private static final START_OFFSET_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "Mimoji2Impl"


# instance fields
.field private mActivityBase:Lcom/android/camera/ActivityBase;

.field private mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

.field private final mAvatarLock:Ljava/lang/Object;

.field private mAvatarTemplatePath:Ljava/lang/String;

.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurrentScreenOrientation:I

.field private mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

.field private mDeviceRotation:I

.field private mDisplayOrientation:I

.field private mDrawSize:Landroid/util/Size;

.field private mFaceDectectResult:I

.field private mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mGifBottomMargin:I

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsAvatarInited:Z

.field private mIsFaceDetectSuccess:Z

.field private mIsFrontCamera:Z

.field private mIsNeedShowNoFaceTips:Z

.field private mIsNoFaceResult:I

.field private mIsRecordStopping:Z

.field private volatile mIsRecording:Z

.field private mIsShutterButtonClick:Z

.field private mIsStopRender:Z

.field private mLastInitResult:Z

.field private mLastNeedBeauty:Z

.field private mLoadHandler:Landroid/os/Handler;

.field private mLoadResourceHandler:Landroid/os/Handler;

.field private mLoadResourceThread:Landroid/os/HandlerThread;

.field private mLoadThread:Landroid/os/HandlerThread;

.field private mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field private mMaxVideoDurationInMs:I

.field private mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

.field private mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

.field private mNeedCapture:Z

.field private mOrientation:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

.field private mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

.field private mTextureId:[I

.field private mTotalRecordingTime:J

.field private mUiHandler:Landroid/os/Handler;

.field private mVideoFileStream:Ljava/io/FileOutputStream;

.field private final resourceTimbreAlert:[I


# direct methods
.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->resourceTimbreAlert:[I

    const/16 v0, 0x5a

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentScreenOrientation:I

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsShutterButtonClick:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsStopRender:Z

    .line 8
    iput v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mFaceDectectResult:I

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFaceDetectSuccess:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mNeedCapture:Z

    .line 11
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LoadConfig"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadThread:Landroid/os/HandlerThread;

    .line 12
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LoadResource"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadResourceThread:Landroid/os/HandlerThread;

    .line 13
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    new-array v1, v1, [I

    .line 14
    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mTextureId:[I

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecordStopping:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastNeedBeauty:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastInitResult:Z

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    .line 19
    new-instance v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$5;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$5;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    .line 20
    new-instance v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$6;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$6;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    .line 21
    new-instance v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$7;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 23
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1388

    .line 25
    iput v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMaxVideoDurationInMs:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a98

    .line 26
    iput v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMaxVideoDurationInMs:I

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 30
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf7

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    .line 32
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadResourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadResourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadResourceHandler:Landroid/os/Handler;

    .line 34
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadHandler:Landroid/os/Handler;

    .line 36
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mUiHandler:Landroid/os/Handler;

    .line 37
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->setIsAvatarInited(Z)V

    const-string p0, "Mimoji2Impl"

    const-string p1, "MimojiAvatarEngine2Impl:  constructor"

    .line 39
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1004a4
        0x7f1004a1
        0x7f1004a3
        0x7f1004a2
        0x7f1004a0
        0x7f1004a5
    .end array-data
.end method

.method private CaptureCallback(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v2, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 4
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    iget-boolean v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    const/16 v4, 0x10e

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    const/16 v7, 0x5a

    if-eq v0, v7, :cond_2

    iget v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {v11, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {v11, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_3
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9
    iget-object v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    move-object v6, v3

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 10
    :try_start_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v6

    .line 11
    iget-boolean v7, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    if-eqz v7, :cond_4

    iget v7, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_4

    iget v7, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    add-int/lit16 v7, v7, 0xb4

    rem-int/lit16 v7, v7, 0x168

    goto :goto_2

    :cond_4
    iget v7, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    .line 12
    :goto_2
    iget-boolean v8, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    if-eqz v8, :cond_5

    move-object v8, v3

    goto :goto_3

    :cond_5
    move-object v8, v5

    :goto_3
    iget-boolean v9, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    invoke-static {v2, v8, v7, v9}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    .line 14
    iget-object v8, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v8}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9, v9}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 15
    iget-object v7, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v7

    check-cast v7, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    if-eqz v7, :cond_6

    .line 16
    invoke-virtual {v7}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v7

    move v11, v7

    goto :goto_4

    :cond_6
    move v11, v0

    .line 17
    :goto_4
    new-instance v7, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, -0x4

    const/4 v15, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 19
    invoke-virtual {v7, v6, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 20
    iget-boolean v6, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    move v9, v0

    :goto_5
    iget v6, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    invoke-static {v9, v6}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v6

    add-int/2addr v6, v4

    .line 21
    rem-int/lit16 v6, v6, 0x168

    .line 22
    new-instance v4, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v8, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    iget-object v9, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    iget-object v10, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    const/16 v11, 0x100

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 23
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    .line 25
    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    .line 26
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 27
    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    const/4 v6, -0x1

    .line 28
    iget v9, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mOrientation:I

    if-ne v6, v9, :cond_8

    goto :goto_6

    :cond_8
    iget v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mOrientation:I

    :goto_6
    invoke-virtual {v4, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_9
    move-object v4, v2

    :goto_7
    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    .line 34
    invoke-virtual {v7, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 35
    iget-object v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_a

    .line 36
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 37
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz v5, :cond_c

    .line 38
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v5, v2

    :goto_8
    move-object v2, v3

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v5, v2

    :goto_9
    move-object v2, v3

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v5, v2

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v5, v2

    :goto_a
    :try_start_3
    const-string v3, "Mimoji2Impl"

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimoji void CaptureCallback[byteBuffer] exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_b

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 41
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v5, :cond_c

    .line 42
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 43
    :goto_b
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    :cond_c
    iget-object v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    .line 45
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->onMimojiCaptureCallback()V

    return-void

    :catchall_3
    move-exception v0

    :goto_c
    if-eqz v2, :cond_d

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_d

    .line 47
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz v5, :cond_e

    .line 48
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 49
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    :cond_e
    iget-object v1, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    .line 51
    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->onMimojiCaptureCallback()V

    .line 52
    throw v0

    :cond_f
    :goto_d
    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Lcom/arcsoft/avatar2/AvatarEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->CaptureCallback(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Lcom/arcsoft/avatar2/RecordModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mTotalRecordingTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMaxVideoDurationInMs:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Ljava/io/FileOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mVideoFileStream:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mVideoFileStream:Ljava/io/FileOutputStream;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecordStopping:Z

    return p1
.end method

.method private animateCapture()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->setDisableSingleTapUp(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->onProfileFinish()V

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private createAvatar([BII)V
    .locals 14

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    .line 2
    iput-object v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    .line 3
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;

    invoke-direct {v1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;-><init>()V

    .line 5
    iget-object v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v4, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    mul-int/lit8 v7, p2, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/android/camera/features/mimoji2/module/impl/c;->a:Lcom/android/camera/features/mimoji2/module/impl/c;

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v8, p1

    move-object v11, v1

    invoke-virtual/range {v3 .. v13}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarProfile(Ljava/lang/String;III[BIZLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileInfo;Lcom/arcsoft/avatar2/AvatarConfig$UpdateProgressCallback;)I

    move-result v3

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avatarProfile res: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->status:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", gender: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->gender:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Mimoji2Impl"

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget v1, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->status:I

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_b

    const/16 v2, 0xf6

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001ba

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    .line 11
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001b5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    .line 12
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001b9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_5

    .line 13
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001b8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_6

    .line 14
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001b6

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_7

    .line 15
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001bb

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_7
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_8

    .line 16
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001b7

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_8
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_9

    .line 17
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001b4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 18
    :cond_9
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const v2, 0x7f1001bd

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 19
    :goto_0
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_a

    .line 20
    new-instance v2, Lcom/android/camera/features/mimoji2/module/impl/d;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimoji2/module/impl/d;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void

    .line 21
    :cond_b
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mimoji2Impl"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/features/mimoji2/module/impl/h;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimoji2/module/impl/h;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic d()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiEnd()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 10
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    .line 11
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->backToPreview(ZZ)V

    return-void
.end method

.method private synthetic f(IIIIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Mimoji2Impl"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avatar start init | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-nez v1, :cond_0

    .line 6
    new-instance v2, Lcom/arcsoft/avatar2/RecordModule;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    invoke-direct {v2, v1, v3}, Lcom/arcsoft/avatar2/RecordModule;-><init>(Landroid/content/Context;Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;)V

    iput-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    .line 7
    iget-object v6, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/arcsoft/avatar2/RecordModule;->init(IIILcom/arcsoft/avatar2/AvatarEngine;Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1, p2}, Lcom/arcsoft/avatar2/RecordModule;->setmImageOrientation(I)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p2, p5}, Lcom/arcsoft/avatar2/RecordModule;->setMirror(Z)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p2, p3, p4}, Lcom/arcsoft/avatar2/RecordModule;->setPreviewSize(II)V

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/camera/Util;->getPreviewRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    .line 12
    sget p3, Lcom/android/camera/Util;->sWindowHeight:I

    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p4

    .line 13
    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    iget p5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p5

    .line 14
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 15
    iget-object p5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p5, p1}, Lcom/arcsoft/avatar2/RecordModule;->setBackgroundToSquare(Z)V

    const/4 p5, 0x0

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget p4, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mGifBottomMargin:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p5, p3, p2, p2}, Lcom/arcsoft/avatar2/RecordModule;->setDrawScope(IIII)V

    .line 17
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p1, p5, p3, p2, p4}, Lcom/arcsoft/avatar2/RecordModule;->setDrawScope(IIII)V

    .line 19
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p4}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDrawSize:Landroid/util/Size;

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object p2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_BG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/arcsoft/avatar2/RecordModule;->getBackgroundBmpInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setBackgroundInfos(Ljava/util/ArrayList;)V

    .line 22
    :cond_2
    iput-boolean p5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsStopRender:Z

    .line 23
    iput-boolean p5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastInitResult:Z

    .line 24
    iget-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsAvatarInited:Z

    if-nez p1, :cond_3

    const-string p1, "Mimoji2Impl"

    const-string p2, "avatar need really init"

    .line 25
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object p2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    sget-object p3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->FACE_MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/arcsoft/avatar2/AvatarEngine;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 p2, 0x1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object p2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->createOutlineEngine(Ljava/lang/String;)I

    .line 29
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->reloadConfig()V

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->onMimojiInitFinish()V

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v0

    if-nez p0, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    :cond_1
    move v2, p0

    move v3, v0

    const/4 p0, 0x0

    if-eqz v2, :cond_2

    const v0, 0x7f0700fc

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v0

    const v1, 0x7f0700fa

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v1

    const v4, 0x7f0700fb

    .line 5
    invoke-static {v4, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result p0

    :goto_0
    move v8, p0

    move v6, v0

    move v7, v1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const v0, 0x7f07012f

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v0

    const v1, 0x7f07012d

    .line 7
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v1

    const v4, 0x7f07012e

    .line 8
    invoke-static {v4, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result p0

    goto :goto_0

    :cond_3
    move v6, p0

    move v7, v6

    move v8, v7

    .line 9
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v4

    .line 10
    new-instance p0, Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;-><init>(ZZZLjava/lang/String;FFF)V

    return-object p0
.end method

.method private getMimojiPara()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->isNeedShowAvatar()Z

    move-result v1

    const-string v2, "attr_mimoji_category"

    if-eqz v1, :cond_5

    .line 3
    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 5
    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getMimojiConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)Ljava/util/Map;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "custom"

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_PIG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "pig"

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "bear"

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_ROYAN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "royan"

    goto :goto_0

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_RABBIT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "rabbit"

    goto :goto_0

    :cond_4
    const-string p0, ""

    .line 11
    :goto_0
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string p0, "null"

    .line 12
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->isFrontMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const-string v1, "off"

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getOperatingMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object p0
.end method

.method static synthetic h()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf8

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;->firstProgressShow(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Mimoji2Impl"

    const-string v1, "mimojiBottomList finish == null"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic i(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Mimoji2Impl"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x8000

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const-string v5, "vendor/camera/mimoji/model2.zip"

    sget-object v6, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init model spend time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setIsLoading(Z)V

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAvatarTemplatePath = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mUiHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/camera/features/mimoji2/module/impl/e;->a:Lcom/android/camera/features/mimoji2/module/impl/e;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "verify asset model zip failed..."

    .line 8
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    sget-object p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private initMimojiResource()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->DATA_DIR:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileDirectoryConsist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileDirectoryConsist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Mimoji2Impl"

    const-string v2, "MimojiAvatarEngine2Impl: initMimojiResource unzip..."

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setIsLoading(Z)V

    .line 7
    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    .line 8
    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 9
    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->CUSTOM_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    const v2, 0x8000

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    const-string v5, "vendor/camera/mimoji/data.zip"

    sget-object v6, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "verify asset data zip failed..."

    .line 11
    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    .line 13
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsStopRender:Z

    if-nez v1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->initMimojiResource()V

    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadResourceHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/features/mimoji2/module/impl/f;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/f;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isFrontMirror()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p0

    return p0
.end method

.method private synthetic k()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNeedShowNoFaceTips:Z

    const v1, 0x7f1001a9

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_0
    return-void
.end method

.method private synthetic m()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    const-string v2, "video/hevc"

    const-string v3, "video/avc"

    const/4 v4, 0x5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->deleteMimojiCache(I)Z

    .line 5
    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 6
    iget-object v5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getVideoCache()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    iget v8, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentScreenOrientation:I

    iget v9, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mPreviewWidth:I

    iget v10, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mPreviewHeight:I

    const v11, 0x989680

    if-ne v0, v4, :cond_0

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object v12, v3

    :goto_0
    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/avatar2/RecordModule;->startRecording(Ljava/lang/String;Lcom/arcsoft/avatar2/recoder/RecordingListener;IIIILjava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->deleteMimojiCache(I)Z

    .line 8
    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 9
    iget-object v5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getVideoCache()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    iget v8, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentScreenOrientation:I

    const/16 v9, 0x1f4

    const/16 v10, 0x1f4

    const v11, 0x989680

    if-ne v0, v4, :cond_2

    move-object v12, v2

    goto :goto_1

    :cond_2
    move-object v12, v3

    :goto_1
    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/avatar2/RecordModule;->startRecording(Ljava/lang/String;Lcom/arcsoft/avatar2/recoder/RecordingListener;IIIILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private onProfileFinish()V
    .locals 3

    const-string v0, "Mimoji2Impl"

    const-string v1, "onProfileFinish"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->releaseRender()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiEnd()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz v0, :cond_2

    const/16 v1, 0xcb

    .line 13
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->startMimojiEdit(I)V

    .line 14
    :cond_2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    :cond_3
    const-string p0, "mimoji_click_create_capture"

    const-string v0, "create"

    .line 17
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private quit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadResourceThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method private reloadConfig()V
    .locals 3

    const-string v0, "Mimoji2Impl"

    const-string v1, "MimojiAvatarEngine2Impl reloadConfig"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 3
    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf7

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-interface {v1, v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->resetClickEnable(Z)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->resetConfig()V

    goto :goto_1

    :cond_1
    const-string p0, "MimojiAvatarEngine2Impl reloadConfig: error mimojiEditor is null"

    .line 9
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v2, :cond_3

    const-string v2, "mimoji void reloadConfig[]\u3000extrascene init"

    .line 13
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/RecordModule;->setExtraSceneTemplatePath(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->isNeedShowAvatar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, v1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 19
    iget-object v0, v1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    .line 20
    :cond_4
    iget-object v0, v1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p0}, Lcom/arcsoft/avatar2/RecordModule;->updateAvatarConfigInfo(Lcom/arcsoft/avatar2/AvatarEngine;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateBeauty()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    .line 3
    instance-of v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    .line 8
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private updateVideoOrientation(I)V
    .locals 3

    const/16 v0, 0x13b

    if-le p1, v0, :cond_0

    const/16 v1, 0x168

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x2d

    if-ltz p1, :cond_2

    if-gt p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentScreenOrientation:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x87

    if-le p1, v1, :cond_3

    if-gt p1, v2, :cond_3

    const/16 p1, 0x5a

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentScreenOrientation:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xe1

    if-le p1, v2, :cond_4

    if-gt p1, v1, :cond_4

    const/16 p1, 0xb4

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentScreenOrientation:I

    goto :goto_0

    :cond_4
    if-le p1, v1, :cond_5

    if-gt p1, v0, :cond_5

    const/16 p1, 0x10e

    .line 4
    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentScreenOrientation:I

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public backToPreview(ZZ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsStopRender:Z

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, p1, v2}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->onMimojiSelect(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xa2

    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xaf

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingMimojiBack()V

    .line 9
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    const/4 p1, -0x1

    .line 10
    invoke-interface {v3, v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result p1

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v1, [I

    .line 12
    fill-array-data p1, :array_0

    invoke-interface {v3, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 13
    fill-array-data p1, :array_1

    invoke-interface {v3, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    .line 14
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p1

    const/16 v1, 0xa3

    if-eqz p1, :cond_1

    new-array p1, v2, [I

    aput v1, p1, v0

    .line 15
    invoke-interface {v3, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_1

    :cond_1
    new-array p1, v2, [I

    aput v1, p1, v0

    .line 16
    invoke-interface {v3, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    :goto_1
    if-eqz p2, :cond_3

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 18
    invoke-interface {v4, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showMimojiPanel(I)V

    .line 19
    :cond_2
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateMimojiBottomTipImage()V

    .line 20
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz p1, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p1, v2, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 23
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->setDisableSingleTapUp(Z)V

    return-void

    :array_0
    .array-data 4
        0xc5
        0xa2
    .end array-data

    :array_1
    .array-data 4
        0xc5
        0xc1
        0xa2
    .end array-data
.end method

.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->b()V

    return-void
.end method

.method public changeIsNoFaceResult(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    if-eqz p1, :cond_2

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    return v1

    .line 3
    :cond_0
    iget p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    const/16 v2, 0xa

    if-le p1, v2, :cond_1

    return v0

    :cond_1
    add-int/2addr p1, v1

    .line 4
    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public changeToSquare(Z)V
    .locals 0

    return-void
.end method

.method public checkIsNeedChangBg()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->IsLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    .line 5
    iget-object v6, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    .line 6
    invoke-virtual {v6}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v2, :cond_8

    .line 7
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->clone()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v6, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getIsNeedRefresh()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1, v6}, Lcom/arcsoft/avatar2/RecordModule;->setBackgroundToSquare(Z)V

    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xd1ef

    if-eq v2, v3, :cond_4

    const v3, 0x171fa6

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "16x9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v6, v4

    goto :goto_1

    :cond_4
    const-string v2, "4x3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move v6, v1

    :goto_1
    if-eqz v6, :cond_7

    if-eq v6, v4, :cond_6

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    goto :goto_2

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    goto :goto_2

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    .line 17
    :goto_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->nextFrame()I

    move-result v0

    .line 18
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/BackgroundInfo;->getBackGroundPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/arcsoft/avatar2/RecordModule;->setBackground(Landroid/graphics/Bitmap;Lcom/arcsoft/avatar2/BackgroundInfo;)V

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 22
    iput-object v5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsNeedChangBg  : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mimoji2Impl"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    if-eqz v0, :cond_9

    .line 25
    iput-object v5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    .line 26
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0, v5, v5}, Lcom/arcsoft/avatar2/RecordModule;->setBackground(Landroid/graphics/Bitmap;Lcom/arcsoft/avatar2/BackgroundInfo;)V

    .line 27
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0, v4, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_9
    :goto_3
    return-void
.end method

.method public deleteMimojiCache(I)Z
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimoji boolean deleteMimojiCache[type] : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mimoji2Impl"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    sget-object p1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 6
    sget-object p1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 7
    sget-object p1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void deleteMimojiCache[] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->d()V

    return-void
.end method

.method public synthetic g(IIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->f(IIIIZ)V

    return-void
.end method

.method public getIsNoFaceResult()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getOperatingMode()I
    .locals 0

    const p0, 0x800b

    return p0
.end method

.method public getTimeValue()Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mTotalRecordingTime:J

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

.method public getVideoCache()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->GIF_NORMAL_CACHE_FILE:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    return-object p0
.end method

.method public initAvatarEngine(IIIIZ)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAvatarEngine with parameters : displayOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFrontCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimoji2Impl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDisplayOrientation:I

    .line 3
    iput p3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mPreviewWidth:I

    .line 4
    iput p4, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mPreviewHeight:I

    .line 5
    iput-boolean p5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    .line 6
    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mOrientation:I

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNeedShowNoFaceTips:Z

    .line 9
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070193

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mGifBottomMargin:I

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->initMimojiResource()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 12
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/camera/features/mimoji2/module/impl/a;

    move-object v0, v7

    move-object v1, p0

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/features/mimoji2/module/impl/a;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;IIIIZ)V

    invoke-virtual {p2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isNeedShowAvatar()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    const-string v2, "add_state"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    const-string v1, "close_state"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnCreateMimoji()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p0

    return p0
.end method

.method public isProcessorReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsStopRender:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecordStopping()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecordStopping:Z

    return p0
.end method

.method public isRecording()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimoji2Impl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecording:Z

    return p0
.end method

.method public synthetic j(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->i(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->k()V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->m()V

    return-void
.end method

.method public onCaptureImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mNeedCapture:Z

    .line 3
    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getMimojiPara()Ljava/util/Map;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    invoke-static {v2, v0, v1, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateCapture()Z
    .locals 5

    const-string v0, "Mimoji2Impl"

    const-string v1, "onCreateCapture"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mFaceDectectResult:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFaceDetectSuccess:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 4
    instance-of v2, v0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    check-cast v0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    .line 6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    new-array v2, v3, [I

    const/16 v4, 0xd

    aput v4, v2, v1

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 9
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_2

    const/16 v1, 0x13

    const v2, 0x7f1001e8

    const/4 v4, 0x2

    .line 11
    invoke-interface {v0, v1, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    .line 12
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsShutterButtonClick:Z

    .line 13
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->animateCapture()V

    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public onDeviceRotationChange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->updateVideoOrientation(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->onDeviceRotationChange(I)V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/16 v3, 0x4000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-boolean v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsStopRender:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move/from16 v6, p2

    move/from16 v7, p3

    .line 2
    invoke-static {v2, v2, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_1

    .line 3
    :cond_0
    sget v6, Lcom/android/camera/Util;->sWindowHeight:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 4
    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 5
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    iget v7, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mGifBottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v2, v6, v1, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2, v6, v1, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 9
    :goto_0
    iget-boolean v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mNeedCapture:Z

    if-eqz v1, :cond_3

    const-string v1, "Mimoji2Impl"

    const-string v6, "onCapture start"

    .line 10
    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/RecordModule;->capture()V

    .line 12
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    const/4 v6, 0x3

    .line 14
    invoke-virtual {v1, v6}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->setCameraStatePublic(I)V

    .line 15
    :cond_2
    iput-boolean v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mNeedCapture:Z

    .line 16
    :cond_3
    :goto_1
    invoke-static {v5, v5, v5, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 17
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 18
    iget-object v7, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/16 v8, 0x5a

    iget-boolean v9, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    iget v10, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mTextureId:[I

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->isNeedShowAvatar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getIsNoFaceResult()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    move v15, v2

    invoke-virtual/range {v7 .. v15}, Lcom/arcsoft/avatar2/RecordModule;->startRender(IZIIZ[I[BZ)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-static {v5, v5, v5, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 20
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    :goto_2
    return-void
.end method

.method public onMimojiChangeBg(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onMimojiChangeBg  : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mimoji2Impl"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMimojiChangeTimbre(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiTimbreInfo(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->resourceTimbreAlert:[I

    aget p0, p0, p2

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(IIJ)V

    .line 5
    :cond_0
    sget-object p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p2, 0xfc

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;->changeTimbre()V

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mimoji void onMimojiChangeTimbre[mimojiTimbreInfo]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mimoji2Impl"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMimojiCreate()V
    .locals 3

    const-string v0, "Mimoji2Impl"

    const-string v1, "start create mimoji"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd4

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->prepareCreateMimoji()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    const/16 v0, 0x13

    const v1, 0x7f1001af

    const/4 v2, 0x2

    .line 8
    invoke-interface {p0, v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    :cond_0
    return-void
.end method

.method public onMimojiDeleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiInfo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    return-void
.end method

.method public onMimojiInitFinish()V
    .locals 2

    const-string v0, "Mimoji2Impl"

    const-string v1, "onMimojiInitFinish"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->setIsAvatarInited(Z)V

    return-void
.end method

.method public onMimojiSelect(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;Z)V
    .locals 3

    const-string v0, "Mimoji2Impl"

    const-string v1, "mimoji void onMimojiSelect[mimojiInfo2]"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getIsNoFaceResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->isNeedShowAvatar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNeedShowNoFaceTips:Z

    if-eqz p1, :cond_6

    .line 3
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    const-string v1, "add_state"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    const-string v1, "close_state"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    .line 8
    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNoFaceResult:I

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiInfo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V

    .line 10
    iget-object p2, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change mimoji with path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimoji2Impl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 16
    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarTemplatePath:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_3

    .line 18
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1, p2, p1}, Lcom/arcsoft/avatar2/RecordModule;->changeHumanTemplate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p2, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 21
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/RecordModule;->updateAvatarConfigInfo(Lcom/arcsoft/avatar2/AvatarEngine;)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 23
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiInfo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xf8

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz p0, :cond_7

    if-nez p2, :cond_7

    .line 26
    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    :cond_7
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Mimoji2Impl"

    const-string p2, "MimojiAvatarEngine2Impl onPreviewFrame mRecordModule null"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastInitResult:Z

    return p3

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0xf7

    .line 5
    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    .line 6
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiEdit()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    iget-boolean p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsAvatarInited:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez p2, :cond_3

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->resetClickEnable(Z)V

    .line 10
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    invoke-interface {p0, p3}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->requestRender(Z)V

    :cond_2
    const-string p0, "Mimoji2Impl"

    const-string p1, "MimojiAvatarEngine2Impl onPreviewFrame need init, waiting......"

    .line 11
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 12
    :cond_3
    invoke-static {p1}, Lcom/arcsoft/avatar2/util/AsvloffscreenUtil;->buildNV21SingleBuffer(Landroid/media/Image;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object p2

    .line 13
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsShutterButtonClick:Z

    if-eqz v1, :cond_5

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsShutterButtonClick:Z

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->setIsAvatarInited(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    .line 17
    invoke-virtual {p2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getYData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-static {v2, v3, p1, v1}, Lcom/android/camera/features/mimoji2/utils/BitmapUtils2;->rawByteArray2RGBABitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 18
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    if-eqz v1, :cond_4

    const/16 v1, -0x5a

    goto :goto_0

    :cond_4
    const/16 v1, 0x5a

    :goto_0
    invoke-static {p1, v1}, Lcom/android/camera/features/mimoji2/utils/BitmapUtils2;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 22
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 23
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 24
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->createAvatar([BII)V

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiEdit()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p1, :cond_d

    .line 27
    new-instance v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-direct {v6}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;-><init>()V

    .line 28
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter p1

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v3, 0x5a

    iget-boolean v4, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    iget v5, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mOrientation:I

    const/4 v7, 0x1

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarProcessWithInfoEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)I

    .line 30
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->requestRender(Z)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    invoke-interface {p1, p3}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->resetClickEnable(Z)V

    .line 33
    iget-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastInitResult:Z

    if-nez p1, :cond_d

    .line 34
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->resetConfig()V

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 36
    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiEmoticon()Z

    move-result p1

    if-nez p1, :cond_7

    .line 37
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    invoke-interface {p1, p3}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->requestRender(Z)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->resetClickEnable(Z)V

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter p1

    .line 40
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->checkIsNeedChangBg()V

    .line 41
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mOrientation:I

    iget v3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    iget-boolean v4, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    invoke-static {v2, v3, v4}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->getOutlineOrientation(IIZ)I

    move-result v2

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->isNeedShowAvatar()Z

    move-result v3

    .line 43
    invoke-virtual {v1, p2, v2, v3}, Lcom/arcsoft/avatar2/RecordModule;->startProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ)Z

    move-result v1

    .line 44
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_b

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->changeIsNoFaceResult(Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getIsNoFaceResult()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->isNeedShowAvatar()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, p3

    goto :goto_1

    :cond_8
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNeedShowNoFaceTips:Z

    .line 48
    :cond_9
    iget-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNeedShowNoFaceTips:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object p1

    if-eqz p1, :cond_a

    move v0, p3

    :cond_a
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNeedShowNoFaceTips:Z

    goto :goto_2

    .line 49
    :cond_b
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsNeedShowNoFaceTips:Z

    .line 50
    :goto_2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/features/mimoji2/module/impl/g;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/module/impl/g;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getIsNoFaceResult()Z

    move-result p1

    .line 52
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastNeedBeauty:Z

    if-eq v0, p1, :cond_c

    .line 53
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastNeedBeauty:Z

    .line 54
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->updateBeauty()V

    .line 55
    :cond_c
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    .line 56
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 57
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter p1

    .line 58
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mOrientation:I

    iget v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mDeviceRotation:I

    iget-boolean v3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    .line 59
    invoke-static {v1, v2, v3}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->getOutlineOrientation(IIZ)I

    move-result v1

    .line 60
    invoke-virtual {v0, p2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->outlineProcessEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mFaceDectectResult:I

    .line 61
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_e

    .line 63
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiFaceDetect(I)V

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 64
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 65
    :cond_e
    :goto_4
    iput-boolean p3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLastInitResult:Z

    return p3

    :catchall_2
    move-exception p0

    .line 66
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public onRecordStart()V
    .locals 4

    const-string v0, "Mimoji2Impl"

    const-string v1, "start record..."

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecording:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->getMimojiPara()Ljava/util/Map;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFrontCamera:Z

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecording:Z

    .line 6
    iput-boolean v3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecordStopping:Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v1, Lcom/android/camera/features/mimoji2/module/impl/i;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/module/impl/i;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->updateRecordingTime()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordStop(Z)V
    .locals 2

    const-string v0, "Mimoji2Impl"

    const-string v1, "stop record..."

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsRecordStopping:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$4;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$4;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Mimoji2Impl"

    const-string v1, "reset"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->reset()V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 5

    const-string v0, "Mimoji2Impl"

    const-string v1, "avatar release"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 7
    iget-object v3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mLoadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$2;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$2;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mVideoFileStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "fail to close file stream"

    .line 10
    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :goto_1
    iput-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mVideoFileStream:Ljava/io/FileOutputStream;

    .line 12
    :cond_1
    iput-object v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public releaseRender()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsStopRender:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInPreviewSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v2, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$1;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;I)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMimojiEditor2:Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->releaseRender()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDetectSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsFaceDetectSuccess:Z

    return-void
.end method

.method public setDisableSingleTapUp(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->setDisableSingleTapUp(Z)V

    return-void
.end method

.method public setIsAvatarInited(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mIsAvatarInited:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->releaseRender()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->release()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->quit()V

    return-void
.end method

.method protected updateRecordingTime()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mTotalRecordingTime:J

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1388

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMaxVideoDurationInMs:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a98

    .line 6
    iput v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMaxVideoDurationInMs:I

    .line 7
    :goto_0
    new-instance v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$3;

    iget v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mMaxVideoDurationInMs:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1c2

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$3;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;JJ)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
