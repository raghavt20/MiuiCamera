.class public Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;
.super Lcom/android/camera/data/data/ComponentMultiple;
.source "ComponentSettingMultipleAdvance.java"


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

    const p0, 0x7f0f0084

    return p0
.end method

.method public initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;->getDisplayTitleString()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-static {}, Lcom/mi/config/b;->Yk()Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 3
    new-instance p4, Lcom/android/camera/data/data/TypeItem;

    const v2, 0x7f0f03b3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "pref_fingerprint_capture_key"

    invoke-direct {p4, v2, p3, v4, v3}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-array v2, v1, [Lcom/android/camera/data/data/TypeItem;

    aput-object p4, v2, v0

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    :cond_0
    const/16 p4, 0xa2

    const v2, 0x7f0f038e

    if-eq p2, p4, :cond_2

    const/16 p4, 0xae

    if-eq p2, p4, :cond_1

    const/16 p4, 0xb7

    if-eq p2, p4, :cond_1

    .line 5
    new-instance p2, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f0f0387

    .line 6
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "pref_camera_volumekey_function_key"

    invoke-direct {p2, v2, p3, p4, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f03001c

    .line 7
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p3, 0x7f03001d

    .line 8
    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/TypeItem;->setValueArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f0f0389

    .line 10
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "pref_live_volumekey_function_key"

    invoke-direct {p2, v2, p3, p4, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f030021

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p3, 0x7f030022

    .line 12
    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/TypeItem;->setValueArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    goto :goto_0

    .line 13
    :cond_2
    new-instance p2, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f0f0386

    .line 14
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "pref_video_volumekey_function_key"

    invoke-direct {p2, v2, p3, p4, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f030032

    .line 15
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p3, 0x7f030033

    .line 16
    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/TypeItem;->setValueArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    :goto_0
    new-array p1, v1, [Lcom/android/camera/data/data/TypeItem;

    aput-object p2, p1, v0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
