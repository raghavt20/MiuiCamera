.class public Lcom/xiaomi/stat/c/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/c/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "3.0"

.field private static final b:Ljava/lang/String; = "UploaderEngine"

.field private static final c:Ljava/lang/String; = "code"

.field private static final d:Ljava/lang/String; = "UTF-8"

.field private static final e:Ljava/lang/String; = "mistat"

.field private static final f:Ljava/lang/String; = "uploader"

.field private static final g:Ljava/lang/String; = "3.0.13"

.field private static final h:Ljava/lang/String; = "Android"

.field private static final i:I = 0xc8

.field private static final j:I = 0x1

.field private static final k:I = -0x1

.field private static final l:I = 0x3

.field private static volatile m:Lcom/xiaomi/stat/c/i;


# instance fields
.field private final n:[B

.field private o:Ljava/nio/channels/FileLock;

.field private p:Ljava/nio/channels/FileChannel;

.field private q:Lcom/xiaomi/stat/c/g;

.field private r:Lcom/xiaomi/stat/c/i$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/xiaomi/stat/c/i;->n:[B

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->e()V

    return-void
.end method

.method private a(I)I
    .locals 1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return p0
.end method

.method public static a()Lcom/xiaomi/stat/c/i;
    .locals 2

    .line 2
    sget-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/xiaomi/stat/c/i;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/xiaomi/stat/c/i;

    invoke-direct {v1}, Lcom/xiaomi/stat/c/i;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 51
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-direct {p0, p2, v0}, Lcom/xiaomi/stat/c/i;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p2, "aii"

    .line 53
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rc"

    .line 54
    invoke-static {}, Lcom/xiaomi/stat/d/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "av"

    .line 55
    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ac"

    .line 56
    invoke-static {}, Lcom/xiaomi/stat/b;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "os"

    const-string v1, "Android"

    .line 57
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rd"

    .line 58
    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "pp"

    .line 59
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v1}, Lcom/xiaomi/stat/c/g;->a()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "st"

    .line 60
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "tz"

    .line 61
    invoke-static {}, Lcom/xiaomi/stat/d/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "cc"

    .line 62
    invoke-static {}, Lcom/xiaomi/stat/am;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/c/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    invoke-static {}, Lcom/xiaomi/stat/b;->p()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 64
    array-length v1, p2

    if-lez v1, :cond_1

    const-string v1, "cs"

    .line 65
    invoke-direct {p0, p2}, Lcom/xiaomi/stat/c/i;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p0, "ob"

    .line 66
    invoke-static {}, Lcom/xiaomi/stat/d/m;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "n"

    .line 67
    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ud"

    .line 68
    invoke-static {}, Lcom/xiaomi/stat/b;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "es"

    .line 69
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    .line 79
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    .line 80
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    aget-object v2, p1, v0

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/xiaomi/stat/c/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 84
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->n:[B

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-nez v1, :cond_1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->e()V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/xiaomi/stat/c/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->g()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 72
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->f()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 73
    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object p0

    const-string p1, "ia"

    .line 74
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mcm"

    .line 75
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bm"

    .line 76
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "aa"

    .line 77
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ai"

    .line 78
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V
    .locals 10

    .line 24
    array-length v0, p1

    const-string v1, "UploaderEngine"

    if-nez v0, :cond_0

    const-string p0, "privacy policy or network state not matched"

    .line 25
    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v0

    .line 27
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 28
    iget-boolean v4, v0, Lcom/xiaomi/stat/a/k;->c:Z

    goto :goto_0

    :cond_1
    move v4, v3

    .line 29
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-eqz v0, :cond_8

    .line 30
    iget-object v6, v0, Lcom/xiaomi/stat/a/k;->b:Ljava/util/ArrayList;

    .line 31
    iget-object v0, v0, Lcom/xiaomi/stat/a/k;->a:Lorg/json/JSONArray;

    .line 32
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/stat/c/i;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, " payload:"

    .line 33
    invoke-static {v1, v7, v0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/xiaomi/stat/c/i;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v7, " encodePayload "

    .line 35
    invoke-static {v1, v7, v0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/stat/b/g;->c()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-static {}, Lcom/xiaomi/stat/d/k;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, "http://test.data.mistat.xiaomi.srv/mistats/v3"

    .line 38
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v7, v0, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    const-string v7, " sendDataToServer response: "

    .line 39
    invoke-static {v1, v7, v0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 41
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    move v0, v5

    :goto_3
    if-eqz v0, :cond_4

    .line 42
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/xiaomi/stat/a/c;->a(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 43
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 44
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deleteData= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " retryCount.get()= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_7

    if-nez v0, :cond_5

    .line 45
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    goto :goto_5

    .line 46
    :cond_5
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 47
    iget-boolean v4, v6, Lcom/xiaomi/stat/a/k;->c:Z

    :cond_6
    move-object v9, v6

    move v6, v0

    move-object v0, v9

    goto/16 :goto_1

    :cond_7
    :goto_5
    move v6, v0

    .line 48
    :cond_8
    iget-object p0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz p0, :cond_9

    .line 49
    invoke-virtual {p0, v6}, Lcom/xiaomi/stat/c/g;->b(Z)V

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 13
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 16
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v3, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    :try_start_3
    const-string v0, "UploaderEngine"

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " zipData failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 19
    :goto_1
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 20
    invoke-static {v3}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    return-object v1

    :catchall_2
    move-exception p0

    :goto_2
    move-object v1, v2

    .line 21
    :goto_3
    invoke-static {v1}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 22
    invoke-static {v3}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    throw p0
.end method

.method private a([B)[B
    .locals 0

    .line 23
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/b/i;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method private b([B)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/i;->c(Z)[Lcom/xiaomi/stat/a/b;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/stat/b/d;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/stat/c/i;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xc8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    move p0, v1

    goto :goto_2

    :cond_1
    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3ef

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaomi/stat/b/i;->a(Z)V

    .line 10
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/d;->b()V

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaomi/stat/b/i;->a(Z)V

    .line 12
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "UploaderEngine"

    const-string v1, "parseUploadingResult exception "

    .line 13
    invoke-static {v0, v1, p1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-static {}, Lcom/xiaomi/stat/am;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sv"

    const-string v1, "3.0.13"

    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pv"

    const-string v1, "3.0"

    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rg"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p"

    .line 28
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/i;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fc"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sid"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private c(Z)[Lcom/xiaomi/stat/a/b;
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->h()Ljava/util/ArrayList;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 14
    new-instance v5, Lcom/xiaomi/stat/c/f;

    invoke-direct {v5, v4, p1}, Lcom/xiaomi/stat/c/f;-><init>(Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {v5}, Lcom/xiaomi/stat/c/f;->a()I

    move-result v5

    .line 16
    invoke-direct {p0, v5}, Lcom/xiaomi/stat/c/i;->a(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 17
    new-instance v6, Lcom/xiaomi/stat/a/b;

    invoke-direct {v6, v4, v5, p1}, Lcom/xiaomi/stat/a/b;-><init>(Ljava/lang/String;IZ)V

    .line 18
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/i;->d(Z)Lcom/xiaomi/stat/a/b;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 20
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 22
    new-array p0, p0, [Lcom/xiaomi/stat/a/b;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/xiaomi/stat/a/b;

    return-object p0
.end method

.method private d(Z)Lcom/xiaomi/stat/a/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/stat/c/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/stat/c/f;-><init>(Z)V

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/stat/c/f;->a()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createMainAppFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploaderEngine"

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a(I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 5
    new-instance v1, Lcom/xiaomi/stat/a/b;

    invoke-direct {v1, v0, p0, p1}, Lcom/xiaomi/stat/a/b;-><init>(Ljava/lang/String;IZ)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mi_analytics_uploader_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Lcom/xiaomi/stat/c/i$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/stat/c/i$a;-><init>(Lcom/xiaomi/stat/c/i;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    .line 4
    new-instance v1, Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/c/g;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    return-void
.end method

.method private f()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->c()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b(Z)V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b(Z)V

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->j()V

    return-void
.end method

.method private h()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->p()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v0, v1, :cond_2

    .line 4
    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private i()Z
    .locals 6

    const-string v0, " acquire lock for uploader failed with "

    const-string v1, "UploaderEngine"

    .line 1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "mistat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 4
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "uploader"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    const/4 v4, 0x0

    .line 7
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-eqz v3, :cond_2

    const-string v3, " acquire lock for uploader"

    .line 8
    invoke-static {v1, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_1

    .line 10
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 11
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return v0

    :cond_2
    :try_start_3
    const-string v3, " acquire lock for uploader failed"

    .line 12
    invoke-static {v1, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_3

    .line 14
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 15
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_3
    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v3

    .line 16
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_4

    .line 18
    :try_start_6
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 19
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_4
    return v2

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_5

    .line 21
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 22
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 23
    :catch_4
    :cond_5
    throw v0

    :catch_5
    move-exception p0

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private j()V
    .locals 3

    const-string v0, "UploaderEngine"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 3
    iput-object v2, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 6
    iput-object v2, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    :cond_1
    const-string p0, " releaseLock lock for uploader"

    .line 7
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " releaseLock lock for uploader failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/c/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/i;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->f()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    const-string v1, "UploaderEngine"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/stat/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->C()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, " postToServer can not upload data because of configuration!"

    .line 5
    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a(Landroid/os/Message;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, " postToServer statistic disable or network disable access! "

    .line 9
    invoke-static {v1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
