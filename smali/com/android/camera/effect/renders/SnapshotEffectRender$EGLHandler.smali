.class Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;
.super Landroid/os/Handler;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_DRAW_MAIN_ASYNC:I = 0x1

.field public static final MSG_DRAW_MAIN_SYNC:I = 0x2

.field public static final MSG_DRAW_THUMB:I = 0x4

.field public static final MSG_GET_DRAW_THUMB:I = 0x3

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_PREPARE_EFFECT_RENDER:I = 0x6

.field public static final MSG_RELEASE:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 26

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v0, p5

    .line 1
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 2
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyEffect: applyToThumb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_0

    .line 3
    iget-object v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    :goto_0
    const/4 v14, 0x0

    if-nez v1, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_1

    const-string v2, "thumb!"

    goto :goto_1

    :cond_1
    const-string v2, "jpeg!"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :cond_2
    if-nez v12, :cond_3

    .line 5
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v2, v3, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-direct {v10, v11, v13, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffectOnlyWatermarkRange(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    new-instance v15, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v15}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    const-string v2, "init Texture"

    .line 10
    invoke-virtual {v15, v2}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v8, v9, [I

    const/4 v7, 0x0

    .line 11
    invoke-static {v9, v8, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 12
    aget v3, v8, v7

    move/from16 v4, p2

    invoke-static {v1, v3, v4}, Lcom/android/camera/effect/ShaderNativeUtil;->initTexture([BII)[I

    move-result-object v3

    .line 13
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 14
    invoke-virtual {v15, v2}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 15
    aget v4, v3, v7

    .line 16
    aget v5, v3, v9

    if-eqz v12, :cond_4

    .line 17
    aget v2, v3, v7

    goto :goto_2

    :cond_4
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    :goto_2
    move v6, v2

    if-eqz v12, :cond_5

    .line 18
    aget v2, v3, v9

    goto :goto_3

    :cond_5
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    :goto_3
    move v3, v2

    .line 19
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v10, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    if-nez v2, :cond_6

    .line 20
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init render failed"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 21
    :cond_6
    instance-of v1, v2, Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v1, :cond_7

    .line 22
    move-object v1, v2

    check-cast v1, Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    .line 23
    :cond_7
    invoke-virtual {v2, v6, v3}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 24
    iget-object v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 25
    iget-boolean v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    if-eqz v12, :cond_8

    .line 26
    invoke-virtual {v2, v4, v5}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto :goto_4

    .line 27
    :cond_8
    iget v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 28
    :goto_4
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 29
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 30
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 31
    invoke-direct {v10, v4, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->checkFrameBuffer(II)V

    .line 32
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 33
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    .line 34
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    aget v17, v8, v7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v0

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v16 .. v22}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 35
    invoke-virtual {v2}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 36
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    const/16 v1, 0xa5

    const/16 v16, 0x2

    if-ne v0, v1, :cond_a

    if-le v4, v5, :cond_9

    sub-int v0, v4, v5

    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 38
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v5

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v2, v0

    move v0, v5

    move v14, v0

    move v1, v7

    goto :goto_5

    :cond_9
    sub-int v0, v5, v4

    .line 39
    div-int/lit8 v0, v0, 0x2

    .line 40
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v4

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v1, v0

    move v0, v4

    move v14, v0

    move v2, v7

    goto :goto_5

    :cond_a
    move v0, v4

    move v14, v5

    move v1, v7

    move v2, v1

    .line 41
    :goto_5
    iget-object v7, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWaterInfos:Ljava/util/List;

    iget v9, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v23, v15

    iget-boolean v15, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    move v10, v0

    move-object/from16 v0, p0

    move/from16 p2, v1

    move-object v1, v7

    move v7, v2

    move/from16 v20, v3

    move/from16 v3, p2

    move/from16 v24, v7

    move/from16 v7, v20

    move-object/from16 v25, v8

    move v8, v9

    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZ)V

    if-eqz v12, :cond_b

    if-eqz v13, :cond_c

    .line 42
    iput v10, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    .line 43
    iput v14, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    .line 44
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 45
    :cond_b
    iput v10, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 46
    iput v14, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 47
    :cond_c
    :goto_6
    iget-boolean v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_10

    if-nez v12, :cond_e

    .line 48
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    add-int/lit16 v0, v0, 0x10e

    rem-int/lit16 v0, v0, 0x168

    iget-boolean v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    iget-object v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    if-eqz v2, :cond_d

    const/16 v21, 0x1

    goto :goto_7

    :cond_d
    const/16 v21, 0x0

    :goto_7
    const/16 v22, 0x0

    move/from16 v17, v10

    move/from16 v18, v14

    move/from16 v19, v0

    move/from16 v20, v1

    invoke-static/range {v17 .. v22}, Lcom/android/camera/Util;->getWatermarkRange(IIIZZZ)[I

    move-result-object v0

    const/4 v8, 0x0

    .line 49
    aget v1, v0, v8

    move/from16 v9, v24

    add-int/2addr v1, v9

    const/4 v13, 0x1

    aget v2, v0, v13

    move/from16 v15, p2

    add-int/2addr v2, v15

    aget v3, v0, v16

    const/4 v4, 0x3

    aget v4, v0, v4

    move v7, v10

    move-object/from16 v10, p0

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(IIIII)[B

    move-result-object v1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    const/4 v13, 0x1

    move/from16 v15, p2

    move v7, v10

    move/from16 v9, v24

    move-object/from16 v10, p0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 50
    :goto_8
    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v15

    move v4, v7

    move v5, v14

    move/from16 p2, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawTimeWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 51
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->He()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    if-eqz v0, :cond_f

    .line 52
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v15

    move/from16 v4, p2

    move v5, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawFrontCameraWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    goto :goto_9

    .line 54
    :cond_f
    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v15

    move/from16 v4, p2

    move v5, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawDoubleShotWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    :goto_9
    move-object/from16 v1, v16

    move-object/from16 v0, v17

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    const/4 v13, 0x1

    move/from16 v15, p2

    move/from16 p2, v10

    move/from16 v9, v24

    move-object/from16 v10, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    const-string v2, "draw"

    move-object/from16 v3, v23

    .line 55
    invoke-virtual {v3, v2}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    const/16 v2, 0xd05

    .line 56
    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 57
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    if-eqz v12, :cond_11

    .line 58
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    sget-object v4, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v4, v8}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_11
    move/from16 v4, p2

    .line 59
    invoke-static {v9, v15, v4, v14, v2}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(IIIII)[B

    move-result-object v2

    const-string v4, "readpixels"

    .line 60
    invoke-virtual {v3, v4}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    move-object/from16 v3, v25

    .line 61
    aget v4, v3, v8

    invoke-static {v4}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 62
    invoke-static {v13, v3, v8}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 63
    :cond_12
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    .line 64
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 65
    iget-boolean v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v3, :cond_13

    .line 66
    iput-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    .line 67
    iput-object v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_13
    return-object v2
.end method

.method private applyEffectOnlyWatermarkRange(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    .line 1
    iget-boolean v1, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    const/16 v10, 0xa5

    if-nez v1, :cond_0

    iget v1, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    if-eq v1, v10, :cond_0

    .line 2
    iget-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-object v3, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    const/4 v11, 0x1

    invoke-static {v3, v11}, Lcom/android/camera/effect/ShaderNativeUtil;->decompressPicture([BI)[I

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jpeg decompress total time ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v1, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    const/4 v12, 0x0

    .line 7
    aget v4, v3, v12

    aget v3, v3, v11

    .line 8
    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    const/4 v6, 0x2

    if-ne v5, v10, :cond_2

    if-le v4, v3, :cond_1

    sub-int v5, v4, v3

    .line 9
    div-int/2addr v5, v6

    .line 10
    iget-object v7, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v7

    mul-int/2addr v7, v3

    sget v13, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v7, v13

    sub-int/2addr v5, v7

    move v13, v3

    move v14, v13

    move v15, v5

    move v7, v12

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v4

    .line 11
    div-int/2addr v3, v6

    .line 12
    iget-object v5, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    mul-int/2addr v5, v4

    sget v7, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v5, v7

    sub-int/2addr v3, v5

    move v7, v3

    move v13, v4

    move v14, v13

    move v15, v12

    goto :goto_0

    :cond_2
    move v14, v3

    move v13, v4

    move v7, v12

    move v15, v7

    .line 13
    :goto_0
    iput v13, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 14
    iput v14, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 15
    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    if-ne v3, v10, :cond_3

    .line 16
    iget-boolean v3, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    if-nez v3, :cond_3

    iget-object v3, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 17
    invoke-static {v15, v7}, Lcom/android/camera/effect/ShaderNativeUtil;->getCenterSquareImage(II)V

    .line 18
    iget-object v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    invoke-static {v13, v14, v0}, Lcom/android/camera/effect/ShaderNativeUtil;->compressPicture(III)[B

    move-result-object v0

    return-object v0

    .line 19
    :cond_3
    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget v10, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    add-int/lit16 v10, v10, 0x10e

    rem-int/lit16 v10, v10, 0x168

    iget-boolean v12, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    iget-object v11, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    if-eqz v11, :cond_4

    const/16 v20, 0x1

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    :goto_1
    const/16 v21, 0x0

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v10

    move/from16 v19, v12

    invoke-static/range {v16 .. v21}, Lcom/android/camera/Util;->getWatermarkRange(IIIZZZ)[I

    move-result-object v10

    .line 20
    aget v11, v10, v6

    const/4 v12, 0x3

    aget v5, v10, v12

    .line 21
    iget-object v3, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 22
    iget-object v3, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v3

    invoke-virtual {v3, v11, v5}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->reszieBuffer(II)V

    .line 23
    iget-object v3, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3, v11}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 24
    iget-object v3, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 26
    invoke-static {}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->genTexture()I

    move-result v19

    const/16 v20, 0x0

    aput v19, v12, v20

    .line 27
    aget v19, v10, v20

    add-int v6, v19, v15

    aget v19, v10, v3

    add-int v3, v19, v7

    move/from16 v20, v14

    const/16 v19, 0x2

    aget v14, v10, v19

    move/from16 v19, v13

    const/16 v18, 0x3

    aget v13, v10, v18

    iget-object v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    invoke-static {v6, v3, v14, v13, v0}, Lcom/android/camera/effect/ShaderNativeUtil;->getJpegFromMemImage(IIIII)[B

    move-result-object v13

    const/4 v0, 0x1

    .line 28
    aget v3, v10, v0

    add-int/2addr v3, v7

    mul-int/2addr v3, v4

    const/4 v0, 0x0

    aget v6, v10, v0

    add-int/2addr v6, v15

    add-int/2addr v3, v6

    mul-int/lit8 v14, v3, 0x3

    .line 29
    aget v3, v12, v0

    invoke-static {v3, v11, v5, v4, v14}, Lcom/android/camera/effect/ShaderNativeUtil;->updateTextureWidthStride(IIIII)V

    .line 30
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get pixel and upload total time ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move/from16 v21, v7

    sub-long v6, v22, v16

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v8, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_5

    .line 32
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object v0

    .line 34
    :cond_5
    invoke-virtual {v7, v1, v2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 35
    iget-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 36
    iget-boolean v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    move-object/from16 v0, p3

    .line 37
    iget v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v7, v1, v0}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 38
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 39
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 40
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 41
    iget-object v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->getFrameBufferId()I

    move-result v0

    .line 42
    iget-object v1, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-virtual {v1, v0, v11, v5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 44
    move-object v0, v7

    check-cast v0, Lcom/android/camera/effect/renders/PipeRender;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    const/4 v2, 0x0

    aget v23, v12, v2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x1

    move-object/from16 v22, v1

    move/from16 v26, v11

    move/from16 v27, v5

    invoke-direct/range {v22 .. v28}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 45
    invoke-virtual {v7}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    const/4 v0, 0x0

    .line 46
    aget v1, v10, v0

    const/4 v0, 0x1

    .line 47
    aget v2, v10, v0

    neg-int v6, v1

    neg-int v4, v2

    .line 48
    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v23, v3

    move v3, v4

    move/from16 v24, v4

    move/from16 v4, v19

    move/from16 v29, v5

    move/from16 v5, v20

    move/from16 v25, v6

    move/from16 v6, v23

    move-object/from16 v23, v13

    move/from16 v13, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawTimeWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 49
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->He()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    if-eqz v0, :cond_6

    .line 50
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    iget v6, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawFrontCameraWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    goto :goto_2

    .line 52
    :cond_6
    iget v6, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawDoubleShotWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 53
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 55
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 56
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_7

    .line 57
    invoke-static {v15, v13}, Lcom/android/camera/effect/ShaderNativeUtil;->getCenterSquareImage(II)V

    const/4 v0, 0x1

    .line 58
    aget v1, v10, v0

    mul-int v1, v1, v19

    const/4 v0, 0x0

    aget v2, v10, v0

    add-int/2addr v1, v2

    const/4 v0, 0x3

    mul-int/2addr v1, v0

    .line 59
    iget-object v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v0

    move/from16 v2, v29

    invoke-virtual {v0, v11, v2, v1}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    goto :goto_3

    :cond_7
    move/from16 v2, v29

    .line 60
    iget-object v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0, v11, v2, v14}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    .line 61
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    iget-object v2, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    move/from16 v4, v19

    move/from16 v3, v20

    invoke-static {v4, v3, v2}, Lcom/android/camera/effect/ShaderNativeUtil;->compressPicture(III)[B

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 64
    aget v1, v12, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 65
    invoke-static {v1, v12, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 66
    :cond_8
    iget-object v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    .line 67
    iget-object v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    move-object/from16 v0, v23

    .line 68
    iput-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    .line 69
    iput-object v10, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    return-object v2
.end method

.method private applyMiMovieBlackBridge(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/effect/ShaderNativeUtil;->decompressPicture([BI)[I

    move-result-object v3

    .line 2
    iget v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    const/4 v7, 0x0

    .line 3
    aget v15, v3, v7

    aget v3, v3, v4

    .line 4
    iput v15, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 5
    iput v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 6
    iget-object v8, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 7
    iget-object v8, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v8

    invoke-virtual {v8, v15, v3}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->reszieBuffer(II)V

    new-array v14, v4, [I

    .line 8
    invoke-static {}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->genTexture()I

    move-result v8

    aput v8, v14, v7

    .line 9
    aget v8, v14, v7

    invoke-static {v8, v15, v3, v15, v7}, Lcom/android/camera/effect/ShaderNativeUtil;->updateTextureWidthStride(IIIII)V

    .line 10
    iget v8, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v0, v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v13

    if-nez v13, :cond_0

    .line 11
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v13, v5, v6}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 13
    iget-object v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v13, v5}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 14
    iget-boolean v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v13, v5}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    .line 15
    iget v5, v2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v6, v2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v13, v5, v6}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 16
    iget v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v13, v5}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 17
    iget v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v13, v5}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 18
    iget v1, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v13, v1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 19
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->getFrameBufferId()I

    move-result v1

    .line 20
    iget-object v5, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v5

    invoke-virtual {v5, v1, v15, v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    .line 21
    move-object v1, v13

    check-cast v1, Lcom/android/camera/effect/renders/PipeRender;

    new-instance v5, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    aget v9, v14, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    move-object v8, v5

    move v12, v15

    move-object/from16 v16, v13

    move v13, v3

    move-object v4, v14

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    invoke-virtual {v1, v5}, Lcom/android/camera/effect/renders/PipeRender;->drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 22
    iget v1, v2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v2, v2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawBlackBridge(II)V

    .line 23
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 24
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 25
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1, v15, v3, v7}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    .line 26
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    invoke-static {v15, v3, v1}, Lcom/android/camera/effect/ShaderNativeUtil;->compressPicture(III)[B

    move-result-object v1

    .line 27
    aget v2, v4, v7

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 28
    invoke-static {v2, v4, v7}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 29
    :cond_1
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    .line 30
    iget-object v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    return-object v1
.end method

.method private blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)V
    .locals 39

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v0, p3

    move-object/from16 v1, p5

    .line 1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEffect: applyToThumb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    :goto_0
    if-nez v2, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, "thumb!"

    goto :goto_1

    :cond_1
    const-string v0, "jpeg!"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_2
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 5
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->genTexture()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3102(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 6
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/framework/image/MemImage;->getPixelsFromJpg([B)V

    .line 7
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v2

    iget v12, v2, Lcom/android/camera/effect/framework/image/MemImage;->mWidth:I

    .line 8
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v2

    iget v13, v2, Lcom/android/camera/effect/framework/image/MemImage;->mHeight:I

    .line 9
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    move v14, v2

    .line 10
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    move v15, v2

    .line 11
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v2

    const-string v3, "[NewEffectFramework]start"

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v2}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    const-string v3, "local start"

    .line 13
    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 14
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/Splitter;

    move-result-object v16

    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/effect/framework/image/MemImage;->mWidth:I

    iget-object v4, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/effect/framework/image/MemImage;->mHeight:I

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v19

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v20

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v21

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v22

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v16 .. v22}, Lcom/android/camera/effect/framework/graphics/Splitter;->split(IIIIII)Ljava/util/List;

    move-result-object v9

    const-string v3, "local start setImageSettings"

    .line 15
    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 16
    iget v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v10, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v8

    if-nez v8, :cond_3

    .line 17
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_3
    invoke-virtual {v8, v14, v15}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 19
    iget-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v8, v3}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 20
    iget-boolean v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v8, v3}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v8, v12, v13}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto :goto_2

    .line 22
    :cond_4
    iget v0, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v1, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v8, v0, v1}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 23
    :goto_2
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 24
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 25
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    const-string v0, "local start render"

    .line 26
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 27
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->getFrameBufferId()I

    move-result v0

    .line 28
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v3

    iget-object v4, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    const-string v0, "local beginBindFrameBuffer"

    .line 29
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 30
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 32
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    const/16 v7, 0xa5

    const/4 v6, 0x2

    if-ne v0, v7, :cond_6

    if-le v12, v13, :cond_5

    sub-int v0, v12, v13

    .line 33
    div-int/2addr v0, v6

    .line 34
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v13

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v2, v0

    move v3, v13

    move v4, v3

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    sub-int v0, v13, v12

    .line 35
    div-int/2addr v0, v6

    .line 36
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v12

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v1, v0

    move v3, v12

    move v4, v3

    goto :goto_3

    :cond_6
    move v4, v12

    move v3, v13

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x0

    .line 37
    :goto_4
    iput v4, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 38
    iput v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 39
    iget-boolean v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    const/16 v16, 0x0

    if-eqz v0, :cond_8

    .line 40
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v7, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    add-int/lit16 v6, v6, 0x10e

    rem-int/lit16 v6, v6, 0x168

    iget-boolean v5, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    move/from16 v24, v3

    iget-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    if-eqz v3, :cond_7

    const/16 v21, 0x1

    goto :goto_5

    :cond_7
    const/16 v21, 0x0

    :goto_5
    const/16 v22, 0x0

    move/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lcom/android/camera/Util;->getWatermarkRange(IIIZZZ)[I

    move-result-object v0

    .line 41
    new-instance v3, Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget v6, v0, v5

    add-int/2addr v6, v2

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v17, v0, v7

    add-int v7, v17, v1

    int-to-float v7, v7

    aget v17, v0, v5

    add-int v17, v17, v2

    const/16 v18, 0x2

    aget v19, v0, v18

    add-int v5, v17, v19

    int-to-float v5, v5

    const/16 v17, 0x1

    aget v18, v0, v17

    add-int v18, v18, v1

    move/from16 v19, v4

    const/4 v4, 0x3

    aget v20, v0, v4

    add-int v4, v18, v20

    int-to-float v4, v4

    invoke-direct {v3, v6, v7, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    .line 42
    aget v5, v0, v4

    add-int/2addr v5, v2

    aget v4, v0, v17

    add-int/2addr v4, v1

    const/4 v6, 0x2

    aget v7, v0, v6

    move-object/from16 v17, v3

    const/4 v6, 0x3

    aget v3, v0, v6

    invoke-static {v5, v4, v7, v3, v6}, Lcom/android/camera/effect/ShaderNativeUtil;->genWaterMarkRange(IIIII)V

    move-object v6, v0

    move-object/from16 v7, v17

    goto :goto_6

    :cond_8
    move/from16 v24, v3

    move/from16 v19, v4

    move-object/from16 v6, v16

    move-object v7, v6

    .line 43
    :goto_6
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v4, 0x0

    .line 44
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v20, 0x0

    aput-object v0, v3, v20

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v20, 0x1

    aput-object v0, v3, v20

    const-string v0, "[loop%d/%d]begin"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 47
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/framework/graphics/Block;

    .line 48
    iget v3, v0, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    move-object/from16 v20, v7

    .line 49
    iget v7, v0, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    move-object/from16 v21, v6

    .line 50
    iget v6, v0, Lcom/android/camera/effect/framework/graphics/Block;->mRowStride:I

    move/from16 v22, v15

    .line 51
    iget v15, v0, Lcom/android/camera/effect/framework/graphics/Block;->mOffset:I

    move/from16 v32, v14

    .line 52
    iget-object v14, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v14

    iget v14, v14, Lcom/android/camera/effect/framework/image/MemImage;->mChannels:I

    const/4 v11, 0x0

    .line 53
    invoke-static {v11, v11, v3, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v11, 0x0

    move/from16 v33, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    invoke-static {v1, v11, v11, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 55
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/Object;

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v23, 0x0

    aput-object v1, v11, v23

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v25, 0x1

    aput-object v1, v11, v25

    const-string v1, "[loop%d/%d]gl predraw"

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v11, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v11}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    mul-int v11, v15, v14

    .line 58
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v25

    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v26

    move/from16 v27, v3

    move/from16 v28, v7

    move/from16 v29, v6

    move/from16 v30, v11

    invoke-virtual/range {v25 .. v30}, Lcom/android/camera/effect/framework/image/MemImage;->textureWithStride(IIIII)V

    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/Object;

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v1, v15

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v1, v15

    iget-object v14, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v1, v15

    const-string v14, "[loop%d/%d]gl uploadtexture textureId %d"

    invoke-static {v14, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v14, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 61
    move-object v1, v8

    check-cast v1, Lcom/android/camera/effect/renders/PipeRender;

    new-instance v14, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v6, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x1

    move-object/from16 v25, v14

    move/from16 v29, v3

    move/from16 v30, v7

    invoke-direct/range {v25 .. v31}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    invoke-virtual {v1, v14}, Lcom/android/camera/effect/renders/PipeRender;->drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 62
    invoke-virtual {v0, v12, v13}, Lcom/android/camera/effect/framework/graphics/Block;->getOffset(II)[I

    move-result-object v14

    const/4 v6, 0x0

    .line 63
    aget v0, v14, v6

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->left:F

    const/16 v23, 0x1

    .line 64
    aget v0, v14, v23

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->top:F

    .line 65
    aget v0, v14, v6

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 66
    aget v0, v14, v23

    add-int/2addr v0, v7

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 67
    aget v0, v14, v6

    sub-int v25, v2, v0

    .line 68
    aget v0, v14, v23

    sub-int v26, v33, v0

    .line 69
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    move-object/from16 v1, p1

    .line 70
    iget-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWaterInfos:Ljava/util/List;

    aget v15, v14, v6

    neg-int v15, v15

    aget v6, v14, v23

    neg-int v6, v6

    move-object/from16 v27, v8

    iget v8, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v28, v9

    iget-boolean v9, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v30, v11

    move/from16 v34, v33

    move-object v11, v1

    move-object/from16 v1, v29

    move/from16 v35, v2

    move v2, v15

    move/from16 v36, v3

    move/from16 v15, v24

    move v3, v6

    move/from16 v24, v4

    move v4, v12

    move-object v6, v5

    move/from16 v29, v12

    const/4 v12, 0x0

    move v5, v13

    move-object v12, v6

    move-object/from16 v38, v21

    move/from16 v21, v13

    move/from16 v13, v23

    move-object/from16 v23, v38

    move/from16 v6, v32

    move/from16 v37, v7

    move-object/from16 v13, v20

    move/from16 v7, v22

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZ)V

    .line 71
    iget-boolean v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_a

    .line 72
    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    .line 73
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, v13, Landroid/graphics/RectF;->left:F

    iget v6, v13, Landroid/graphics/RectF;->top:F

    .line 74
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object/from16 v0, p0

    .line 75
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->rectangle_collision(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    iget v3, v12, Landroid/graphics/RectF;->right:F

    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    iget v5, v13, Landroid/graphics/RectF;->left:F

    iget v6, v13, Landroid/graphics/RectF;->top:F

    iget v7, v13, Landroid/graphics/RectF;->right:F

    iget v8, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getIntersectRect(FFFFFFFF)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    aget v2, v0, v1

    float-to-int v3, v2

    const/4 v2, 0x1

    aget v4, v0, v2

    float-to-int v4, v4

    const/4 v5, 0x2

    aget v6, v0, v5

    aget v5, v0, v1

    sub-float/2addr v6, v5

    float-to-int v5, v6

    const/4 v6, 0x3

    aget v7, v0, v6

    aget v0, v0, v2

    sub-float/2addr v7, v0

    float-to-int v6, v7

    aget v7, v14, v1

    aget v8, v14, v2

    const/4 v9, 0x3

    invoke-static/range {v3 .. v9}, Lcom/android/camera/effect/ShaderNativeUtil;->mergeWaterMarkRange(IIIIIII)V

    .line 78
    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v19

    move v5, v15

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawTimeWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v16

    .line 79
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->He()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    if-eqz v0, :cond_9

    .line 80
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v19

    move v5, v15

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawFrontCameraWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v18

    goto :goto_8

    .line 82
    :cond_9
    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v19

    move v5, v15

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawDoubleShotWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v17

    .line 83
    :cond_a
    :goto_8
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 84
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "[loop%d/%d]gl gldraw"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 87
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v0

    move/from16 v3, v30

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 88
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[loop%d/%d]gl readPixelAndMerge"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    add-int/lit8 v4, v24, 0x1

    move-object v5, v12

    move-object v7, v13

    move/from16 v24, v15

    move/from16 v13, v21

    move/from16 v15, v22

    move-object/from16 v6, v23

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move/from16 v12, v29

    move/from16 v14, v32

    move/from16 v1, v34

    move/from16 v2, v35

    goto/16 :goto_7

    :cond_b
    move/from16 v34, v1

    move/from16 v35, v2

    move-object/from16 v23, v6

    .line 90
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 91
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 92
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 93
    :cond_c
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_d

    move/from16 v0, v34

    move/from16 v5, v35

    .line 94
    invoke-static {v5, v0}, Lcom/android/camera/effect/ShaderNativeUtil;->getCenterSquareImage(II)V

    .line 95
    :cond_d
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 96
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 97
    iget-boolean v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_e

    .line 98
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderNativeUtil;->getWaterMarkRange(II)[B

    move-result-object v0

    .line 99
    iput-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    move-object/from16 v0, v23

    .line 100
    iput-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_e
    return-void
.end method

.method private checkFrameBuffer(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 2
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 3
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;

    .line 5
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    invoke-static {p0, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    return-void
.end method

.method private drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;IIIIIIIZ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mi/config/b;->al()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p9, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    move-object v1, p1

    invoke-direct {v0, p1}, Lcom/android/camera/watermark/WaterMarkBitmap;-><init>(Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v11, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;

    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;-><init>(Landroid/graphics/Bitmap;IIIIIFF)V

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getOrientation()I

    move-result v1

    sub-int v1, p8, v1

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct {p0, v11, p2, p3, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->releaseBitmap()V

    .line 8
    const-class v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Draw age_gender_and_magic_mirror water mark"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private drawDoubleShotWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v13, p6

    move-object/from16 v4, p7

    .line 1
    invoke-static {}, Lcom/mi/config/b;->al()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    if-eqz v4, :cond_1

    .line 2
    invoke-direct {p0, v4, v2, v3, v13}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    return-object v4

    .line 3
    :cond_1
    iget-boolean v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    if-eqz v4, :cond_8

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 6
    iget-boolean v1, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsUltraPixelWatermarkEnabled:Z

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Vb()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    .line 8
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1502(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 11
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1802(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 15
    :cond_4
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    .line 16
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 17
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 18
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_6
    move-object v5, v6

    :goto_2
    if-nez v5, :cond_7

    return-object v6

    .line 19
    :cond_7
    new-instance v1, Lcom/android/camera/effect/renders/ImageWaterMark;

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 20
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v9

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 21
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v10

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 22
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v11

    const/4 v12, 0x0

    move-object v4, v1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v4 .. v12}, Lcom/android/camera/effect/renders/ImageWaterMark;-><init>(Landroid/graphics/Bitmap;IIIFFFZ)V

    .line 23
    invoke-direct {p0, v1, v2, v3, v13}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    return-object v1

    :cond_8
    return-object v6
.end method

.method private drawFrontCameraWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 8

    .line 1
    invoke-static {}, Lcom/mi/config/b;->al()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p7, :cond_1

    .line 2
    invoke-direct {p0, p7, p2, p3, p6}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    return-object p7

    .line 3
    :cond_1
    iget-boolean p1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    new-instance p1, Lcom/android/camera/effect/renders/MimojiImageWaterMark;

    iget-object p7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 6
    invoke-static {p7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v5

    iget-object p7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 7
    invoke-static {p7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v6

    iget-object p7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 8
    invoke-static {p7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v7

    move-object v0, p1

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;-><init>(Landroid/graphics/Bitmap;IIIFFF)V

    .line 9
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method private drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z
    .locals 9

    .line 1
    new-instance v5, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-direct {v5, v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)V

    const/4 v6, 0x1

    move v2, v6

    .line 2
    :goto_0
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    sget v1, Lcom/android/gallery3d/ui/BaseGLCanvas;->sMaxTextureSize:I

    const/4 v3, 0x2

    if-gt v0, v1, :cond_4

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v3, "downScale: %d width: %d %d parallel: %b"

    .line 5
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->isMiMovieOpen:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 7
    invoke-direct {p0, p1, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyMiMovieBlackBridge(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    move-result p0

    return p0

    .line 9
    :cond_1
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffectOnlyWatermarkRange(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    move-result p0

    return p0

    .line 14
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object p2

    .line 16
    invoke-direct {p0, p1, v8, p3, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)V

    .line 18
    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object p2

    const-string v0, "[NewEffectFramework] done"

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/camera/effect/framework/image/MemImage;->encodeJpeg(III)[B

    move-result-object p2

    invoke-direct {p0, p1, v8, p3, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    .line 20
    :goto_1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object p0

    const-string p1, "TOTAL finish"

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    return v6

    .line 21
    :cond_4
    :goto_2
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    div-int/2addr v0, v3

    iput v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 22
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    div-int/2addr v0, v3

    iput v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    mul-int/lit8 v2, v2, 0x2

    goto/16 :goto_0
.end method

.method private drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3800(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 3
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z

    .line 5
    :cond_0
    new-instance v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {v8, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v8

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawThumbJpeg: thumbLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v3, "null"

    goto :goto_0

    :cond_1
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    .line 9
    :cond_2
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move/from16 v22, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move/from16 v22, v0

    :goto_1
    if-eqz p2, :cond_4

    .line 10
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v11, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v13, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v14, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 12
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v15

    const/16 v16, 0x0

    iget v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    move/from16 v17, v0

    iget v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 13
    invoke-static/range {v9 .. v25}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    .line 14
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    .line 15
    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 16
    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method private drawTimeWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIILcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 8

    .line 1
    invoke-static {}, Lcom/mi/config/b;->al()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p7, :cond_1

    .line 2
    invoke-direct {p0, p7, p2, p3, p6}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    return-object p7

    .line 3
    :cond_1
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-nez p7, :cond_3

    .line 4
    invoke-static {}, Lcom/mi/config/b;->bm()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;-><init>(Ljava/lang/String;IIIZ)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/android/camera/effect/renders/TextWaterMark;

    invoke-direct {p1, v3, p4, p5, p6}, Lcom/android/camera/effect/renders/TextWaterMark;-><init>(Ljava/lang/String;III)V

    .line 7
    :goto_0
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method private drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    if-eqz p4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    neg-int p4, p4

    int-to-float p4, p4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2, v2, v1}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    .line 4
    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    neg-int v0, p2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    neg-int v1, p3

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p4, v0, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result p4

    add-int v2, p2, p4

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result p2

    add-int v3, p3, p2

    .line 7
    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object p2

    new-instance p3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v4

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 11
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getEffectRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    const/16 v3, 0xa0

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "circle"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "parallel"

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_4
    return-object v0
.end method

.method private getIntersectRect(FFFFFFFF)[F
    .locals 1

    const/4 p0, 0x4

    new-array p0, p0, [F

    cmpl-float v0, p1, p5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    const/4 p5, 0x0

    aput p1, p0, p5

    const/4 p1, 0x1

    cmpl-float p5, p2, p6

    if-lez p5, :cond_1

    goto :goto_1

    :cond_1
    move p2, p6

    :goto_1
    aput p2, p0, p1

    const/4 p1, 0x2

    cmpg-float p2, p3, p7

    aput p7, p0, p1

    const/4 p1, 0x3

    cmpg-float p2, p4, p8

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    move p4, p8

    :goto_2
    aput p4, p0, p1

    return-object p0
.end method

.method private initEGL(Landroid/opengl/EGLContext;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v1, Lcom/android/camera/effect/framework/gles/EglCore;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/camera/effect/framework/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1402(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/EglCore;)Lcom/android/camera/effect/framework/gles/EglCore;

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;->release()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance p2, Lcom/android/camera/effect/framework/gles/PbufferSurface;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;-><init>(Lcom/android/camera/effect/framework/gles/EglCore;II)V

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    return-void
.end method

.method private rectangle_collision(FFFFFFFF)Z
    .locals 0

    add-float/2addr p7, p5

    cmpl-float p0, p1, p7

    if-gtz p0, :cond_0

    add-float/2addr p1, p3

    cmpg-float p0, p1, p5

    if-ltz p0, :cond_0

    add-float/2addr p8, p6

    cmpl-float p0, p2, p8

    if-gtz p0, :cond_0

    add-float/2addr p2, p4

    cmpg-float p0, p2, p6

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/SnapshotCanvas;)Lcom/android/camera/effect/SnapshotCanvas;

    .line 6
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V

    return-void
.end method

.method private saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    const-string v5, "null"

    goto :goto_0

    :cond_0
    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 2
    iput-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    :cond_1
    if-eqz p2, :cond_a

    .line 3
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 8
    iget-object v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v5

    iget-object v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-boolean v7, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mNeedThumbnail:Z

    if-nez v3, :cond_2

    .line 9
    iget-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object v8, v3

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :goto_2
    move-object v9, v4

    iget-wide v10, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v12, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    iget-object v13, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v14, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v15, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-nez v3, :cond_4

    .line 11
    iget-boolean v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    move/from16 v20, v3

    const/16 v21, 0x0

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v24, v3

    iget v1, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewThumbnailHash:I

    move/from16 v25, v1

    const/16 v26, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v2

    move/from16 v22, p3

    .line 12
    invoke-virtual/range {v5 .. v26}, Lcom/android/camera/storage/ImageSaver;->addImage([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;ILandroid/hardware/camera2/CaptureResult;)V

    goto/16 :goto_6

    .line 13
    :cond_5
    iget-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_7

    .line 14
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "addImageForEffect"

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v4

    if-nez v3, :cond_6

    .line 16
    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :cond_6
    move-object v5, v3

    iget-wide v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v8, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v9, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v10, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget v11, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v12, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    const/4 v13, 0x0

    iget-object v15, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    move/from16 v14, p3

    move-object/from16 v16, v0

    .line 17
    invoke-static/range {v4 .. v16}, Lcom/android/camera/storage/Storage;->addImageForEffect(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    goto/16 :goto_6

    .line 18
    :cond_7
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImage: uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v9, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_8

    .line 20
    iget-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move-object v10, v0

    goto :goto_4

    :cond_8
    move-object v10, v3

    :goto_4
    iget-object v11, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v12, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v13, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v14, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    if-nez v3, :cond_9

    goto :goto_5

    .line 21
    :cond_9
    iget-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :goto_5
    move-object v15, v4

    .line 22
    invoke-static/range {v5 .. v15}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 24
    :cond_a
    iget-object v0, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-eqz v0, :cond_c

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 26
    :try_start_2
    iget-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-eqz v2, :cond_b

    .line 28
    iput-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 29
    :cond_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 30
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_6
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public drawBlackBridge(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-ge p1, p2, :cond_0

    int-to-double v2, p1

    int-to-double v4, p2

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v6

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 3
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object v1

    new-instance v2, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float p2, p2

    const/high16 v9, -0x1000000

    move-object v4, v2

    move v7, v0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object v1

    new-instance v2, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    int-to-float p1, p1

    sub-float v5, p1, v0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_0

    :cond_0
    int-to-double v2, p2

    int-to-double v4, p1

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v6

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 6
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object v1

    new-instance v2, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float p1, p1

    const/high16 v9, -0x1000000

    move-object v4, v2

    move v7, p1

    move v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object v1

    new-instance v2, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    int-to-float p2, p2

    sub-float v6, p2, v0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    goto/16 :goto_4

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    goto/16 :goto_4

    .line 5
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 6
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_4

    .line 7
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    goto/16 :goto_4

    .line 8
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .line 9
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 10
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    .line 11
    :goto_1
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    .line 12
    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    .line 13
    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-static {v6, v7, v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)I

    move-result v6

    .line 14
    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    if-eqz v7, :cond_7

    iget v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    if-nez v8, :cond_3

    goto/16 :goto_3

    .line 15
    :cond_3
    iget-object v8, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v8, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 16
    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    div-int/2addr v8, v6

    invoke-static {v7, v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 17
    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v6

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    if-eq v5, v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 19
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->reszieBuffer(II)V

    .line 20
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    goto :goto_2

    .line 21
    :cond_5
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 22
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->initBuffer(II)V

    .line 23
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 24
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z

    :goto_2
    if-eqz v3, :cond_6

    if-nez p1, :cond_6

    .line 25
    invoke-direct {p0, v0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    const-string v3, "TOTAL"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z

    .line 28
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 29
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 30
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->release()V

    .line 31
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 32
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object p1

    const-string v0, "TOTAL"

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_4

    :cond_7
    :goto_3
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 34
    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    const/4 v1, 0x2

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    if-eqz v0, :cond_8

    array-length v2, v0

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "jpeg data is broken width %d height %d length %d"

    .line 36
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_4

    .line 39
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_9

    move v2, v1

    :cond_9
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z

    .line 40
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 41
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 42
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    .line 43
    :cond_a
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$610(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    .line 45
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_6
    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->initEGL(Landroid/opengl/EGLContext;Z)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v0, Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {v0}, Lcom/android/camera/effect/SnapshotCanvas;-><init>()V

    invoke-static {p1, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/SnapshotCanvas;)Lcom/android/camera/effect/SnapshotCanvas;

    .line 48
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    invoke-direct {v0}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;-><init>()V

    invoke-static {p1, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/graphics/GraphicBuffer;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    .line 49
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz p1, :cond_b

    .line 50
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    .line 51
    invoke-interface {p1}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result p1

    .line 52
    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    .line 53
    :cond_b
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method
