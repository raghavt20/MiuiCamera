.class public Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigVideoQuality.java"


# static fields
.field public static final QUALITY_1080P:Ljava/lang/String; = "6"

.field public static final QUALITY_1080P_60FPS:Ljava/lang/String; = "6,60"

.field public static final QUALITY_4K:Ljava/lang/String; = "8"

.field public static final QUALITY_4K_60FPS:Ljava/lang/String; = "8,60"

.field public static final QUALITY_720P:Ljava/lang/String; = "5"

.field public static final QUALITY_8K:Ljava/lang/String; = "3001"

.field public static final QUALITY_8K_24FPS:Ljava/lang/String; = "3001,24"

.field private static final TAG:Ljava/lang/String; = "ComponentConfigVideoQuality"


# instance fields
.field private mDefaultValue:Ljava/lang/String;

.field private mForceValue:Ljava/lang/String;

.field private mForceValueOverlay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    const-string p1, "6"

    .line 4
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public static is8K30FpsCamcorderSupported(ILcom/android/camera2/CameraCapabilities;)Z
    .locals 4

    .line 1
    const-class v0, Landroid/media/MediaRecorder;

    const v1, 0x8004

    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/mi/config/b;->L0()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x1e00

    const/16 v3, 0x10e0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isContain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public static isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getSupportedCustomFpsRange()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera2/MiCustomFpsRange;

    .line 4
    invoke-virtual {p3}, Lcom/android/camera2/MiCustomFpsRange;->getWidth()I

    move-result v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p3}, Lcom/android/camera2/MiCustomFpsRange;->getHeight()I

    move-result p3

    if-ne p3, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method protected checkValueValid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkValueValid: invalid value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disableUpdate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComponentValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunning8KVideoQuality()Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;->getQuality(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 10
    const-class p2, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ","

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_5

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_0
    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-object p1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f100449

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    const-string v1, "List is empty!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa1

    if-eq p1, p0, :cond_2

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb7

    if-eq p1, p0, :cond_0

    const-string p0, "pref_video_quality_key"

    return-object p0

    :cond_0
    const-string p0, "pref_mi_live_quality"

    return-object p0

    :cond_1
    const-string p0, "pref_camera_pro_video_quality"

    return-object p0

    :cond_2
    const-string p0, "pref_camera_fun_video_quality"

    return-object p0
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    rem-int/2addr v1, v2

    .line 6
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueDisplayString(I)I
    .locals 5
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 p1, 0x35

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, p1, :cond_4

    const/16 p1, 0x36

    if-eq p0, p1, :cond_3

    const/16 p1, 0x38

    if-eq p0, p1, :cond_2

    const p1, 0x17e91e

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "3001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_2

    :cond_2
    const-string p0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v3

    goto :goto_2

    :cond_3
    const-string p0, "6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v4

    goto :goto_2

    :cond_4
    const-string p0, "5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move p0, v1

    :goto_2
    if-eqz p0, :cond_9

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_6

    goto :goto_3

    :cond_6
    const p0, 0x7f100443

    return p0

    :cond_7
    const p0, 0x7f10043e

    return p0

    :cond_8
    const p0, 0x7f10043b

    return p0

    :cond_9
    const p0, 0x7f100440

    return p0

    .line 3
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getItems()Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 6
    iget-object v2, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7
    iget p0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return p0

    :cond_c
    :goto_3
    return v1
.end method

.method public getValueSelectedDrawable(I)I
    .locals 5
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 p1, 0x35

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, p1, :cond_4

    const/16 p1, 0x36

    if-eq p0, p1, :cond_3

    const/16 p1, 0x38

    if-eq p0, p1, :cond_2

    const p1, 0x17e91e

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "3001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_2

    :cond_2
    const-string p0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v3

    goto :goto_2

    :cond_3
    const-string p0, "6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v4

    goto :goto_2

    :cond_4
    const-string p0, "5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move p0, v1

    :goto_2
    if-eqz p0, :cond_9

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_6

    goto :goto_3

    :cond_6
    const p0, 0x7f080146

    return p0

    :cond_7
    const p0, 0x7f080140

    return p0

    :cond_8
    const p0, 0x7f08013a

    return p0

    :cond_9
    const p0, 0x7f080143

    return p0

    .line 3
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getItems()Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 6
    iget-object v2, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7
    iget p0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    return p0

    :cond_c
    :goto_3
    return v1
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x2d0

    const/16 v8, 0x500

    const/16 v9, 0x438

    const/16 v10, 0x780

    const/16 v11, 0xb7

    const/16 v12, 0xa1

    if-eq v1, v12, :cond_3

    const/16 v13, 0xa2

    const/16 v14, 0xa9

    if-eq v1, v13, :cond_0

    if-eq v1, v14, :cond_0

    const/16 v13, 0xb4

    if-eq v1, v13, :cond_0

    if-eq v1, v11, :cond_3

    goto/16 :goto_0

    .line 3
    :cond_0
    const-class v13, Landroid/media/MediaRecorder;

    const v15, 0x8004

    invoke-virtual {v3, v13, v15}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v13

    .line 4
    new-instance v15, Lcom/android/camera/CameraSize;

    invoke-direct {v15, v8, v7}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    .line 5
    invoke-static {v2, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    const v16, 0x7f080142

    const v17, 0x7f080142

    const v18, 0x7f080143

    const v19, 0x7f100440

    const-string v20, "5"

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    new-instance v7, Lcom/android/camera/CameraSize;

    invoke-direct {v7, v10, v9}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x6

    .line 8
    invoke-static {v2, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    const v16, 0x7f080139

    const v17, 0x7f080139

    const v18, 0x7f08013a

    const v19, 0x7f10043b

    const-string v20, "6"

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v14, :cond_2

    .line 10
    invoke-static {v10, v9, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f10043c

    const v9, 0x7f08013b

    const-string v10, "6,60"

    invoke-direct {v7, v9, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v7

    .line 13
    invoke-static {}, Lcom/mi/config/b;->L0()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Lcom/android/camera/CameraSize;

    const/16 v9, 0xf00

    const/16 v10, 0x870

    invoke-direct {v8, v9, v10}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 14
    invoke-interface {v13, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 15
    invoke-static {v2, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 16
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    const v16, 0x7f08013f

    const v17, 0x7f08013f

    const v18, 0x7f080140

    const v19, 0x7f10043e

    const-string v20, "8"

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v14, :cond_5

    .line 17
    invoke-static {v9, v10, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10043f

    const v7, 0x7f080141

    const-string v8, "8,60"

    invoke-direct {v3, v7, v7, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    const-class v4, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 20
    new-instance v4, Lcom/android/camera/CameraSize;

    invoke-direct {v4, v8, v7}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v14, 0x7f080142

    const v15, 0x7f080142

    const v16, 0x7f080143

    const v17, 0x7f100440

    const-string v18, "5"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    new-instance v4, Lcom/android/camera/CameraSize;

    invoke-direct {v4, v10, v9}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 23
    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v14, 0x7f080139

    const v15, 0x7f080139

    const v16, 0x7f08013a

    const v17, 0x7f10043b

    const-string v18, "6"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_5
    :goto_0
    iget-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    .line 25
    sget-object v3, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 26
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    iget-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    aput-object v10, v9, v7

    const-string v10, "The video quality of current mode (%s) is forcely set to \'%s\', is it what you expected?"

    .line 27
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x0

    .line 28
    iput-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    .line 29
    iput-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "5"

    const-string v10, "6"

    if-ne v8, v7, :cond_8

    .line 31
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 32
    iput-object v9, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_7
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 34
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    goto :goto_1

    :cond_8
    if-eq v1, v12, :cond_e

    if-eq v1, v11, :cond_e

    .line 35
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 36
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    .line 37
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 38
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    .line 39
    :cond_a
    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 40
    iput-object v9, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    .line 41
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 42
    iput-object v9, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    .line 43
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "8"

    .line 44
    iput-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    .line 45
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 46
    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100442

    const v8, 0x7f080144

    const-string v13, "3001,24"

    invoke-direct {v3, v8, v8, v4, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f080145

    const v16, 0x7f080145

    const v17, 0x7f080146

    const v18, 0x7f100443

    const-string v19, "3001"

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_1
    if-ne v12, v1, :cond_f

    .line 48
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_2

    :cond_f
    if-ne v11, v1, :cond_10

    .line 49
    iput-object v9, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_2

    :cond_10
    if-ne v2, v7, :cond_11

    .line 50
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_2

    :cond_11
    if-nez v2, :cond_13

    const v2, 0x7f10043a

    .line 51
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v2

    .line 52
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-direct {v0, v2, v5}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 54
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    sub-int/2addr v2, v7

    .line 55
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_2

    .line 56
    :cond_12
    iput-object v2, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 57
    :cond_13
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "3001"

    .line 58
    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 59
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_3

    .line 60
    :cond_14
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :goto_3
    return-void
.end method

.method public setForceValueOverlay(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValueOverlay:Ljava/lang/String;

    return-void
.end method

.method public supportVideoSATForVideoQuality(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->T3()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingsVideoSATEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "8"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const-string p1, "8,60"

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const-string p1, "6,60"

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
