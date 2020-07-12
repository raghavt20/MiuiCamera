.class public final Lcom/bumptech/glide/load/engine/a/q;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/q$b;,
        Lcom/bumptech/glide/load/engine/a/q$a;,
        Lcom/bumptech/glide/load/engine/a/q$c;
    }
.end annotation


# static fields
.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"

.field private static final _o:I = 0x2


# instance fields
.field private final Xo:I

.field private final Yo:I

.field private final Zo:I

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a/q$a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/q;->context:Landroid/content/Context;

    .line 3
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mo:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Ro:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Ro:I

    :goto_0
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q;->Zo:I

    .line 6
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mo:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Po:F

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Qo:F

    .line 7
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;FF)I

    move-result v0

    .line 8
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/q$c;->U()I

    move-result v1

    .line 9
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/a/q$c;->J()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    .line 10
    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Oo:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 11
    iget v3, p1, Lcom/bumptech/glide/load/engine/a/q$a;->No:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 12
    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Zo:I

    sub-int v3, v0, v3

    add-int v4, v1, v2

    if-gt v4, v3, :cond_1

    .line 13
    iput v1, p0, Lcom/bumptech/glide/load/engine/a/q;->Yo:I

    .line 14
    iput v2, p0, Lcom/bumptech/glide/load/engine/a/q;->Xo:I

    goto :goto_1

    :cond_1
    int-to-float v1, v3

    .line 15
    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Oo:F

    iget v3, p1, Lcom/bumptech/glide/load/engine/a/q$a;->No:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    .line 16
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/engine/a/q;->Yo:I

    .line 17
    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Oo:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/q;->Xo:I

    :goto_1
    const/4 v1, 0x3

    const-string v2, "MemorySizeCalculator"

    .line 18
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Yo:I

    .line 20
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/q;->ba(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pool size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Xo:I

    .line 21
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/q;->ba(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", byte array size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/q;->Zo:I

    .line 22
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/q;->ba(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", memory class limited? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", max size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/q;->ba(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", memoryClass: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mo:Landroid/app/ActivityManager;

    .line 24
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isLowMemoryDevice: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/bumptech/glide/load/engine/a/q$a;->Mo:Landroid/app/ActivityManager;

    .line 25
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private static a(Landroid/app/ActivityManager;FF)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    mul-float/2addr v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private ba(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/q;->context:Landroid/content/Context;

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Aj()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bumptech/glide/load/engine/a/q;->Yo:I

    return p0
.end method

.method public yj()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bumptech/glide/load/engine/a/q;->Zo:I

    return p0
.end method

.method public zj()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bumptech/glide/load/engine/a/q;->Xo:I

    return p0
.end method
