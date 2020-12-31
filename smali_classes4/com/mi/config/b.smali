.class public Lcom/mi/config/b;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final A:Z

.field public static final B:Z

.field public static final C:Z

.field public static final D:Z

.field public static final E:Z

.field public static final F:Z

.field public static final G:Z

.field public static final H:Z

.field public static final I:Z

.field public static final J:Z

.field public static final K:Z

.field public static final L:Z

.field public static final M:Z

.field public static final N:Z

.field public static final O:Z

.field public static final P:Z

.field public static final Q:Z

.field public static final R:Z

.field public static final S:Z

.field public static final T:Z

.field public static final U:Z

.field public static final V:Z

.field public static final W:Z

.field public static final X:Z

.field public static final Y:Z

.field public static final Z:Z

.field public static final a:Ljava/lang/String;

.field public static final a0:Z

.field public static final b:Ljava/lang/String; = "qcom"

.field public static final b0:Z

.field public static final c:Ljava/lang/String; = "mediatek"

.field public static final c0:Z

.field private static final d:I = 0x64

.field private static final d0:I = 0x1

.field public static final e:Ljava/lang/String;

.field private static final e0:I = 0x4

.field public static final f:Z

.field private static final f0:I = 0x8

.field public static final g:Z

.field private static g0:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Z

.field private static final h0:[Ljava/lang/String;

.field public static final i:Z

.field private static final i0:Ljava/lang/String; = "ro.boot.hwversion"

.field public static final j:Z

.field private static final j0:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final k:Z

.field public static final l:Z

.field public static final m:Z

.field public static final n:Z

.field public static final o:Z

.field public static final p:Z

.field public static final q:Z

.field public static final r:Z

.field public static final s:Z

.field public static final t:Z

.field public static final u:Z

.field public static final v:Z

.field public static final w:Z

.field public static final x:Z

.field public static final y:Z

.field public static final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mi/config/b;->e:Ljava/lang/String;

    .line 3
    sget-boolean v0, Lc/d/a;->d:Z

    sput-boolean v0, Lcom/mi/config/b;->f:Z

    .line 4
    sget-boolean v0, Lc/d/a;->h:Z

    sput-boolean v0, Lcom/mi/config/b;->g:Z

    .line 5
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "cancro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/mi/config/b;->h:Z

    .line 6
    sput-boolean v0, Lcom/mi/config/b;->i:Z

    .line 7
    sget-boolean v0, Lc/d/a;->r:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lc/d/a;->o:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lc/d/a;->p:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mi/config/b;->j:Z

    .line 8
    sget-boolean v0, Lc/d/a;->p:Z

    sput-boolean v0, Lcom/mi/config/b;->k:Z

    .line 9
    sget-boolean v0, Lc/d/a;->q:Z

    sput-boolean v0, Lcom/mi/config/b;->l:Z

    .line 10
    sget-boolean v0, Lc/d/a;->o:Z

    sput-boolean v0, Lcom/mi/config/b;->m:Z

    .line 11
    sget-boolean v0, Lc/d/a;->s:Z

    sput-boolean v0, Lcom/mi/config/b;->n:Z

    .line 12
    sget-boolean v0, Lc/d/a;->f:Z

    sput-boolean v0, Lcom/mi/config/b;->o:Z

    .line 13
    sget-boolean v0, Lc/d/a;->j:Z

    sput-boolean v0, Lcom/mi/config/b;->p:Z

    .line 14
    sget-boolean v0, Lc/d/a;->k:Z

    sput-boolean v0, Lcom/mi/config/b;->q:Z

    .line 15
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "leo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->r:Z

    .line 16
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "lithium"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->s:Z

    .line 17
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "chiron"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->t:Z

    .line 18
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "beryllium"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->u:Z

    .line 19
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "violet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->v:Z

    const-string v0, "is_hongmi"

    .line 20
    invoke-static {v0, v2}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->w:Z

    const-string v0, "is_xiaomi"

    .line 21
    invoke-static {v0, v2}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->x:Z

    .line 22
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "polaris"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->y:Z

    .line 23
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "sirius"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->z:Z

    .line 24
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "dipper"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->A:Z

    .line 25
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "andromeda"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->B:Z

    .line 26
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "perseus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->C:Z

    .line 27
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "cepheus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->D:Z

    .line 28
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "grus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->E:Z

    .line 29
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "begonia"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->F:Z

    .line 30
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "phoenix"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "phoenixin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/mi/config/b;->G:Z

    .line 31
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "begoniain"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->H:Z

    .line 32
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "ginkgo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->I:Z

    .line 33
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "pyxis"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->J:Z

    .line 34
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "vela"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->K:Z

    .line 35
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "laurus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->L:Z

    .line 36
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "laurel_sprout"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->M:Z

    .line 37
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "tucana"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->N:Z

    .line 38
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "persist.camera.rearMain.vendorID"

    const-string v3, "03"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/mi/config/b;->O:Z

    .line 39
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "umi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->P:Z

    .line 40
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "cmi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Q:Z

    .line 41
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "monet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->R:Z

    .line 42
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "vangogh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->S:Z

    .line 43
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "lmi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "lmiin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v2

    goto :goto_6

    :cond_6
    :goto_5
    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/mi/config/b;->T:Z

    .line 44
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "lmipro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "lmiinpro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move v0, v2

    goto :goto_8

    :cond_8
    :goto_7
    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/mi/config/b;->U:Z

    .line 45
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "toco"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "tocoin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move v0, v2

    goto :goto_a

    :cond_a
    :goto_9
    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/mi/config/b;->V:Z

    .line 46
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "draco"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->W:Z

    .line 47
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "picasso"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "picassoin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move v0, v2

    goto :goto_c

    :cond_c
    :goto_b
    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/mi/config/b;->X:Z

    .line 48
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "crux"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Y:Z

    .line 49
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "excalibur"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v3, "joyeuse"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move v1, v2

    :cond_e
    :goto_d
    sput-boolean v1, Lcom/mi/config/b;->Z:Z

    .line 50
    sget-boolean v0, Lc/d/a;->U:Z

    sput-boolean v0, Lcom/mi/config/b;->a0:Z

    .line 51
    sget-boolean v0, Lc/d/a;->Z:Z

    sput-boolean v0, Lcom/mi/config/b;->b0:Z

    .line 52
    sget-boolean v0, Lc/d/a;->Q:Z

    sput-boolean v0, Lcom/mi/config/b;->c0:Z

    const-string v0, "KR"

    const-string v1, "JP"

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/config/b;->h0:[Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/mi/config/b;->j0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static A0()Z
    .locals 2

    const-string v0, "is_support_optical_zoom"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->J:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static B0()Z
    .locals 2

    const-string v0, "support_camera_peaking_mf"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static C()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->N:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static C0()Z
    .locals 2

    .line 1
    sget-boolean v0, Lc/d/a;->d0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_quick_snap"

    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static D()Z
    .locals 2

    const-string v0, "is_hal_does_caf_when_flash_on"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static D0()Z
    .locals 2

    const-string v0, "support_dual_sd_card"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E()Z
    .locals 2

    const-string v0, "is_camera_hold_blur_background"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E0()Z
    .locals 2

    const-string v0, "support_camera_shader_effect"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static F0()Z
    .locals 2

    const-string v0, "support_camera_skin_beauty"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static G()Z
    .locals 2

    const-string v0, "is_camera_isp_rotated"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static G0()Z
    .locals 2

    const-string v0, "is_support_stereo"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static H()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->T:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->U:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static H0()Z
    .locals 2

    const-string v0, "support_camera_tilt_shift"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I()Z
    .locals 2

    const-string v0, "is_camera_lower_qrscan_frequency"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I0()Z
    .locals 2

    const-string v0, "support_camera_water_mark"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static J0()Z
    .locals 2

    const-string v0, "support_camera_torch_capture"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static K()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/mi/config/b;->j0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/mi/config/b;->j0:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mi/config/b;->j0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vendor"

    .line 6
    invoke-static {v1}, Lcom/mi/config/FeatureParserWrapper;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/mi/config/b;->j0:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, "mediatek"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/config/b;->j0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static K0()Z
    .locals 2

    const-string v0, "support_camera_video_pause"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static L()Z
    .locals 2

    const-string v0, "is_pad"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static L0()Z
    .locals 2

    const-string v0, "support_camera_4k_quality"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static M()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Premium Edition"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static M0()Z
    .locals 2

    const-string v0, "is_surface_size_limit"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static N()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->N:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->O:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static N0()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->x:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static O()Z
    .locals 2

    const-string v0, "vendor"

    .line 1
    invoke-static {v0}, Lcom/mi/config/FeatureParserWrapper;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static O0()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->o:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lc/d/a;->C:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->n:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->j:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->k:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->l:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->f:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->g:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->i:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->p:Z

    if-nez v0, :cond_0

    const-string v0, "is_video_snapshot_size_limit"

    .line 2
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static P()Z
    .locals 2

    const-string v0, "is_rgb888_egl_prefer"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static P0(Z)Z
    .locals 3

    const-string v0, "ro.miui.customized.region"

    .line 1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr_sfr"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "fr_orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "es_vodafone"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/config/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static Q0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->t3()Z

    move-result v0

    return v0
.end method

.method private static R(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/mi/config/b;->h0:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static R0()Z
    .locals 2

    const-string v0, "support_picture_watermark"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static S()Z
    .locals 2

    const-string v0, "is_camera_preview_with_subthread_looper"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static S0()Z
    .locals 2

    const-string v0, "support_realtime_manual_exposure_time"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static T()Z
    .locals 2

    const-string v0, "support_3d_face_beauty"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static U()Z
    .locals 2

    const-string v0, "support_camera_role"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static V()Z
    .locals 2

    const-string v0, "support_camera_dynamic_light_spot"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static W()Z
    .locals 2

    const-string v0, "support_front_beauty_mfnr"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static X()Z
    .locals 2

    const-string v0, "support_front_flash"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Y()Z
    .locals 2

    const-string v0, "support_camera_gradienter"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->b0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_boost_brightness"

    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static a0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->u1()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    const-string v0, "enable_algorithm_in_file_suffix"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b0()Z
    .locals 2

    const-string v0, "support_mi_face_beauty"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 2

    const-string v0, "burst_shoot_count"

    const/16 v1, 0x64

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/mi/config/b;->T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d0()Z
    .locals 2

    const-string v0, "support_psensor_pocket_mode"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static e()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.boot.camera.config"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "_pro"

    return-object v0
.end method

.method public static e0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Y0()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mi/config/b;->g0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/config/b;->g0:Ljava/util/ArrayList;

    const-string v0, "fp_nav_event_name_list"

    .line 3
    invoke-static {v0}, Lcom/mi/config/FeatureParserWrapper;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/mi/config/b;->g0:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    :cond_0
    sget-object v0, Lcom/mi/config/b;->g0:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static f0()Z
    .locals 2

    const-string v0, "support_screen_light"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/mi/config/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_l"

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/mi/config/b;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_in"

    return-object v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "c_0x18"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BROWN EDITION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Explorer"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ROY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_b"

    return-object v0

    .line 7
    :cond_4
    invoke-static {}, Lcom/mi/config/b;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_s"

    return-object v0

    .line 8
    :cond_5
    invoke-static {}, Lcom/mi/config/b;->A()Z

    move-result v0

    const-string v2, "_global"

    if-nez v0, :cond_a

    invoke-static {}, Lcom/mi/config/b;->z()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/mi/config/b;->B()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/mi/config/b;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {}, Lcom/mi/config/b;->M()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "_premium"

    return-object v0

    .line 10
    :cond_7
    invoke-static {}, Lcom/mi/config/b;->C()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11
    invoke-static {}, Lcom/mi/config/b;->N()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "_global_pro"

    return-object v0

    :cond_8
    return-object v2

    :cond_9
    return-object v1

    :cond_a
    :goto_0
    return-object v2

    :cond_b
    :goto_1
    const-string v0, "_a"

    return-object v0
.end method

.method public static g0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->W1()Z

    move-result v0

    return v0
.end method

.method public static h()I
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/AutoLockManager;->HIBERNATION_TIMEOUT:I

    const-string v1, "camera_hibernation_timeout_in_minutes"

    invoke-static {v1, v0}, Lcom/mi/config/FeatureParserWrapper;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h0()Z
    .locals 2

    const-string v0, "support_super_resolution"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    const-string v0, "sensor_has_latency"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i0()Z
    .locals 2

    const-string v0, "camera_supported_asd"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->d(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static j()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v0, v0

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const-string v0, "is_18x9_ratio_screen"

    .line 2
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static j0()Z
    .locals 2

    .line 1
    sget-boolean v0, Lc/d/a;->d0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_age_detection"

    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static k()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/mi/config/b;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->m1()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/mi/config/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/config/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static k0()Z
    .locals 2

    const-string v0, "support_camera_aohdr"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->S2()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static l0()Z
    .locals 3

    const-string v0, "camera_supported_asd"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->d(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static m()Z
    .locals 1

    .line 1
    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mi/config/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/config/b;->R(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static m0()Z
    .locals 2

    const-string v0, "camera_supported_asd"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->d(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static n()Z
    .locals 2

    const-string v0, "is_camera_app_water_mark"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static o()Z
    .locals 2

    const-string v0, "ro.boot.hwversion"

    .line 1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/mi/config/b;->Y:Z

    if-eqz v1, :cond_1

    const-string v1, "7.1.7"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7.2.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o0()Z
    .locals 2

    const-string v0, "support_chroma_flash"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "onc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwversion"

    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x32

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static p0()Z
    .locals 2

    const-string v0, "support_edge_handgrip"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India_48_5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q0()Z
    .locals 2

    const-string v0, "support_camera_face_info_water_mark"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static r()Z
    .locals 2

    const-string v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static s()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->s:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->t:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static s0()Z
    .locals 2

    const-string v0, "support_camera_record_location"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static t()Z
    .locals 2

    const-string v0, "front_fingerprint_sensor"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mi/config/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static t0()Z
    .locals 2

    const-string v0, "support_camera_burst_shoot"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/mi/config/b;->x()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->J:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->E:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->S2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static u0()Z
    .locals 2

    .line 1
    sget-boolean v0, Lc/d/a;->d0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_magic_mirror"

    .line 2
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static v()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->o:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lc/d/a;->C:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->n:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->j:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->k:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->l:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->f:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->g:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->i:Z

    if-nez v0, :cond_0

    const-string v0, "is_front_video_quality_1080p"

    .line 2
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static v0()Z
    .locals 2

    const-string v0, "support_camera_manual_function"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static w0()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/mi/config/b;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "support_camera_movie_solid"

    .line 2
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->C:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static x0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/mi/config/b;->m()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static y()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->D:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static y0()Z
    .locals 2

    const-string v0, "support_camera_new_style_time_water_mark"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/d/a;->d0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static z0()Z
    .locals 2

    const-string v0, "support_object_track"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/mi/config/FeatureParserWrapper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
