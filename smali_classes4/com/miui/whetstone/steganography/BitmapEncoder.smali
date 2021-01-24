.class public Lcom/miui/whetstone/steganography/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"


# static fields
.field public static final HEADER_SIZE:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToLong([B)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static createHeader(J)[B
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 1
    invoke-static {p0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->longToBytes(J)[B

    move-result-object p0

    array-length p1, p0

    const/4 v2, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-byte v3, p0, v1

    add-int/lit8 v4, v2, 0x1

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    add-int/lit8 p0, v2, 0x1

    const/16 p1, 0x5d

    .line 3
    aput-byte p1, v0, v2

    .line 4
    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static decode(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 1
    invoke-static {p0, v0, v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object v0

    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 2
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/whetstone/steganography/BitmapEncoder;->bytesToLong([B)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3
    invoke-static {p0, v1, v0}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object p0

    return-object p0
.end method

.method private static decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    new-array v2, v1, [B

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x3

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v8, v4, :cond_8

    move v11, v7

    :goto_1
    move-object/from16 v12, p0

    if-ge v11, v3, :cond_6

    .line 4
    invoke-virtual {v12, v11, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    .line 5
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    const/4 v15, 0x2

    rem-int/2addr v14, v15

    aput v14, v6, v7

    .line 6
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v14

    rem-int/2addr v14, v15

    const/4 v7, 0x1

    aput v14, v6, v7

    .line 7
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    rem-int/2addr v13, v15

    aput v13, v6, v15

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_4

    if-lt v9, v0, :cond_1

    sub-int v14, v9, v0

    .line 8
    aget v15, v6, v13

    if-ne v15, v7, :cond_0

    aget-byte v15, v2, v14

    shl-int v16, v7, v10

    or-int v15, v15, v16

    int-to-byte v15, v15

    goto :goto_3

    .line 9
    :cond_0
    aget-byte v15, v2, v14

    shl-int v5, v7, v10

    not-int v5, v5

    and-int/2addr v5, v15

    int-to-byte v15, v5

    :goto_3
    aput-byte v15, v2, v14

    :cond_1
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0x8

    if-ne v10, v5, :cond_2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    :cond_2
    sub-int v5, v9, v0

    if-lt v5, v1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x3

    goto :goto_2

    :cond_4
    :goto_4
    sub-int v5, v9, v0

    if-lt v5, v1, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    :goto_5
    sub-int v5, v9, v0

    if-lt v5, v1, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    goto :goto_0

    :cond_8
    :goto_6
    return-object v2
.end method

.method public static encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->createHeader(J)[B

    move-result-object v0

    .line 2
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_0

    .line 3
    array-length v1, p1

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 4
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 4
    fill-array-data v6, :array_0

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    .line 5
    :goto_0
    array-length v12, v1

    array-length v13, v2

    add-int/2addr v12, v13

    if-ge v8, v12, :cond_a

    move v12, v7

    :goto_1
    const/16 v13, 0x8

    if-ge v12, v13, :cond_9

    .line 6
    array-length v13, v1

    if-ge v8, v13, :cond_0

    .line 7
    aget-byte v13, v1, v8

    shr-int/2addr v13, v12

    and-int/2addr v13, v4

    aput v13, v6, v11

    goto :goto_2

    .line 8
    :cond_0
    array-length v13, v1

    sub-int v13, v8, v13

    aget-byte v13, v2, v13

    shr-int/2addr v13, v12

    and-int/2addr v13, v4

    aput v13, v6, v11

    :goto_2
    const/4 v13, 0x2

    if-ne v11, v13, :cond_8

    .line 9
    invoke-virtual {v0, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 10
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 11
    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 12
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    .line 13
    rem-int/lit8 v13, v14, 0x2

    aget v16, v6, v7

    rsub-int/lit8 v7, v16, 0x1

    if-ne v13, v7, :cond_1

    add-int/lit8 v14, v14, 0x1

    .line 14
    :cond_1
    rem-int/lit8 v7, v15, 0x2

    aget v13, v6, v4

    rsub-int/lit8 v13, v13, 0x1

    if-ne v7, v13, :cond_2

    add-int/lit8 v15, v15, 0x1

    .line 15
    :cond_2
    rem-int/lit8 v7, v11, 0x2

    const/4 v13, 0x2

    aget v13, v6, v13

    rsub-int/lit8 v13, v13, 0x1

    if-ne v7, v13, :cond_3

    add-int/lit8 v11, v11, 0x1

    :cond_3
    const/16 v7, 0xfe

    const/16 v13, 0x100

    if-ne v14, v13, :cond_4

    move v14, v7

    :cond_4
    if-ne v15, v13, :cond_5

    move v15, v7

    :cond_5
    if-ne v11, v13, :cond_6

    move v11, v7

    :cond_6
    const/16 v7, 0xff

    .line 16
    invoke-static {v7, v14, v15, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v9, v10, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    :cond_8
    add-int/lit8 v11, v11, 0x1

    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_a
    return-object v3

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static longToBytes(J)[B
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static printBinaryString([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v4, p0, v2

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
