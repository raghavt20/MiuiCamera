.class Lcom/adobe/xmp/impl/ParseState;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# instance fields
.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    .line 3
    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ch()C
    .locals 2

    .line 3
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    iget p0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ch(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public gatherInt(Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x30

    if-gt v5, v0, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v3, v0

    .line 2
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    .line 3
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    move v4, v1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_3

    if-le v3, p2, :cond_1

    return p2

    :cond_1
    if-gez v3, :cond_2

    return v2

    :cond_2
    return v3

    .line 4
    :cond_3
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/4 p2, 0x5

    invoke-direct {p0, p1, p2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public length()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public pos()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return p0
.end method

.method public skip()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return-void
.end method
