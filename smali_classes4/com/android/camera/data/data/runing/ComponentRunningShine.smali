.class public Lcom/android/camera/data/data/runing/ComponentRunningShine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningShine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;,
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    }
.end annotation


# static fields
.field public static final ENTRY_NONE:I = -0x1

.field public static final ENTRY_POPUP_BEAUTY:I = 0x5

.field public static final ENTRY_POPUP_SHINE:I = 0x4

.field public static final ENTRY_TOP_BEAUTY:I = 0x2

.field public static final ENTRY_TOP_FILTER:I = 0x3

.field public static final ENTRY_TOP_SHINE:I = 0x1

.field public static final FILTER_NATIVE_NONE_ID:I = 0x0

.field public static final SHINE_BEAUTY_LEVEL_SMOOTH:Ljava/lang/String; = "2"

.field public static final SHINE_BEAUTY_LEVEL_SWITCH:Ljava/lang/String; = "1"

.field public static final SHINE_EYE_LIGHT:Ljava/lang/String; = "9"

.field public static final SHINE_FIGURE:Ljava/lang/String; = "6"

.field public static final SHINE_FILTER:Ljava/lang/String; = "7"

.field public static final SHINE_LIGHTING:Ljava/lang/String; = "8"

.field public static final SHINE_LIVE_BEAUTY:Ljava/lang/String; = "11"

.field public static final SHINE_LIVE_FILTER:Ljava/lang/String; = "10"

.field public static final SHINE_LIVE_SPEED:Ljava/lang/String; = "13"

.field public static final SHINE_LIVE_STICKER:Ljava/lang/String; = "12"

.field public static final SHINE_MAKEUP:Ljava/lang/String; = "5"

.field public static final SHINE_MI_LIVE_BEAUTY:Ljava/lang/String; = "15"

.field public static final SHINE_MODEL_ADVANCE:Ljava/lang/String; = "3"

.field public static final SHINE_MODEL_REMODELING:Ljava/lang/String; = "4"

.field public static final SHINE_VIDEO_BOKEH_LEVEL:Ljava/lang/String; = "14"

.field private static final TAG:Ljava/lang/String; = "ComponentRunningShine"


# instance fields
.field private mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field private mBeautyVersion:I

.field private mCurrentStatus:Z

.field private mCurrentTipType:Ljava/lang/String;

.field private mCurrentType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mDefaultType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mIsClosed:Z

.field private mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShineEntry:I
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;
    .end annotation
.end field

.field private mSupportBeautyBody:Z

.field private mSupportBeautyLevel:Z

.field private mSupportBeautyMakeUp:Z

.field private mSupportBeautyMiLive:Z

.field private mSupportBeautyModel:Z

.field private mSupportColorRententionBack:Z

.field private mSupportColorRententionFront:Z

.field private mSupportSmoothLevel:Z

.field private mSupportVideoBokehLevel:Z

.field private mSupportVideoFilter:Z

.field private mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    .line 3
    new-instance p1, Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-void
.end method

.method private generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    .line 1
    invoke-static {}, Lcom/mi/config/b;->c0()Z

    move-result p0

    const-string p1, "1"

    const v0, 0x7f080126

    const v1, 0x7f080125

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f100085

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f100088

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f100085

    goto :goto_0

    :cond_0
    const p0, 0x7f10007b

    :goto_0
    const v1, 0x7f080125

    const v2, 0x7f080126

    const-string v3, "6"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080219

    const v1, 0x7f08021a

    const v2, 0x7f1002a4

    const-string v3, "7"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMakeupItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080125

    const v1, 0x7f080126

    const v2, 0x7f100086

    const-string v3, "5"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080125

    const v1, 0x7f080126

    const v2, 0x7f100085

    const-string v3, "15"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    invoke-static {}, Lcom/mi/config/b;->c0()Z

    move-result v0

    const v1, 0x7f080126

    const v2, 0x7f080125

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f100085

    goto :goto_0

    :cond_0
    const p0, 0x7f100087

    :goto_0
    const-string v3, "4"

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f100089

    const-string v3, "3"

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080125

    const v0, 0x7f080126

    const v1, 0x7f100085

    const-string v2, "2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080125

    const v1, 0x7f080126

    const v2, 0x7f100141

    const-string v3, "14"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public determineStatus(I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothBarVideoBeautyVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoBeautyOpen(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v5, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v7, -0x1

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x61f

    if-eq v8, v9, :cond_8

    const/16 v9, 0x620

    if-eq v8, v9, :cond_7

    const/16 v9, 0x623

    if-eq v8, v9, :cond_6

    const/16 v9, 0x624

    if-eq v8, v9, :cond_5

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v8, "7"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v7, 0x8

    goto/16 :goto_1

    :pswitch_1
    const-string v8, "6"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x4

    goto :goto_1

    :pswitch_2
    const-string v8, "5"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x5

    goto :goto_1

    :pswitch_3
    const-string v8, "4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x2

    goto :goto_1

    :pswitch_4
    const-string v8, "3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v7, v6

    goto :goto_1

    :pswitch_5
    const-string v8, "2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x6

    goto :goto_1

    :pswitch_6
    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v7, v1

    goto :goto_1

    :cond_5
    const-string v8, "15"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x3

    goto :goto_1

    :cond_6
    const-string v8, "14"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v7, 0xa

    goto :goto_1

    :cond_7
    const-string v8, "11"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x7

    goto :goto_1

    :cond_8
    const-string v8, "10"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v7, 0x9

    :cond_9
    :goto_1
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_7
    if-nez v4, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_3

    move v4, v6

    goto/16 :goto_0

    :pswitch_8
    if-nez v3, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->getLiveFilter()I

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    move v3, v6

    goto/16 :goto_0

    :pswitch_9
    if-nez v3, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v5

    .line 13
    sget v7, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v5, v7, :cond_3

    if-lez v5, :cond_3

    goto :goto_2

    :pswitch_a
    if-nez v2, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveBeautyOpen()Z

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_c
    if-nez v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEyeLightOpen()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    move v6, v1

    :cond_b
    :goto_3
    move v2, v6

    goto/16 :goto_0

    :pswitch_d
    if-nez v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v2

    goto/16 :goto_0

    :cond_c
    if-nez v2, :cond_d

    if-nez v3, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    move v1, v6

    .line 19
    :cond_e
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 20
    :goto_4
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public getBeautyVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    return p0
.end method

.method public getBottomEntryRes(I)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 2
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const p0, 0x7f080253

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f080126

    goto :goto_0

    :cond_1
    const p0, 0x7f080125

    :goto_0
    return p0

    :cond_2
    if-eqz p1, :cond_3

    const p0, 0x7f08012a

    goto :goto_1

    :cond_3
    const p0, 0x7f080129

    :goto_1
    return p0
.end method

.method public getCurrentStatus()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0
.end method

.method public getCurrentTipType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopConfigEntryRes(I)I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 2
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    const v1, 0x7f080253

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f08021a

    goto :goto_0

    :cond_1
    const p0, 0x7f080219

    :goto_0
    return p0

    :cond_2
    if-eqz p1, :cond_3

    const p0, 0x7f080126

    goto :goto_1

    :cond_3
    const p0, 0x7f080125

    :goto_1
    return p0

    :cond_4
    if-eqz p1, :cond_5

    const v1, 0x7f080254

    :cond_5
    return v1
.end method

.method public getTopConfigItem()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown Shine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 p0, 0xd4

    return p0
.end method

.method public getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return p0
.end method

.method public isLegacyBeautyVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmoothBarVideoBeautyVersion(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa2

    if-ne p1, v1, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xa9

    if-ne p1, v1, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 3
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoFilter:Z

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isSmoothDependBeautyVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopBeautyEntry()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopShineEntry()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoBeautyOpen(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa2

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    return v1
.end method

.method public reInit()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInit()V

    .line 2
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getBeautyVersion()I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/mi/config/b;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    goto :goto_0

    .line 5
    :cond_0
    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    const-string v3, "  mSupportColorRententionBack:"

    const-string v4, "mSupportColorRententionFront:"

    const v5, 0x7f1002a4

    const v6, 0x7f08021a

    const v7, 0x7f080219

    const-string v8, "ComponentRunningShine"

    const/4 v9, 0x3

    const-string v10, "7"

    const/4 v11, 0x4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_14

    .line 14
    :pswitch_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 15
    iput v11, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 18
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    :goto_2
    if-nez p2, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->b1()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 23
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 24
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->b1()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 26
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_8

    .line 29
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->n0()Z

    move-result p1

    if-nez p1, :cond_7

    .line 30
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->S1()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 31
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 32
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_7
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 34
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 35
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->n0()Z

    move-result p1

    if-nez p1, :cond_9

    .line 36
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->S1()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 38
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 39
    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 40
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 41
    :cond_a
    iput v9, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 42
    :cond_b
    :goto_3
    iput-object v10, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v7, v6, v5, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 44
    :pswitch_2
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 45
    iput v9, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 46
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoFilter:Z

    .line 48
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionBack:Z

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 50
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_14

    .line 51
    :pswitch_4
    iput v11, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_d

    .line 53
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 54
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_c

    goto :goto_4

    :cond_c
    move v2, v0

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 55
    :cond_d
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 56
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_e

    goto :goto_5

    :cond_e
    move v2, v0

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 57
    :pswitch_5
    iput v11, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const-string p1, "10"

    .line 58
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 59
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080125

    const v2, 0x7f080126

    const v3, 0x7f100085

    const-string v4, "11"

    invoke-direct {p3, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p3, v7, v6, v5, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 61
    :pswitch_6
    iput v11, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_10

    .line 63
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 64
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_f

    goto :goto_6

    :cond_f
    move v2, v0

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 65
    :cond_10
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 66
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_11

    goto :goto_7

    :cond_11
    move v2, v0

    :goto_7
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_8
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 68
    :pswitch_7
    iput v9, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 69
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 70
    :pswitch_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result p1

    if-nez p1, :cond_17

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_13

    .line 72
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 73
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_12

    move v1, v2

    goto :goto_9

    :cond_12
    move v1, v0

    :goto_9
    invoke-direct {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 74
    :cond_13
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    :goto_a
    if-nez p2, :cond_15

    .line 75
    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 76
    iput-object v10, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->b1()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 78
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 79
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 80
    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 81
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 82
    :cond_15
    iput v11, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 83
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->n0()Z

    move-result p1

    if-nez p1, :cond_16

    .line 84
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 85
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->Y2()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 87
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyMakeup()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 89
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeupItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 90
    :cond_16
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 91
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    if-nez p2, :cond_18

    .line 92
    iput v9, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto :goto_b

    .line 93
    :cond_18
    iput v11, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 94
    :cond_19
    :goto_b
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 95
    :pswitch_9
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "2"

    .line 96
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 98
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 99
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 100
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_1a

    move v1, v2

    goto :goto_c

    :cond_1a
    move v1, v0

    :goto_c
    invoke-direct {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 101
    :cond_1b
    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 102
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 103
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_1c

    move v1, v2

    goto :goto_d

    :cond_1c
    move v1, v0

    :goto_d
    invoke-direct {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1d
    :goto_e
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result p1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportVideoFilter: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1f

    .line 106
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoFilter:Z

    if-nez p2, :cond_1e

    .line 107
    iput-object v10, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 108
    iput-object v10, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    .line 109
    :cond_1e
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1f
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehAdjust()Z

    move-result p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportVideoBokehLevel:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_20

    .line 112
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBokehLevel:Z

    .line 113
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_20
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionFront()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionFront:Z

    .line 115
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionBack:Z

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_2b

    .line 118
    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_14

    .line 119
    :pswitch_a
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 120
    iput v11, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    if-nez p2, :cond_25

    .line 121
    iput-object v10, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_22

    .line 123
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 124
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_21

    move p2, v2

    goto :goto_f

    :cond_21
    move p2, v0

    :goto_f
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->S1()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 126
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 127
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 128
    :cond_22
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 129
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->S1()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 130
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 131
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 132
    :cond_23
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_24

    goto :goto_10

    :cond_24
    move v2, v0

    :goto_10
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 133
    :cond_25
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_27

    .line 134
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 135
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_26

    goto :goto_11

    :cond_26
    move v2, v0

    :goto_11
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 136
    :cond_27
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 137
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_28

    goto :goto_12

    :cond_28
    move v2, v0

    :goto_12
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_29
    :goto_13
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 139
    :cond_2a
    iput v9, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 140
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2b
    :goto_14
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 142
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 143
    :cond_2c
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return-void
.end method

.method public setCurrentTipType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setVideoBeautySwitch(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportBeautyBody()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    return p0
.end method

.method public supportBeautyLevel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    return p0
.end method

.method public supportBeautyMakeUp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    return p0
.end method

.method public supportBeautyMiLive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    return p0
.end method

.method public supportBeautyModel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    return p0
.end method

.method public supportColorRentention()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionFront:Z

    return p0

    .line 3
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportColorRententionBack:Z

    return p0
.end method

.method public supportPopUpEntry()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public supportSmoothLevel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    return p0
.end method

.method public supportTopConfigEntry()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public supportVideoFilter()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoFilter:Z

    return p0
.end method
