.class public Lc/d/a;
.super Landroid/os/Build;
.source "Build.java"


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

.field private static final a:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"

.field public static final a0:Z

.field private static final b:Ljava/lang/String; = "([A-Z]{3}|[A-Z]{7})\\d+.\\d+"

.field public static final b0:Z

.field public static final c:Z

.field public static final c0:Z

.field public static final d:Z

.field public static final d0:Z

.field public static final e:Z

.field public static final e0:Z

.field public static final f:Z

.field public static final f0:Z

.field public static final g:Z

.field public static final g0:Ljava/lang/String; = "persist.sys.user_mode"

.field public static final h:Z

.field public static final h0:I = 0x0

.field public static final i:Z

.field public static final i0:I = 0x1

.field public static final j:Z

.field public static final j0:Ljava/lang/String;

.field public static final k:Z

.field public static final k0:Z

.field public static final l:Z

.field public static final l0:Z

.field public static final m:Z

.field public static final m0:Z

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
    .locals 10

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "mione"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "mione_plus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    sput-boolean v2, Lc/d/a;->c:Z

    const-string v2, "aries"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "taurus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "taurus_td"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    sput-boolean v2, Lc/d/a;->d:Z

    .line 3
    sput-boolean v2, Lc/d/a;->e:Z

    const-string v2, "lte26007"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->f:Z

    const-string v2, "MI 1S"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "MI 1SC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v2, v4

    :goto_5
    sput-boolean v2, Lc/d/a;->g:Z

    const-string v2, "MI 2A"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "MI 2A TD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v2, v4

    :goto_7
    sput-boolean v2, Lc/d/a;->h:Z

    const-string v2, "cancro"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "MI 3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v4

    goto :goto_8

    :cond_8
    move v5, v3

    :goto_8
    sput-boolean v5, Lc/d/a;->i:Z

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "MI 4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_9

    :cond_9
    move v0, v3

    :goto_9
    sput-boolean v0, Lc/d/a;->j:Z

    const-string v0, "virgo"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->k:Z

    .line 10
    sget-boolean v2, Lc/d/a;->c:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lc/d/a;->i:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lc/d/a;->j:Z

    if-nez v2, :cond_b

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move v0, v3

    goto :goto_b

    :cond_b
    :goto_a
    move v0, v4

    :goto_b
    sput-boolean v0, Lc/d/a;->l:Z

    const-string v0, "mocha"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->m:Z

    const-string v0, "flo"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->n:Z

    const-string v0, "armani"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->o:Z

    const-string v0, "HM2014011"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "HM2014012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move v0, v3

    goto :goto_d

    :cond_d
    :goto_c
    move v0, v4

    :goto_d
    sput-boolean v0, Lc/d/a;->p:Z

    const-string v0, "HM2014501"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->q:Z

    const-string v0, "HM2013022"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "HM2013023"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-boolean v2, Lc/d/a;->o:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lc/d/a;->p:Z

    if-eqz v2, :cond_e

    goto :goto_e

    :cond_e
    move v2, v3

    goto :goto_f

    :cond_f
    :goto_e
    move v2, v4

    :goto_f
    sput-boolean v2, Lc/d/a;->r:Z

    const-string v2, "lcsh92_wet_jb9"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "lcsh92_wet_tdd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_10

    :cond_10
    move v2, v3

    goto :goto_11

    :cond_11
    :goto_10
    move v2, v4

    :goto_11
    sput-boolean v2, Lc/d/a;->s:Z

    const-string v2, "dior"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->t:Z

    const-string v5, "ro.boot.modem"

    if-eqz v2, :cond_12

    .line 19
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "LTETD"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v4

    goto :goto_12

    :cond_12
    move v2, v3

    :goto_12
    sput-boolean v2, Lc/d/a;->u:Z

    .line 20
    sget-boolean v2, Lc/d/a;->t:Z

    if-eqz v2, :cond_13

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LTEW"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v4

    goto :goto_13

    :cond_13
    move v2, v3

    :goto_13
    sput-boolean v2, Lc/d/a;->v:Z

    const-string v2, "HM2014811"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->w:Z

    const-string v2, "HM2014812"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "HM2014821"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_14

    :cond_14
    move v2, v3

    goto :goto_15

    :cond_15
    :goto_14
    move v2, v4

    :goto_15
    sput-boolean v2, Lc/d/a;->x:Z

    const-string v2, "HM2014813"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "HM2014112"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_16

    :cond_16
    move v2, v3

    goto :goto_17

    :cond_17
    :goto_16
    move v2, v4

    :goto_17
    sput-boolean v2, Lc/d/a;->y:Z

    const-string v2, "HM2014818"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->z:Z

    const-string v2, "HM2014817"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->A:Z

    const-string v2, "HM2014819"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->B:Z

    .line 27
    sget-boolean v5, Lc/d/a;->w:Z

    if-nez v5, :cond_19

    sget-boolean v5, Lc/d/a;->x:Z

    if-nez v5, :cond_19

    sget-boolean v5, Lc/d/a;->y:Z

    if-nez v5, :cond_19

    sget-boolean v5, Lc/d/a;->z:Z

    if-nez v5, :cond_19

    sget-boolean v5, Lc/d/a;->A:Z

    if-nez v5, :cond_19

    if-eqz v2, :cond_18

    goto :goto_18

    :cond_18
    move v2, v3

    goto :goto_19

    :cond_19
    :goto_18
    move v2, v4

    :goto_19
    sput-boolean v2, Lc/d/a;->C:Z

    const-string v2, "gucci"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->D:Z

    const-string v5, "persist.sys.modem"

    const-string v6, "cm"

    if-eqz v2, :cond_1a

    .line 29
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v4

    goto :goto_1a

    :cond_1a
    move v2, v3

    :goto_1a
    sput-boolean v2, Lc/d/a;->E:Z

    .line 30
    sget-boolean v2, Lc/d/a;->D:Z

    const-string v7, "cu"

    if-eqz v2, :cond_1b

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v4

    goto :goto_1b

    :cond_1b
    move v2, v3

    :goto_1b
    sput-boolean v2, Lc/d/a;->F:Z

    .line 31
    sget-boolean v2, Lc/d/a;->D:Z

    const-string v8, "ct"

    if-eqz v2, :cond_1c

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    goto :goto_1c

    :cond_1c
    move v2, v3

    :goto_1c
    sput-boolean v2, Lc/d/a;->G:Z

    .line 32
    sget-boolean v2, Lc/d/a;->c:Z

    if-eqz v2, :cond_1d

    invoke-static {}, Lc/d/a;->g()Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v4

    goto :goto_1d

    :cond_1d
    move v2, v3

    :goto_1d
    sput-boolean v2, Lc/d/a;->H:Z

    .line 33
    sget-boolean v2, Lc/d/a;->j:Z

    const-string v5, "persist.radio.modem"

    if-eqz v2, :cond_1e

    .line 34
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "CDMA"

    .line 35
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v4

    goto :goto_1e

    :cond_1e
    move v2, v3

    :goto_1e
    sput-boolean v2, Lc/d/a;->I:Z

    .line 36
    sget-boolean v2, Lc/d/a;->j:Z

    if-eqz v2, :cond_1f

    .line 37
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "LTE-CMCC"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v4

    goto :goto_1f

    :cond_1f
    move v2, v3

    :goto_1f
    sput-boolean v2, Lc/d/a;->J:Z

    .line 38
    sget-boolean v2, Lc/d/a;->j:Z

    if-eqz v2, :cond_20

    .line 39
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "LTE-CU"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v4

    goto :goto_20

    :cond_20
    move v2, v3

    :goto_20
    sput-boolean v2, Lc/d/a;->K:Z

    .line 40
    sget-boolean v2, Lc/d/a;->j:Z

    if-eqz v2, :cond_21

    .line 41
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "LTE-CT"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v4

    goto :goto_21

    :cond_21
    move v2, v3

    :goto_21
    sput-boolean v2, Lc/d/a;->L:Z

    .line 42
    sget-boolean v2, Lc/d/a;->j:Z

    if-eqz v2, :cond_22

    .line 43
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "LTE-India"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v4

    goto :goto_22

    :cond_22
    move v2, v3

    :goto_22
    sput-boolean v2, Lc/d/a;->M:Z

    .line 44
    sget-boolean v2, Lc/d/a;->j:Z

    if-eqz v2, :cond_23

    .line 45
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LTE-SEAsa"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v4

    goto :goto_23

    :cond_23
    move v2, v3

    :goto_23
    sput-boolean v2, Lc/d/a;->N:Z

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->O:Z

    const-string v0, "ro.carrier.name"

    .line 47
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lc/d/a;->P:Z

    .line 49
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ro.miui.cust_variant"

    if-eqz v1, :cond_25

    .line 51
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "cn_chinamobile"

    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 53
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "cn_cta"

    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    move v1, v4

    goto :goto_24

    :cond_25
    move v1, v3

    :goto_24
    sput-boolean v1, Lc/d/a;->Q:Z

    .line 55
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 57
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn_cmcooperation"

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v4

    goto :goto_25

    :cond_26
    move v1, v3

    :goto_25
    sput-boolean v1, Lc/d/a;->R:Z

    .line 59
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->S:Z

    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v1, "\\d+.\\d+.\\d+(-internal)?"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v4

    goto :goto_26

    :cond_27
    move v0, v3

    :goto_26
    sput-boolean v0, Lc/d/a;->T:Z

    .line 64
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-boolean v0, Lc/d/a;->T:Z

    if-nez v0, :cond_28

    move v0, v4

    goto :goto_27

    :cond_28
    move v0, v3

    :goto_27
    sput-boolean v0, Lc/d/a;->U:Z

    .line 65
    sget-boolean v1, Lc/d/a;->T:Z

    if-nez v1, :cond_2a

    if-eqz v0, :cond_29

    goto :goto_28

    :cond_29
    move v0, v3

    goto :goto_29

    :cond_2a
    :goto_28
    move v0, v4

    :goto_29
    sput-boolean v0, Lc/d/a;->V:Z

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_alpha"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->W:Z

    const-string v2, "ro.miui.cts"

    .line 67
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v9, "persist.sys.miui_optimization"

    invoke-static {v9, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    sput-boolean v2, Lc/d/a;->X:Z

    const-string v2, "ro.miui.cta"

    .line 69
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->Y:Z

    const-string v2, "ro.cust.test"

    .line 71
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lc/d/a;->Z:Z

    .line 73
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lc/d/a;->a0:Z

    .line 75
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->b0:Z

    const-string v2, "persist.sys.func_limit_switch"

    .line 77
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lc/d/a;->c0:Z

    .line 79
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->T()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2a

    :cond_2b
    move v2, v3

    goto :goto_2b

    :cond_2c
    :goto_2a
    move v2, v4

    :goto_2b
    sput-boolean v2, Lc/d/a;->d0:Z

    .line 80
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->e0:Z

    .line 81
    invoke-static {}, Lc/d/a;->h()Z

    move-result v0

    sput-boolean v0, Lc/d/a;->f0:Z

    .line 82
    invoke-static {}, Lc/d/a;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/d/a;->j0:Ljava/lang/String;

    const-string v0, "ro.debuggable"

    .line 83
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2d

    goto :goto_2c

    :cond_2d
    move v4, v3

    :goto_2c
    sput-boolean v4, Lc/d/a;->k0:Z

    const-string v0, "ro.miui.has_cust_partition"

    .line 84
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->l0:Z

    const-string v0, "ro.miui.cust_device"

    .line 85
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_pro"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc/d/a;->m0:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    .line 2
    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lc/d/a;->d0:Z

    const-string v1, "ro.miui.cust_variant"

    if-nez v0, :cond_0

    const-string v0, "cn"

    .line 2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "hk"

    .line 3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()I
    .locals 2

    const-string v0, "persist.sys.user_mode"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static e()Ljava/lang/String;
    .locals 5

    const-string v0, "ro.miui.userdata_version"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Unavailable"

    return-object v0

    .line 3
    :cond_0
    sget-boolean v2, Lc/d/a;->d0:Z

    if-eqz v2, :cond_1

    const-string v2, "global"

    goto :goto_0

    :cond_1
    const-string v2, "cn"

    :goto_0
    const-string v3, "ro.carrier.name"

    .line 4
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const-string v0, "%s(%s%s)"

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "support_torch"

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lc/g/a;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static g()Z
    .locals 2

    const-string v0, "ro.soc.name"

    .line 1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8660"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unkown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static h()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.user_mode"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
