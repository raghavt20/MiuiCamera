.class public Landroidx/versionedparcelable/e;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/versionedparcelable/i;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroidx/versionedparcelable/i;)V

    return-object v0
.end method

.method public static a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/i;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-virtual {p0}, Landroidx/versionedparcelable/ParcelImpl;->ab()Landroidx/versionedparcelable/i;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parcel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroidx/versionedparcelable/i;Ljava/io/OutputStream;)V
    .locals 2

    .line 5
    new-instance v0, Landroidx/versionedparcelable/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroidx/versionedparcelable/h;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {v0, p0}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/i;)V

    .line 7
    invoke-virtual {v0}, Landroidx/versionedparcelable/h;->bb()V

    return-void
.end method

.method public static d(Ljava/io/InputStream;)Landroidx/versionedparcelable/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/i;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/versionedparcelable/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/versionedparcelable/h;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->lb()Landroidx/versionedparcelable/i;

    move-result-object p0

    return-object p0
.end method
