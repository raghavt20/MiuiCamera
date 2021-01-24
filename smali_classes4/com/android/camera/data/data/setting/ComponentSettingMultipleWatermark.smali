.class public Lcom/android/camera/data/data/setting/ComponentSettingMultipleWatermark;
.super Lcom/android/camera/data/data/ComponentMultiple;
.source "ComponentSettingMultipleWatermark.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f100463

    return p0
.end method

.method public initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleWatermark;->getDisplayTitleString()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v0, 0x7f1003d1

    const-string v1, "pref_time_watermark_key"

    invoke-direct {p3, v0, p2, v1, p4}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance p4, Lcom/android/camera/data/data/TypeItem;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "pref_dualcamera_watermark_key"

    invoke-direct {p4, v0, p2, v2, v1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x7f1000fb

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "user_define_watermark_key"

    invoke-direct {v1, v0, p2, v2, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/android/camera/data/data/TypeItem;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p4, p1, p2

    const/4 p2, 0x2

    aput-object v1, p1, p2

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
