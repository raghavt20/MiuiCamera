.class final Lcom/bumptech/glide/a/b$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/bumptech/glide/a/b$b;

.field dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/bumptech/glide/a/b;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/b;Ljava/lang/String;)V
    .locals 6

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/a/b$c;->this$0:Lcom/bumptech/glide/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/a/b$c;->key:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/a/b;->b(Lcom/bumptech/glide/a/b;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/bumptech/glide/a/b$c;->lengths:[J

    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/a/b;->b(Lcom/bumptech/glide/a/b;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/a/b$c;->cleanFiles:[Ljava/io/File;

    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/a/b;->b(Lcom/bumptech/glide/a/b;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/a/b$c;->dirtyFiles:[Ljava/io/File;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/bumptech/glide/a/b;->b(Lcom/bumptech/glide/a/b;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v2, p0, Lcom/bumptech/glide/a/b$c;->cleanFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/a/b;->d(Lcom/bumptech/glide/a/b;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/a/b$c;->dirtyFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/a/b;->d(Lcom/bumptech/glide/a/b;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/b;Ljava/lang/String;Lcom/bumptech/glide/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/a/b$c;-><init>(Lcom/bumptech/glide/a/b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/a/b$c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bumptech/glide/a/b$c;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bumptech/glide/a/b$c;Lcom/bumptech/glide/a/b$b;)Lcom/bumptech/glide/a/b$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/a/b$c;->currentEditor:Lcom/bumptech/glide/a/b$b;

    return-object p1
.end method

.method static synthetic a(Lcom/bumptech/glide/a/b$c;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/bumptech/glide/a/b$c;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/a/b$c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bumptech/glide/a/b$c;->readable:Z

    return p1
.end method

.method static synthetic a(Lcom/bumptech/glide/a/b$c;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/a/b$c;->lengths:[J

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/a/b$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/a/b$c;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/bumptech/glide/a/b$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bumptech/glide/a/b$c;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic d(Lcom/bumptech/glide/a/b$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bumptech/glide/a/b$c;->readable:Z

    return p0
.end method

.method static synthetic e(Lcom/bumptech/glide/a/b$c;)Lcom/bumptech/glide/a/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/a/b$c;->currentEditor:Lcom/bumptech/glide/a/b$b;

    return-object p0
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected journal line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lcom/bumptech/glide/a/b$c;->this$0:Lcom/bumptech/glide/a/b;

    invoke-static {v1}, Lcom/bumptech/glide/a/b;->b(Lcom/bumptech/glide/a/b;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/a/b$c;->lengths:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :catch_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/a/b$c;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    throw v2

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/a/b$c;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    throw v2
.end method


# virtual methods
.method public bj()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/a/b$c;->lengths:[J

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    const/16 v5, 0x20

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x(I)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/a/b$c;->cleanFiles:[Ljava/io/File;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public y(I)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/a/b$c;->dirtyFiles:[Ljava/io/File;

    aget-object p0, p0, p1

    return-object p0
.end method
