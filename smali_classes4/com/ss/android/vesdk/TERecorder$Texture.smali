.class public Lcom/ss/android/vesdk/TERecorder$Texture;
.super Ljava/lang/Object;
.source "TERecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Texture"
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureID:I


# direct methods
.method public constructor <init>(ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mTextureID:I

    .line 3
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getTextureID()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mTextureID:I

    return p0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4
    :cond_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mTextureID:I

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/ss/android/medialib/common/Common;->deleteTextureID(I)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder$Texture;->mTextureID:I

    :cond_1
    return-void
.end method
