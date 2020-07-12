.class public Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawBasicTexAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mHeight:I

.field public mIsSnapshot:Z

.field public mUseMiddleBuffer:Z

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 7
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 8
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 9
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 10
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 11
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    const/4 p1, 0x5

    .line 13
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method


# virtual methods
.method public init(Lcom/android/gallery3d/ui/BasicTexture;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 2
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 3
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 4
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 5
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 0

    .line 7
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 8
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 9
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 10
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 11
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 0

    .line 13
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 14
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 15
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 16
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 17
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 18
    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 0

    .line 19
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 20
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 21
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 22
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 23
    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    .line 24
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 25
    iput-boolean p7, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mUseMiddleBuffer:Z

    return-object p0
.end method
