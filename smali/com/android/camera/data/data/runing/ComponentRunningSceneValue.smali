.class public Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningSceneValue.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801da

    const v2, 0x7f0f0342

    const-string v3, "0"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801e2

    const v2, 0x7f0f034b

    const-string v3, "3"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801df

    const v2, 0x7f0f0347

    const-string v3, "4"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801e4

    const v2, 0x7f0f034d

    const-string v3, "13"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801e0

    const v2, 0x7f0f0348

    const-string v3, "5"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801e1

    const v2, 0x7f0f0349

    const-string v3, "6"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801dc

    const v2, 0x7f0f0344

    const-string v3, "8"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801e3

    const v2, 0x7f0f034c

    const-string v3, "9"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801e5

    const v2, 0x7f0f034e

    const-string v3, "10"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801dd

    const v2, 0x7f0f0345

    const-string v3, "12"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f034f

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
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
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_scenemode_key"

    return-object p0
.end method
