.class final Lcom/bumptech/glide/load/engine/C;
.super Ljava/lang/Object;
.source "ResourceCacheKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# static fields
.field private static final Tn:Lcom/bumptech/glide/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/f<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private final Rn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final Sn:Lcom/bumptech/glide/load/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/j<",
            "*>;"
        }
    .end annotation
.end field

.field private final height:I

.field private final lm:Lcom/bumptech/glide/load/c;

.field private final options:Lcom/bumptech/glide/load/g;

.field private final qm:Lcom/bumptech/glide/load/c;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/util/f;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/util/f;-><init>(J)V

    sput-object v0, Lcom/bumptech/glide/load/engine/C;->Tn:Lcom/bumptech/glide/util/f;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/j;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/b;",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Lcom/bumptech/glide/load/j<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/C;->Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/C;->lm:Lcom/bumptech/glide/load/c;

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/C;->qm:Lcom/bumptech/glide/load/c;

    .line 5
    iput p4, p0, Lcom/bumptech/glide/load/engine/C;->width:I

    .line 6
    iput p5, p0, Lcom/bumptech/glide/load/engine/C;->height:I

    .line 7
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/C;->Sn:Lcom/bumptech/glide/load/j;

    .line 8
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    .line 9
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/C;->options:Lcom/bumptech/glide/load/g;

    return-void
.end method

.method private rn()[B
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/C;->Tn:Lcom/bumptech/glide/util/f;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/c;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3
    sget-object v1, Lcom/bumptech/glide/load/engine/C;->Tn:Lcom/bumptech/glide/util/f;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    invoke-virtual {v1, p0, v0}, Lcom/bumptech/glide/util/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/C;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bumptech/glide/load/engine/C;

    .line 3
    iget v0, p0, Lcom/bumptech/glide/load/engine/C;->height:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/C;->height:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/C;->width:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/C;->width:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->Sn:Lcom/bumptech/glide/load/j;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/C;->Sn:Lcom/bumptech/glide/load/j;

    .line 4
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->lm:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/C;->lm:Lcom/bumptech/glide/load/c;

    .line 6
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->qm:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/C;->qm:Lcom/bumptech/glide/load/c;

    .line 7
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/C;->options:Lcom/bumptech/glide/load/g;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/C;->options:Lcom/bumptech/glide/load/g;

    .line 8
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->lm:Lcom/bumptech/glide/load/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->qm:Lcom/bumptech/glide/load/c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/bumptech/glide/load/engine/C;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/bumptech/glide/load/engine/C;->height:I

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->Sn:Lcom/bumptech/glide/load/j;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/C;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/g;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->lm:Lcom/bumptech/glide/load/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->qm:Lcom/bumptech/glide/load/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/C;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/C;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->Rn:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->Sn:Lcom/bumptech/glide/load/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/C;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/C;->width:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/C;->height:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->qm:Lcom/bumptech/glide/load/c;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->lm:Lcom/bumptech/glide/load/c;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->Sn:Lcom/bumptech/glide/load/j;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/C;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/g;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/C;->rn()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/C;->Ma:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    invoke-interface {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->put(Ljava/lang/Object;)V

    return-void
.end method
