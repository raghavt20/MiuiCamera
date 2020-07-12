.class public Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I420Frame"
.end annotation


# instance fields
.field public backCamera:Z

.field public height:I

.field public localPreview:Z

.field public offset:F

.field public rotateAngle:I

.field public sharpCoff:F

.field public sharpStrength:F

.field public slope:F

.field public sourceCoff:F

.field public width:I

.field public final yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(IIZZ[I[Ljava/nio/ByteBuffer;FFFFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    .line 3
    iput p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    .line 4
    iput-object p5, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 5
    iput-boolean p3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->localPreview:Z

    .line 6
    iput-boolean p4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->backCamera:Z

    .line 7
    iput p8, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    .line 8
    iput p7, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    .line 9
    iput p9, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    .line 10
    iput p10, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    .line 11
    iput p11, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    .line 12
    iput p12, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    if-nez p6, :cond_0

    const/4 p1, 0x3

    new-array p6, p1, [Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 13
    aget p3, p5, p1

    mul-int/2addr p3, p2

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    aput-object p3, p6, p1

    const/4 p1, 0x1

    .line 14
    aget p3, p5, p1

    mul-int/2addr p3, p2

    const/4 p4, 0x2

    div-int/2addr p3, p4

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    aput-object p3, p6, p1

    .line 15
    aget p1, p5, p4

    mul-int/2addr p1, p2

    div-int/2addr p1, p4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object p1, p6, p4

    .line 16
    :cond_0
    iput-object p6, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    iget-object v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    .line 4
    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    .line 5
    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    .line 6
    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    .line 7
    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    .line 8
    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    .line 9
    iget-object v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 10
    iget-object v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 11
    iget-object p1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v0, v1, v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched dimensions!  Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", destination: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
