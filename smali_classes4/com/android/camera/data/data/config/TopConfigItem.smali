.class public Lcom/android/camera/data/data/config/TopConfigItem;
.super Ljava/lang/Object;
.source "TopConfigItem.java"


# instance fields
.field public bindViewPosition:I

.field public configItem:I

.field public enable:Z

.field public gravity:I

.field public index:I

.field public margin:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb0

    .line 2
    iput v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->enable:Z

    .line 5
    iput p1, p0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb0

    .line 7
    iput v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->enable:Z

    .line 10
    iput p1, p0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    .line 11
    iput p2, p0, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb0

    .line 13
    iput v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/TopConfigItem;->enable:Z

    .line 16
    iput p1, p0, Lcom/android/camera/data/data/config/TopConfigItem;->bindViewPosition:I

    .line 17
    iput p2, p0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    .line 18
    iput p3, p0, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    return-void
.end method
