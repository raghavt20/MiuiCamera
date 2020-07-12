.class public Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoStreamsView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform float width;\nuniform float height;\nuniform float width_stride;\nuniform float height_stride;\nuniform float offset;\nuniform float slope;\nuniform float sharpCoff;\nuniform float sourceCoff;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvarying highp float imageWidthFactor; \nvarying highp float imageHeightFactor; \nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate; \nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 bottomTextureCoordinate;\n\nvarying highp float centerMultiplier;\nvarying highp float edgeMultiplier;\n\nuniform sampler2D inputImageTexture;\n\nvoid main() {\n  float wRatio = (width - 1.0) / width_stride;\n  float hRatio = height / height_stride;\n  vec2 pos = interp_tc * vec2(wRatio, hRatio);\n  mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n  mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n  vec2 leftTextureCoordinate = interp_tc.xy - widthStep/width;\n  vec2 rightTextureCoordinate = interp_tc.xy + widthStep/width;\n  vec2 topTextureCoordinate = interp_tc.xy + heightStep/height;     \n  vec2 bottomTextureCoordinate = interp_tc.xy - heightStep/height;\n  vec2 lpos = leftTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 rpos = rightTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 tpos = topTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 bpos = bottomTextureCoordinate * vec2(wRatio, hRatio);\n  mediump float ly = texture2D(y_tex, lpos).r;\n  mediump float lu = texture2D(u_tex, lpos).r - .5;\n  mediump float lv = texture2D(v_tex, lpos).r - .5;\n  mediump float ry = texture2D(y_tex, rpos).r;\n  mediump float ru = texture2D(u_tex, rpos).r - .5;\n  mediump float rv = texture2D(v_tex, rpos).r - .5;\n  mediump float ty = texture2D(y_tex, tpos).r;\n  mediump float tu = texture2D(u_tex, tpos).r - .5;\n  mediump float tv = texture2D(v_tex, tpos).r - .5;\n  mediump float by = texture2D(y_tex, bpos).r;\n  mediump float bu = texture2D(u_tex, bpos).r - .5;\n  mediump float bv = texture2D(v_tex, bpos).r - .5;\n  float y =  texture2D(y_tex, pos).r;\n  float u =  texture2D(u_tex, pos).r - .5;\n  float v =  texture2D(v_tex, pos).r - .5;\n  y = (y * centerMultiplier - (ly + ry +ty  + by) * edgeMultiplier)*sharpCoff + y*sourceCoff;\n  y = (1.0 + slope)*y  -  slope*offset;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

.field private static final ORIENTATION_DOWN:I = 0x1

.field private static final ORIENTATION_LEFT:I = 0x2

.field private static final ORIENTATION_RIGHT:I = 0x3

.field private static final ORIENTATION_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoStreamsView"

.field private static final VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvarying float imageWidthFactor; \nvarying float imageHeightFactor; \nuniform float sharpStrength; \nvarying float sharpness;\n\nvarying vec2 textureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\n\nvoid main() {\n  gl_Position = in_pos;\n    \n imageWidthFactor = 1.0;\n imageHeightFactor = 1.0;\n sharpness = sharpStrength;\n    \n    textureCoordinate = in_tc.xy;\n    \n    centerMultiplier = 1.0 + 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n  interp_tc = in_tc ;\n}\n"

.field private static final downTextureCoord:Ljava/nio/FloatBuffer;

.field private static final downTextureCoordMirror:Ljava/nio/FloatBuffer;

.field private static final leftTextureCoord:Ljava/nio/FloatBuffer;

.field private static final leftTextureCoordMirror:Ljava/nio/FloatBuffer;

.field private static logCounter:I

.field private static final rightTextureCoord:Ljava/nio/FloatBuffer;

.field private static final rightTextureCoordMirror:Ljava/nio/FloatBuffer;

.field private static final upTextureCoord:Ljava/nio/FloatBuffer;

.field private static final upTextureCoordMirror:Ljava/nio/FloatBuffer;

.field private static final vertices:Ljava/nio/FloatBuffer;


# instance fields
.field public _RatioHeight:I

.field public _RatioWidth:I

.field public _RatioX:I

.field public _RatioY:I

.field public _lastFrameAngle:I

.field public _lastYStride:I

.field public _lastYUVHeight:I

.field public _lastYUVWidth:I

.field public _oriViewHeight:I

.field public _oriViewWidth:I

.field private _renderModelChanged:Z

.field private _shiftUpVideoRatio:F

.field private _shiftUpVideoRatioDelta:F

.field private _shiftUpVideoValue:F

.field private _shiftUpViewRatio:F

.field private _shiftUpViewRatioDelta:F

.field public _surfaceSizeChanged:Z

.field private canvasToFrameRatio:F

.field public currentIndex:I

.field private debug_increment:I

.field private framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

.field private framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

.field private heightLocation:I

.field private heightStrideLocation:I

.field public isRenderThreadRunning:Z

.field private lastFPSLogTime:J

.field public nativeObject:J

.field private numFramesSinceLastLog:J

.field private offsetLocation:I

.field public participantUID:Ljava/lang/String;

.field private posLocation:I

.field private renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

.field private screenDimensions:Landroid/graphics/Point;

.field public screenHeight:I

.field public screenWidth:I

.field private sharpCoffLocation:I

.field private sharpStrengthLocation:I

.field private slopeLocation:I

.field private sourceCoffLocation:I

.field private tcLocation:I

.field private widthLocation:I

.field private widthStrideLocation:I

.field private yuvTextures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->vertices:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->upTextureCoord:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->downTextureCoord:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->leftTextureCoord:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->rightTextureCoord:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->upTextureCoordMirror:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->downTextureCoordMirror:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->leftTextureCoordMirror:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->rightTextureCoordMirror:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->canvasToFrameRatio:F

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->yuvTextures:[I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->posLocation:I

    .line 5
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->tcLocation:I

    .line 6
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthStrideLocation:I

    .line 7
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightStrideLocation:I

    .line 8
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->offsetLocation:I

    .line 9
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->slopeLocation:I

    .line 10
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthLocation:I

    .line 11
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpCoffLocation:I

    .line 12
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpStrengthLocation:I

    .line 13
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sourceCoffLocation:I

    .line 14
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightLocation:I

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->lastFPSLogTime:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->numFramesSinceLastLog:J

    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    .line 18
    iput-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_surfaceSizeChanged:Z

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    .line 21
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    .line 22
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVWidth:I

    .line 23
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVHeight:I

    .line 24
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYStride:I

    .line 25
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastFrameAngle:I

    .line 26
    iput-boolean v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->isRenderThreadRunning:Z

    .line 27
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    .line 28
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    const-string v2, ""

    .line 29
    iput-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->participantUID:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_renderModelChanged:Z

    const/4 v2, 0x0

    .line 31
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatio:F

    const/high16 v3, -0x40800000    # -1.0f

    .line 32
    iput v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatioDelta:F

    .line 33
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatio:F

    .line 34
    iput v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatioDelta:F

    .line 35
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoValue:F

    .line 36
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    .line 37
    iget v2, p2, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    .line 38
    iget v2, p2, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    const-string v2, "VideoStreamView"

    const-string v3, "init stream view"

    .line 39
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenDimensions:Landroid/graphics/Point;

    const/4 p2, 0x2

    .line 41
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 42
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 43
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    .line 45
    invoke-direct {p0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->create()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    new-instance p2, Lcom/xiaomi/rendermanager/videoRender/FramePool;

    invoke-direct {p2}, Lcom/xiaomi/rendermanager/videoRender/FramePool;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    const-string p2, "VideoStreamView"

    const-string v0, "creating the java frame pool"

    .line 48
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->currentIndex:I

    .line 51
    sget-object p2, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_AUTO:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    iput-object p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    const-string p2, "window"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 53
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    iput p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    .line 55
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    iput p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " get screen resolution:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoStreamView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "VideoStreamView"

    const-string p1, " init OK"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 58
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->canvasToFrameRatio:F

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->yuvTextures:[I

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->posLocation:I

    .line 63
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->tcLocation:I

    .line 64
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthStrideLocation:I

    .line 65
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightStrideLocation:I

    .line 66
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->offsetLocation:I

    .line 67
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->slopeLocation:I

    .line 68
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthLocation:I

    .line 69
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpCoffLocation:I

    .line 70
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpStrengthLocation:I

    .line 71
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sourceCoffLocation:I

    .line 72
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightLocation:I

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->lastFPSLogTime:J

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->numFramesSinceLastLog:J

    const/4 v3, 0x0

    .line 75
    iput-object v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    .line 76
    iput-wide v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_surfaceSizeChanged:Z

    const/4 v2, 0x0

    .line 78
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    .line 79
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    .line 80
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVWidth:I

    .line 81
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVHeight:I

    .line 82
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYStride:I

    .line 83
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastFrameAngle:I

    .line 84
    iput-boolean v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->isRenderThreadRunning:Z

    .line 85
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    .line 86
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    const-string v3, ""

    .line 87
    iput-object v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->participantUID:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_renderModelChanged:Z

    const/4 v3, 0x0

    .line 89
    iput v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    .line 90
    iput v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatioDelta:F

    .line 91
    iput v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatio:F

    .line 92
    iput v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatioDelta:F

    .line 93
    iput v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoValue:F

    .line 94
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    const-string v3, "VideoStreamView"

    const-string v4, "init stream view"

    .line 95
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "window"

    .line 96
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 97
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    iput v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    .line 99
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    iput v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " get screen resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoStreamView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 101
    fill-array-data v4, :array_1

    .line 102
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    .line 104
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-gez p2, :cond_0

    .line 106
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    :cond_0
    if-gez v0, :cond_1

    .line 107
    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    .line 108
    :cond_1
    iput p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    .line 109
    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    .line 110
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenDimensions:Landroid/graphics/Point;

    .line 111
    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 112
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 113
    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 114
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    new-instance p1, Lcom/xiaomi/rendermanager/videoRender/FramePool;

    invoke-direct {p1}, Lcom/xiaomi/rendermanager/videoRender/FramePool;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    const-string p1, "VideoStreamsView"

    const-string p2, "VideoStreamView: creating the java frame pool"

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->currentIndex:I

    .line 120
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_AUTO:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    const-string p0, "VideoStreamView"

    const-string p1, " init OK"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 122
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method

.method private static abortUnless(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->updateFrames()V

    return-void
.end method

.method private static addShaderTo(ILjava/lang/String;I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Create opengl shader failed."

    .line 2
    invoke-static {v3, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 5
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 6
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const v3, 0x8b81

    .line 7
    invoke-static {p0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 8
    aget v1, v1, v2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 9
    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 10
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 11
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 12
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    return-void
.end method

.method private native bindStream(JLjava/lang/String;Z)Z
.end method

.method private static checkNoGLES2Error()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20 error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoStreamsView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20 error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    return-void
.end method

.method private native create()J
.end method

.method private native destory(J)V
.end method

.method private static directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method private drawRectangle([ILjava/nio/FloatBuffer;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const v2, 0x84c0

    add-int/2addr v2, v1

    .line 1
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 v2, 0xde1

    .line 3
    aget v3, p1, v1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->posLocation:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 7
    iget p0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->posLocation:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/4 p0, 0x5

    const/4 p1, 0x4

    .line 9
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 10
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    return-void
.end method

.method private static fill(Ljava/nio/ByteBuffer;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    int-to-byte v1, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private native setPreviewRender(J)V
.end method

.method private native setShiftUp(JFFFFF)V
.end method

.method private native setUIViewSize(JJJ)V
.end method

.method private native setWindowsResolution(Ljava/lang/String;FF)Z
.end method

.method private sleep(I)V
    .locals 0

    return-void
.end method

.method private texImage2D(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;[I)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 1
    iget-object v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v11, v2, v1

    const v2, 0x84c0

    add-int/2addr v2, v1

    .line 2
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 3
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 v2, 0xde1

    .line 4
    aget v3, p2, v1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 5
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 6
    iget-object v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    if-nez v1, :cond_0

    aget v2, v2, v0

    goto :goto_1

    :cond_0
    aget v2, v2, v0

    div-int/lit8 v2, v2, 0x2

    :goto_1
    move v6, v2

    .line 7
    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    div-int/lit8 v2, v2, 0x2

    :goto_2
    move v7, v2

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    .line 8
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 9
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthStrideLocation:I

    iget-object v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v1, v1, v0

    int-to-float v1, v1

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 13
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightStrideLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 14
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->offsetLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 15
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->slopeLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 16
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sourceCoffLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 17
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpCoffLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 18
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpStrengthLocation:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 19
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->tcLocation:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 20
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 21
    iget-boolean p2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->localPreview:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->backCamera:Z

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    move p2, v0

    :goto_3
    const/4 v1, 0x0

    .line 22
    iget p1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    add-int/lit16 p1, p1, 0x2d0

    rem-int/lit16 p1, p1, 0x168

    if-eqz p1, :cond_a

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_8

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_6

    const/16 v2, 0x10e

    if-eq p1, v2, :cond_4

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalAngle: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    :goto_4
    move-object v7, v1

    goto :goto_6

    :cond_4
    if-eqz p2, :cond_5

    .line 24
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->rightTextureCoordMirror:Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_5
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->rightTextureCoord:Ljava/nio/FloatBuffer;

    :goto_5
    move-object v1, p1

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    .line 25
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->downTextureCoordMirror:Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->downTextureCoord:Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_9

    .line 26
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->leftTextureCoordMirror:Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_9
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->leftTextureCoord:Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_a
    if-eqz p2, :cond_b

    .line 27
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->upTextureCoordMirror:Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_b
    sget-object p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->upTextureCoord:Ljava/nio/FloatBuffer;

    goto :goto_5

    .line 28
    :goto_6
    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->tcLocation:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 29
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    return-void
.end method

.method private native unbindStream(J)Z
.end method

.method private updateFrames()V
    .locals 2

    .line 1
    sget v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->logCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->logCounter:I

    rem-int/lit16 v0, v0, 0xc8

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The view size top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " visiblility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 0 for visible 4 for invisible and 8 for gone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method


# virtual methods
.method public CalcRatioViewPort(III)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v1

    move v3, v2

    :goto_1
    int-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    .line 1
    iget v9, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    int-to-double v10, v9

    div-double/2addr v5, v10

    double-to-float v5, v5

    int-to-double v10, v4

    mul-double/2addr v10, v7

    .line 2
    iget v6, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    int-to-double v7, v6

    div-double/2addr v10, v7

    double-to-float v7, v10

    cmpl-float v8, v5, v7

    const/4 v10, 0x0

    if-lez v8, :cond_2

    .line 3
    iput v6, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    mul-int/2addr v6, v3

    .line 4
    div-int/2addr v6, v4

    iput v6, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    .line 5
    iget v6, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    sub-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    iput v9, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    .line 6
    iput v10, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    goto :goto_2

    .line 7
    :cond_2
    iput v9, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    mul-int/2addr v9, v4

    .line 8
    div-int/2addr v9, v3

    iput v9, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    .line 9
    iget v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    iput v6, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    .line 10
    iput v10, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    .line 11
    :goto_2
    iget v6, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    iget v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    mul-int/2addr v6, v8

    .line 12
    iget v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    iget v9, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    mul-int/2addr v8, v9

    int-to-float v9, v6

    int-to-float v11, v8

    div-float/2addr v9, v11

    .line 13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VideoStreamView: VideoStreamView opengl setting first calculate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " _RatioY:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " _RatioWidth:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " _RatioHeight:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " screen height:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " screen Width:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    iget v10, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " frame height:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frame width:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v17, v2

    const-string v2, " showRatio:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " screen:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " showsize:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wRatio:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " hRatio:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " rotateImageWidth:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rotateImageHeight:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "VideoStreamsView"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v8, v9

    const-wide v18, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v8, v18

    if-gez v2, :cond_3

    .line 14
    iget-object v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    sget-object v8, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_AUTO:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    if-eq v2, v8, :cond_4

    :cond_3
    iget-object v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    sget-object v8, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_FIT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    if-ne v2, v8, :cond_6

    :cond_4
    const-string v2, "VideoStreamView: opengl setting using FIT modal"

    .line 15
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v2, v7, v5

    if-lez v2, :cond_5

    .line 16
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    .line 17
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v4

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    .line 18
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    iget v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    sub-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    const/4 v2, 0x0

    .line 19
    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 20
    iget v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    iput v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    .line 21
    iget v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    mul-int/2addr v8, v4

    div-int/2addr v8, v3

    iput v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    .line 22
    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    .line 23
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    iget v8, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    sub-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    goto :goto_3

    :cond_6
    const-string v2, "VideoStreamView: opengl setting using CUT modal"

    .line 24
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    cmpg-float v2, v5, v7

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v2, :cond_7

    .line 25
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v5, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    mul-int/2addr v5, v4

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->canvasToFrameRatio:F

    goto :goto_4

    .line 26
    :cond_7
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v5, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    mul-int/2addr v5, v3

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->canvasToFrameRatio:F

    .line 27
    :goto_4
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    int-to-float v2, v2

    iget v5, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    const/4 v7, 0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    int-to-float v3, v3

    .line 28
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 29
    iget v4, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatio:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatioDelta:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatio:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatioDelta:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 30
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoValue:F

    iget v4, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    .line 31
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoStreamView: VideoStreamView opengl setting _RatioX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    move-object/from16 v3, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public bindRenderWithStream(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamView: bindRenderWithStream with:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->participantUID:Ljava/lang/String;

    .line 3
    iget-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    .line 5
    :cond_0
    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 7
    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->participantUID:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->setWindowsResolution(Ljava/lang/String;FF)Z

    .line 8
    iget-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->bindStream(JLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public destoryNativeRender()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->destory(J)V

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "VideoStreamsView"

    const-string v1, "VideoStreamView:release the java frame pool"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public generateTexture(II)V
    .locals 16

    const-string v0, "VideoStreamsView"

    const-string v1, "VideoStreamView: Generate the texture."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, p1, p2

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->fill(Ljava/nio/ByteBuffer;I)V

    .line 4
    div-int/lit8 v2, p1, 0x2

    mul-int v3, v2, p2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x80

    .line 5
    invoke-static {v3, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->fill(Ljava/nio/ByteBuffer;I)V

    move-object/from16 v4, p0

    .line 6
    iget-object v4, v4, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->yuvTextures:[I

    const/4 v5, 0x3

    .line 7
    invoke-static {v5, v4, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 8
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    :goto_0
    if-ge v1, v5, :cond_3

    if-nez v1, :cond_0

    move/from16 v9, p1

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    if-nez v1, :cond_1

    move/from16 v10, p2

    goto :goto_2

    .line 9
    :cond_1
    div-int/lit8 v6, p2, 0x2

    move v10, v6

    :goto_2
    const v6, 0x84c0

    add-int/2addr v6, v1

    .line 10
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 11
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 12
    aget v6, v4, v1

    const/16 v15, 0xde1

    invoke-static {v15, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1909

    const/4 v11, 0x0

    const/16 v12, 0x1909

    const/16 v13, 0x1401

    if-nez v1, :cond_2

    move-object v14, v0

    goto :goto_3

    :cond_2
    move-object v14, v3

    .line 14
    :goto_3
    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 15
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 v6, 0x2801

    const v7, 0x46180400    # 9729.0f

    .line 16
    invoke-static {v15, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 17
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 v6, 0x2800

    .line 18
    invoke-static {v15, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 19
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 v6, 0x2802

    const v7, 0x47012f00    # 33071.0f

    .line 20
    invoke-static {v15, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 21
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 v6, 0x2803

    .line 22
    invoke-static {v15, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 23
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getConvertRatio()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    sget-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_FIT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iget p0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->canvasToFrameRatio:F

    div-float/2addr v0, p0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->canvasToFrameRatio:F

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    const-string v0, "VideoStreamsView"

    const-string v1, "attach the surface to window"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->isRenderThreadRunning:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    const-string v0, "VideoStreamsView"

    const-string v1, "detach the surface to window"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->isRenderThreadRunning:Z

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    if-nez p1, :cond_0

    const-string p1, "VideoStreamsView"

    const-string v0, "onDrawFrame: framesToRender  is null !"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    .line 7
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    if-nez v0, :cond_1

    const-string p1, "VideoStreamsView"

    const-string v0, "onDrawFrame: framePool is null !"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    monitor-exit p0

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "VideoStreamsView"

    const-string v1, "updateFrames: frame is null !"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 11
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVWidth:I

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVHeight:I

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_renderModelChanged:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_surfaceSizeChanged:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastFrameAngle:I

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYStride:I

    iget-object v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_4

    :cond_3
    const-string v1, "VideoStreamsView"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generate texture because one of following property change: _lastYUVWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " _lastYUVHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " _renderModelChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_renderModelChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " _surfaceSizeChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_surfaceSizeChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " _lastYStride:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYStride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYStride:I

    .line 14
    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iget v3, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    add-int/lit16 v3, v3, 0x2d0

    rem-int/lit16 v3, v3, 0x168

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->CalcRatioViewPort(III)I

    .line 15
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 16
    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVWidth:I

    .line 17
    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastYUVHeight:I

    .line 18
    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_lastFrameAngle:I

    .line 19
    iput-boolean v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_surfaceSizeChanged:Z

    .line 20
    iput-boolean v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_renderModelChanged:Z

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->yuvTextures:[I

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->texImage2D(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;[I)V

    .line 22
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 23
    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    invoke-virtual {v1, p1}, Lcom/xiaomi/rendermanager/videoRender/FramePool;->returnFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)V

    :cond_5
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move p1, v1

    goto :goto_0

    :cond_6
    move p1, v0

    :goto_0
    const-string v2, "Nothing to render!"

    .line 24
    invoke-static {p1, v2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 25
    iget p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioX:I

    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioY:I

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioWidth:I

    iget v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_RatioHeight:I

    invoke-static {p1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 p1, 0x4000

    .line 26
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 28
    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v3, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-float v3, v3

    const/4 v4, 0x0

    sub-float v3, v4, v3

    aput v3, v2, v0

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v9, v0

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v0, v9

    sub-float v0, v4, v0

    aput v0, v2, v1

    const/4 v0, 0x2

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v9, v3

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v3, v9

    sub-float v3, v4, v3

    aput v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v9, v3

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v3, v9

    sub-float v3, v4, v3

    aput v3, v2, v0

    const/4 v0, 0x4

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v9, v3

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v3, v9

    aput v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v9, v3

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v3, v9

    aput v3, v2, v0

    const/4 v0, 0x6

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v9, v3

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v3, v9

    aput v3, v2, v0

    const/4 v0, 0x7

    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    int-to-double v9, v3

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v3, v9

    sub-float/2addr v4, v3

    aput v4, v2, v0

    invoke-static {v2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 29
    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    .line 30
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    rem-int/lit8 v1, v1, 0x32

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->debug_increment:I

    .line 31
    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->yuvTextures:[I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->vertices:Ljava/nio/FloatBuffer;

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->drawRectangle([ILjava/nio/FloatBuffer;)V

    .line 32
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 33
    iget-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->numFramesSinceLastLog:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->numFramesSinceLastLog:J

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 35
    iget-wide v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->lastFPSLogTime:J

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_8

    iget-wide v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->lastFPSLogTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    cmpl-double p1, v4, v6

    if-lez p1, :cond_9

    .line 36
    :cond_8
    iput-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->lastFPSLogTime:J

    .line 37
    iput-wide v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->numFramesSinceLastLog:J

    .line 38
    :cond_9
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamView: VideoStreamView paused render. view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamView: VideoStreamView resume render. view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoStreamView: On Surface changed with with:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoStreamsView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewWidth:I

    .line 3
    iput p3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_oriViewHeight:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_surfaceSizeChanged:Z

    int-to-float p1, p2

    .line 5
    iget p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p3

    .line 6
    iget p3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->screenHeight:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamView: On Surface set width_ratio:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " height_ratio:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->participantUID:Ljava/lang/String;

    invoke-direct {p0, p3, p1, p2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->setWindowsResolution(Ljava/lang/String;FF)Z

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9

    const-string p1, "VideoStreamsView"

    const-string p2, "VideoStreamView: surface created"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x400

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->generateTexture(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3
    :catch_0
    new-instance p2, Landroid/os/Debug$MemoryInfo;

    invoke-direct {p2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 4
    invoke-static {p2}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dalvikPrivateDirty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nativePss: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " otherSharedDirty: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " totalPrivate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " totalPss:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " totalShared"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeHeapSizeTotal:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v0

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeAllocatedHeapSize:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    shr-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeAllocatedFree:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v0

    shr-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    move v1, p2

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    const-string v2, "Create OpenGL program failed."

    .line 13
    invoke-static {v1, v2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    const v1, 0x8b31

    const-string v2, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvarying float imageWidthFactor; \nvarying float imageHeightFactor; \nuniform float sharpStrength; \nvarying float sharpness;\n\nvarying vec2 textureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\n\nvoid main() {\n  gl_Position = in_pos;\n    \n imageWidthFactor = 1.0;\n imageHeightFactor = 1.0;\n sharpness = sharpStrength;\n    \n    textureCoordinate = in_tc.xy;\n    \n    centerMultiplier = 1.0 + 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n  interp_tc = in_tc ;\n}\n"

    .line 14
    invoke-static {v1, v2, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->addShaderTo(ILjava/lang/String;I)V

    .line 15
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const v1, 0x8b30

    const-string v2, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform float width;\nuniform float height;\nuniform float width_stride;\nuniform float height_stride;\nuniform float offset;\nuniform float slope;\nuniform float sharpCoff;\nuniform float sourceCoff;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvarying highp float imageWidthFactor; \nvarying highp float imageHeightFactor; \nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate; \nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 bottomTextureCoordinate;\n\nvarying highp float centerMultiplier;\nvarying highp float edgeMultiplier;\n\nuniform sampler2D inputImageTexture;\n\nvoid main() {\n  float wRatio = (width - 1.0) / width_stride;\n  float hRatio = height / height_stride;\n  vec2 pos = interp_tc * vec2(wRatio, hRatio);\n  mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n  mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n  vec2 leftTextureCoordinate = interp_tc.xy - widthStep/width;\n  vec2 rightTextureCoordinate = interp_tc.xy + widthStep/width;\n  vec2 topTextureCoordinate = interp_tc.xy + heightStep/height;     \n  vec2 bottomTextureCoordinate = interp_tc.xy - heightStep/height;\n  vec2 lpos = leftTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 rpos = rightTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 tpos = topTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 bpos = bottomTextureCoordinate * vec2(wRatio, hRatio);\n  mediump float ly = texture2D(y_tex, lpos).r;\n  mediump float lu = texture2D(u_tex, lpos).r - .5;\n  mediump float lv = texture2D(v_tex, lpos).r - .5;\n  mediump float ry = texture2D(y_tex, rpos).r;\n  mediump float ru = texture2D(u_tex, rpos).r - .5;\n  mediump float rv = texture2D(v_tex, rpos).r - .5;\n  mediump float ty = texture2D(y_tex, tpos).r;\n  mediump float tu = texture2D(u_tex, tpos).r - .5;\n  mediump float tv = texture2D(v_tex, tpos).r - .5;\n  mediump float by = texture2D(y_tex, bpos).r;\n  mediump float bu = texture2D(u_tex, bpos).r - .5;\n  mediump float bv = texture2D(v_tex, bpos).r - .5;\n  float y =  texture2D(y_tex, pos).r;\n  float u =  texture2D(u_tex, pos).r - .5;\n  float v =  texture2D(v_tex, pos).r - .5;\n  y = (y * centerMultiplier - (ly + ry +ty  + by) * edgeMultiplier)*sharpCoff + y*sourceCoff;\n  y = (1.0 + slope)*y  -  slope*offset;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    .line 16
    invoke-static {v1, v2, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->addShaderTo(ILjava/lang/String;I)V

    .line 17
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 18
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 19
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    new-array v1, p2, [I

    aput v0, v1, v0

    aput v0, v1, v0

    const v2, 0x8b82

    .line 20
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 21
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 22
    aget v1, v1, v0

    if-ne v1, p2, :cond_1

    move v1, p2

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_2
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 24
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 25
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "y_tex"

    .line 26
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v3, p2

    goto :goto_3

    :cond_2
    move v3, v0

    :goto_3
    const-string v4, "get y_tex failed."

    .line 27
    invoke-static {v3, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 29
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 30
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "u_tex"

    .line 31
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    move v3, p2

    goto :goto_4

    :cond_3
    move v3, v0

    :goto_4
    const-string v4, "get u_tex failed."

    .line 32
    invoke-static {v3, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 34
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 35
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "v_tex"

    .line 36
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    move v3, p2

    goto :goto_5

    :cond_4
    move v3, v0

    :goto_5
    const-string v4, "get v_tex failed."

    .line 37
    invoke-static {v3, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/4 v3, 0x2

    .line 39
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 40
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "in_pos"

    .line 41
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->posLocation:I

    .line 42
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->posLocation:I

    if-eq v1, v2, :cond_5

    move v1, p2

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v3, "Get opengl variable in_pos address failed."

    invoke-static {v1, v3}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "in_tc"

    .line 44
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->tcLocation:I

    .line 45
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->posLocation:I

    if-eq v1, v2, :cond_6

    move v1, p2

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    const-string v3, "Get opengl variable in_tc address failed."

    invoke-static {v1, v3}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 47
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->tcLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 48
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 49
    iget v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->tcLocation:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->upTextureCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 50
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "width_stride"

    .line 51
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthStrideLocation:I

    .line 52
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthStrideLocation:I

    if-eq v1, v2, :cond_7

    move v1, p2

    goto :goto_8

    :cond_7
    move v1, v0

    :goto_8
    const-string v3, "Get opengl variable width_stride address failed."

    invoke-static {v1, v3}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 54
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthStrideLocation:I

    const/high16 v3, 0x43800000    # 256.0f

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 55
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "height_stride"

    .line 56
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightStrideLocation:I

    .line 57
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightStrideLocation:I

    if-eq v1, v2, :cond_8

    move v1, p2

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    const-string v4, "Get opengl variable height_stride address failed."

    invoke-static {v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 59
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightStrideLocation:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 60
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "offset"

    .line 61
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->offsetLocation:I

    .line 62
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->offsetLocation:I

    if-eq v1, v2, :cond_9

    move v1, p2

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    const-string v4, "Get opengl variable offset_stride address failed."

    invoke-static {v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 64
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->offsetLocation:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 65
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "slope"

    .line 66
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->slopeLocation:I

    .line 67
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->slopeLocation:I

    if-eq v1, v2, :cond_a

    move v1, p2

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    const-string v4, "Get opengl variable slope address failed."

    invoke-static {v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 69
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->slopeLocation:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 70
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "sharpCoff"

    .line 71
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpCoffLocation:I

    .line 72
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpCoffLocation:I

    if-eq v1, v2, :cond_b

    move v1, p2

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    const-string v4, "Get opengl variable sharpCoffLocation address failed."

    invoke-static {v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 74
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpCoffLocation:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 75
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "sharpStrength"

    .line 76
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpStrengthLocation:I

    .line 77
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpStrengthLocation:I

    if-eq v1, v2, :cond_c

    move v1, p2

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    const-string v4, "Get opengl variable sharpStrengthLocation address failed."

    invoke-static {v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 79
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sharpStrengthLocation:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 80
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "sourceCoff"

    .line 81
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sourceCoffLocation:I

    .line 82
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sourceCoffLocation:I

    if-eq v1, v2, :cond_d

    move v1, p2

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    const-string v4, "Get opengl variable sourceCoffLocation address failed."

    invoke-static {v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 84
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->sourceCoffLocation:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 85
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "width"

    .line 86
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthLocation:I

    .line 87
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthLocation:I

    if-eq v1, v2, :cond_e

    move v1, p2

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    const-string v4, "Get opengl variable width address failed."

    invoke-static {v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 89
    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->widthLocation:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 90
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const-string v1, "height"

    .line 91
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightLocation:I

    .line 92
    iget p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightLocation:I

    if-eq p1, v2, :cond_f

    move v0, p2

    :cond_f
    const-string p1, "Get opengl variable height address failed."

    invoke-static {v0, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    .line 94
    iget p0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->heightLocation:I

    invoke-static {p0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 95
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    .line 96
    invoke-static {p1, p1, p1, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 97
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    const/16 p0, 0xcf5

    .line 98
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 99
    invoke-static {}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->checkNoGLES2Error()V

    return-void
.end method

.method public renderFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/xiaomi/rendermanager/videoRender/FramePool;->validateDimensions(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Z

    move-result v0

    const-string v1, "Frame too large!"

    invoke-static {v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->abortUnless(ZLjava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->isRenderThreadRunning:Z

    if-nez v0, :cond_0

    const-string p0, "VideoStreamsView"

    const-string p1, "VideoStreamView: The render thread is not running, so we discard this frame."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    if-nez v0, :cond_1

    const-string p1, "VideoStreamsView"

    const-string v0, "VideoStreamView: frame pool is null!"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    invoke-virtual {v0, p1}, Lcom/xiaomi/rendermanager/videoRender/FramePool;->takeFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "VideoStreamsView"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoStreamView: Take an frame from frame pool is empty, discard this frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    invoke-virtual {v0, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->copyFrom(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    .line 12
    iget-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    if-eqz v1, :cond_4

    .line 14
    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    invoke-virtual {v2, v1}, Lcom/xiaomi/rendermanager/videoRender/FramePool;->returnFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)V

    .line 15
    :cond_4
    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    if-nez v0, :cond_5

    const-string v0, "VideoStreamsView"

    const-string v1, "updateFrame renderFrame framesToRender is null"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p1, :cond_6

    .line 19
    new-instance p1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$2;-><init>(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setRenderModel(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderModel:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_renderModelChanged:Z

    :cond_0
    return-void
.end method

.method public setShiftUpImpl(FFFFF)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatio:F

    .line 2
    iput p4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoRatioDelta:F

    .line 3
    iput p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatio:F

    .line 4
    iput p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpViewRatioDelta:F

    .line 5
    iput p5, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->_shiftUpVideoValue:F

    return-void
.end method

.method public setShiftUpInternal(FFFFF)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamView: setShiftUp with:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " viewRatioDelta:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " videoRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " videoRatioDelta:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " shiftUpValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->setShiftUp(JFFFFF)V

    return-void
.end method

.method public setSize(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamView: The thread id (NATIVE thread) for setSize is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$1;-><init>(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;II)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated, this pointer is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->isRenderThreadRunning:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed, this pointer is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->isRenderThreadRunning:Z

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framePool:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    invoke-virtual {p1, v0}, Lcom/xiaomi/rendermanager/videoRender/FramePool;->returnFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->framesToRender:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unbindRenderWithStream()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamView: unbindRenderWithStream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStreamsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->unbindStream(J)Z

    move-result p0

    return p0
.end method

.method public videoSizeChanged(II)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoStreamView: The video size changed to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoStreamsView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
