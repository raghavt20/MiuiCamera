.class public La/c/a$a;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "immersive.preconfirms=*"

.field public static final b:Ljava/lang/String; = "immersive.navigation=*:immersive.preconfirms=*"

.field public static final c:Ljava/lang/String; = "force_immersive_nav_bar"

.field public static final d:Ljava/lang/String; = "show_gesture_back_animation"

.field public static final e:Ljava/lang/String; = "force_fsg_nav_bar"

.field public static final f:Ljava/lang/String; = "hide_nav_bar"

.field public static final g:Ljava/lang/String; = "can_nav_bar_hide"

.field public static final h:Ljava/lang/String; = "show_assistant_button"

.field public static final i:Ljava/lang/String; = "open_privacy_contact_in_second_space"

.field public static final j:Ljava/lang/String; = "open_second_space_status_icon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Z)Z
    .locals 1

    const-string v0, "open_second_space_status_icon"

    .line 1
    invoke-static {p0, v0, p1}, La/c/a$a;->f(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/ContentResolver;Z)Z
    .locals 1

    const-string v0, "open_privacy_contact_in_second_space"

    .line 1
    invoke-static {p0, v0, p1}, La/c/a$a;->f(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static d(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "open_second_space_status_icon"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static e(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "open_privacy_contact_in_second_space"

    .line 1
    invoke-static {p0, v0}, La/c/a$a;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
