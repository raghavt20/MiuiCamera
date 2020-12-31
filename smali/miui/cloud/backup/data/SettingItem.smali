.class public abstract Lmiui/cloud/backup/data/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lmiui/cloud/backup/data/SettingItem<",
        "*>;>;"
    }
.end annotation


# static fields
.field protected static final c:Ljava/lang/String; = "SettingsBackup"

.field private static final d:Ljava/lang/String; = "key"

.field private static final e:Ljava/lang/String; = "type"

.field protected static final f:Ljava/lang/String; = "value"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lmiui/cloud/backup/data/SettingItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/cloud/backup/data/SettingItem<",
            "*>;"
        }
    .end annotation

    const-string v0, "string"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lmiui/cloud/backup/data/KeyStringSettingItem;

    invoke-direct {p0}, Lmiui/cloud/backup/data/KeyStringSettingItem;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "binary"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Lmiui/cloud/backup/data/KeyBinarySettingItem;

    invoke-direct {p0}, Lmiui/cloud/backup/data/KeyBinarySettingItem;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "json"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p0, Lmiui/cloud/backup/data/KeyJsonSettingItem;

    invoke-direct {p0}, Lmiui/cloud/backup/data/KeyJsonSettingItem;-><init>()V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " are not handled!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsBackup"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static d(Lorg/json/JSONObject;)Lmiui/cloud/backup/data/SettingItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lmiui/cloud/backup/data/SettingItem<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "type"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lmiui/cloud/backup/data/SettingItem;->b(Ljava/lang/String;)Lmiui/cloud/backup/data/SettingItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "key"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p0}, Lmiui/cloud/backup/data/SettingItem;->i(Lorg/json/JSONObject;)V

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "json cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lmiui/cloud/backup/data/SettingItem;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cloud/backup/data/SettingItem<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    iget-object v0, p0, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_1
    iget-object p0, p0, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    iget-object p1, p1, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected c(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object v0, p0, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lmiui/cloud/backup/data/SettingItem;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/cloud/backup/data/SettingItem;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lmiui/cloud/backup/data/SettingItem;

    invoke-virtual {p0, p1}, Lmiui/cloud/backup/data/SettingItem;->a(Lmiui/cloud/backup/data/SettingItem;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract e()Ljava/lang/Object;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method public g()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lmiui/cloud/backup/data/SettingItem;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmiui/cloud/backup/data/SettingItem;->b:Ljava/lang/Object;

    return-void
.end method

.method protected abstract i(Lorg/json/JSONObject;)V
.end method

.method protected abstract j(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public k()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "key"

    .line 2
    iget-object v2, p0, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 3
    invoke-virtual {p0}, Lmiui/cloud/backup/data/SettingItem;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 4
    invoke-virtual {p0}, Lmiui/cloud/backup/data/SettingItem;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "SettingsBackup"

    const-string v2, "JSONException occorred when toJson()"

    .line 5
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method protected abstract l(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiui/cloud/backup/data/SettingItem;->g()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiui/cloud/backup/data/SettingItem;->l(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object p0, p0, Lmiui/cloud/backup/data/SettingItem;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
