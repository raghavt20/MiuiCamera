.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/k;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final so:I = 0x8

.field private static final uo:[Landroid/graphics/Bitmap$Config;

.field private static final vo:[Landroid/graphics/Bitmap$Config;

.field private static final wo:[Landroid/graphics/Bitmap$Config;

.field private static final xo:[Landroid/graphics/Bitmap$Config;

.field private static final yo:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final _n:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private final bo:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/g<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final fo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    .line 1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 3
    array-length v3, v0

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    .line 4
    array-length v3, v0

    sub-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v4, v0, v3

    .line 5
    :cond_0
    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->uo:[Landroid/graphics/Bitmap$Config;

    .line 6
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->uo:[Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->vo:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    .line 7
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->wo:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    .line 8
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->xo:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    .line 9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->yo:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->_n:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->bo:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->fo:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->d(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to decrement empty size, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .locals 3

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->vo:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->ro:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 7
    :cond_1
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->yo:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->xo:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->wo:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 10
    :cond_4
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->uo:[Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private d(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->_n:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v0

    .line 8
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->c(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 9
    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->d(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v5

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v7, p1, 0x8

    if-gt v6, v7, :cond_2

    .line 12
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    if-nez v4, :cond_0

    if-eqz p2, :cond_3

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v4, p2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->_n:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/l;)V

    .line 15
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->_n:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private d(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->fo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 18
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->fo:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/l;->j(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->_n:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->bo:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/l;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->d(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p0

    .line 5
    iget p1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 6
    iget v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/l;->g(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    .line 2
    invoke-static {p0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/l;->j(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/l;->g(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 2
    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->d(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->bo:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b(Lcom/bumptech/glide/load/engine/bitmap_recycle/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4
    iget p3, p3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    :goto_0
    invoke-virtual {v0, p1, p2, p0}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_1
    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/l;->j(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->bo:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/bumptech/glide/util/l;->j(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeConfigStrategy{groupedMap="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->bo:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->fo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->fo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ")}"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
