.class public abstract Le/a/a/a/a/c$b;
.super Landroid/os/HwBinder;
.source "IMiSys.java"

# interfaces
.implements Le/a/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public final c()La/b/a/a/a;
    .locals 2

    .line 1
    new-instance p0, La/b/a/a/a;

    invoke-direct {p0}, La/b/a/a/a;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, La/b/a/a/a;->a:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, La/b/a/a/a;->b:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, La/b/a/a/a;->c:I

    return-object p0
.end method

.method public final e()Ljava/util/ArrayList;
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
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    return-object p0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        -0xft
        -0x3at
        0x33t
        -0x18t
        -0x16t
        -0x6ft
        -0x25t
        -0x33t
        -0x5at
        -0x1ft
        0x6at
        0x6ct
        0x3ft
        -0x2t
        -0x35t
        -0x5et
        0x23t
        0x6at
        0x50t
        -0x3dt
        0x8t
        0x47t
        -0xat
        0xft
        0x48t
        0x54t
        -0x75t
        0x74t
        0x22t
        -0x15t
        -0x4bt
        -0x5bt
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public l(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    const-string v0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    const/4 v1, 0x0

    if-eq p1, p4, :cond_5

    const/4 p4, 0x2

    if-eq p1, p4, :cond_4

    const/4 p4, 0x3

    if-eq p1, p4, :cond_3

    const/4 p4, 0x4

    if-eq p1, p4, :cond_2

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/a/a/a/c$b;->b()V

    goto/16 :goto_1

    .line 3
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/a/a/c$b;->c()La/b/a/a/a;

    move-result-object p0

    .line 5
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6
    invoke-virtual {p0, p3}, La/b/a/a/a;->e(Landroid/os/HwParcel;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 8
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Le/a/a/a/a/c$b;->i()V

    .line 10
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 12
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Le/a/a/a/a/c$b;->k()V

    goto/16 :goto_1

    .line 14
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Le/a/a/a/a/c$b;->g()Ljava/util/ArrayList;

    move-result-object p0

    .line 16
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 17
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 19
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 20
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 21
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v1, p2, :cond_1

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 22
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 23
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 24
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    .line 26
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 27
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 28
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 29
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Le/a/a/a/a/c$b;->f()Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 32
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 34
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 37
    invoke-virtual {p0, p1, p2}, Le/a/a/a/a/c$b;->l(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 38
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 39
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 40
    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Le/a/a/a/a/c$b;->e()Ljava/util/ArrayList;

    move-result-object p0

    .line 42
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 44
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-interface {p0, p1, p2}, Le/a/a/a/a/c;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 49
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 50
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-interface {p0, p1, p2}, Le/a/a/a/a/c;->r(Ljava/lang/String;Ljava/lang/String;)Le/a/a/a/a/d;

    move-result-object p0

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 57
    invoke-virtual {p0, p3}, Le/a/a/a/a/d;->e(Landroid/os/HwParcel;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 64
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v7

    move-object v2, p0

    .line 65
    invoke-interface/range {v2 .. v7}, Le/a/a/a/a/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)I

    move-result p0

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 67
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 68
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1

    .line 69
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-interface {p0, p1}, Le/a/a/a/a/c;->o(Ljava/lang/String;)Le/a/a/a/a/b;

    move-result-object p0

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 73
    invoke-virtual {p0, p3}, Le/a/a/a/a/b;->e(Landroid/os/HwParcel;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/a/a/a/c$b;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method