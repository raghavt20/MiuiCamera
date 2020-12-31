.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field private mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

.field private mDataItemLive:Lcom/android/camera/data/data/extra/DataItemLive;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mDegree:I

.field private mImageNormalColor:I

.field private mItemHeight:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedColor:I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTAG:I

.field private mTextNormalColor:I

.field private mUnableClickColor:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemLive:Lcom/android/camera/data/data/extra/DataItemLive;

    const p1, -0x4c000001

    .line 8
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    const p1, -0x141415

    .line 9
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    const p1, -0xe66d19

    .line 10
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    const p1, 0x47ffffff

    .line 11
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mUnableClickColor:I

    .line 12
    iput p3, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mItemHeight:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result p2

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mItemHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/16 v3, 0xbb

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq p2, v3, :cond_16

    const/16 v3, 0xce

    if-eq p2, v3, :cond_14

    const/16 v3, 0xd5

    if-eq p2, v3, :cond_13

    const/16 v3, 0xd8

    const v8, 0xfff3

    const v9, 0x7f090055

    if-eq p2, v3, :cond_11

    const/16 v3, 0xff

    if-eq p2, v3, :cond_10

    const/16 v3, 0xe1

    if-eq p2, v3, :cond_f

    const/16 v3, 0xe2

    if-eq p2, v3, :cond_e

    const-string v3, "4x3"

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    move v1, v4

    move v9, v1

    move v0, v5

    move v2, v6

    move v3, v2

    goto/16 :goto_15

    :pswitch_0
    const v0, 0x7f080178

    const v1, 0x7f10048e

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_speech_shutter"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    .line 9
    :pswitch_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    const v1, 0x7f080164

    const v2, 0x7f10021c

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    const v1, 0x7f08018a

    const v2, 0x7f100197

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->isEnabled(I)Z

    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->getResIcon(Z)I

    move-result v2

    .line 14
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->getResText()I

    move-result v1

    goto/16 :goto_6

    :pswitch_4
    const v0, 0x7f080162

    const v1, 0x7f100145

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_hand_gesture"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    .line 16
    :pswitch_5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    const v1, 0x7f080130

    const v2, 0x7f1001fa

    :goto_0
    move v3, v1

    move v1, v2

    goto/16 :goto_7

    .line 17
    :pswitch_6
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08014b

    const v1, 0x7f1003fe

    goto/16 :goto_10

    :cond_0
    const v0, 0x7f08014a

    const v1, 0x7f100266

    goto/16 :goto_10

    :pswitch_7
    const v0, 0x7f08017f

    const v1, 0x7f1000e4

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_super_resolution_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    :pswitch_8
    const v0, 0x7f080155

    const v1, 0x7f1002ae

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v2

    goto/16 :goto_8

    .line 20
    :pswitch_9
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isSwitchOn(I)Z

    move-result v2

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v3

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v1

    goto/16 :goto_9

    :pswitch_a
    const v0, 0x7f08015e

    const v1, 0x7f100397

    .line 24
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_show_gender_age_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    :pswitch_b
    const v1, 0x7f10036d

    .line 25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f08023f

    goto/16 :goto_6

    :cond_1
    const v2, 0x7f08023e

    goto/16 :goto_6

    :pswitch_c
    const v0, 0x7f080169

    const v1, 0x7f100356

    .line 27
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_magic_mirror_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    :pswitch_d
    const v0, 0x7f080161

    const v1, 0x7f1000dc

    .line 28
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    :pswitch_e
    const v0, 0x7f08016c

    const v1, 0x7f1000e0

    .line 29
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_scenemode_setting_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    :pswitch_f
    const v0, 0x7f080159

    const v1, 0x7f10044e

    .line 30
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v2

    goto/16 :goto_8

    :pswitch_10
    const v0, 0x7f080168

    const v1, 0x7f1000de

    .line 31
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_ubifocus_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    :pswitch_11
    const v0, 0x7f080163

    const v1, 0x7f1000dd

    .line 32
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_hand_night_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_8

    :pswitch_12
    const v2, 0x7f080179

    const v3, 0x7f1000e3

    .line 33
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v10

    if-eqz v1, :cond_2

    .line 34
    invoke-interface {v1, v9}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    if-ne v1, v8, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    move v9, v4

    move v0, v5

    move v3, v2

    goto/16 :goto_11

    :cond_3
    :goto_1
    move v1, v3

    move v9, v4

    move v0, v5

    move v3, v2

    move v2, v6

    move v6, v10

    goto/16 :goto_15

    .line 36
    :pswitch_13
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v3

    .line 40
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v0

    move v9, v4

    move v2, v6

    move v6, v1

    move v1, v3

    move v3, v0

    goto/16 :goto_d

    :cond_4
    const v0, 0x7f1000e5

    const v2, 0x7f080180

    move v3, v2

    goto/16 :goto_f

    .line 41
    :pswitch_14
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 42
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    const v2, 0x7f10006f

    .line 43
    iget-object v8, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v8}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v8

    .line 44
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v9

    const/16 v10, 0x15

    if-eq v10, v9, :cond_6

    const/16 v10, 0x16

    if-ne v10, v9, :cond_5

    goto :goto_2

    :cond_5
    move v9, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v5

    .line 45
    :goto_3
    invoke-virtual {v8, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    move v0, v5

    goto :goto_5

    .line 46
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    move v0, v6

    .line 47
    :goto_5
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v3

    .line 48
    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getResIcon(Z)I

    move-result v1

    move v9, v4

    move v11, v3

    move v3, v1

    move v1, v2

    move v2, v6

    move v6, v11

    goto/16 :goto_15

    .line 49
    :pswitch_15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->isEnabled(I)Z

    move-result v0

    .line 51
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getResIcon(Z)I

    move-result v2

    .line 52
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getDisplayTitleString()I

    move-result v1

    goto :goto_6

    .line 53
    :pswitch_16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->isEnabled(I)Z

    move-result v0

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->getResIcon(Z)I

    move-result v2

    .line 56
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->getResText()I

    move-result v1

    goto :goto_6

    .line 57
    :pswitch_17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isEnabled(I)Z

    move-result v0

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->getResIcon(Z)I

    move-result v2

    .line 60
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->getResText()I

    move-result v1

    :goto_6
    move v3, v2

    :goto_7
    move v9, v4

    goto/16 :goto_c

    :pswitch_18
    const v0, 0x7f08016b

    const v1, 0x7f100381

    .line 61
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const-string v3, "pref_camera_referenceline_key"

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_8
    move v3, v0

    :goto_9
    move v9, v4

    move v0, v5

    move v11, v6

    move v6, v2

    move v2, v11

    goto/16 :goto_15

    .line 62
    :pswitch_19
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v2

    .line 64
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDisplayTitleString()I

    move-result v8

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v9

    const/16 v10, 0xa3

    if-eq v0, v10, :cond_9

    const/16 v10, 0xa5

    if-ne v0, v10, :cond_a

    .line 66
    :cond_9
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 67
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v6

    goto :goto_a

    :cond_a
    move v1, v5

    .line 68
    :goto_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0xb8

    if-ne v0, v3, :cond_b

    const v2, 0x7f08013d

    move v0, v6

    goto :goto_b

    :cond_b
    move v0, v1

    :goto_b
    move v3, v2

    move v2, v5

    move v1, v8

    goto/16 :goto_15

    .line 69
    :pswitch_1a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getMenuDrawable()I

    move-result v1

    .line 71
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getMenuString()Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    move v3, v1

    move v1, v4

    move v9, v1

    :goto_c
    move v2, v6

    move v6, v0

    :goto_d
    move v0, v5

    goto/16 :goto_15

    .line 73
    :pswitch_1b
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunning8KVideoQuality()Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 77
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentRunning8KVideoQuality;->getFps(I)I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_c

    const v2, 0x7f080145

    goto :goto_e

    :cond_c
    const v2, 0x7f080144

    goto :goto_e

    .line 78
    :cond_d
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getValueSelectedDrawable(I)I

    move-result v2

    .line 79
    :goto_e
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDisplayTitleString()I

    move-result v3

    .line 80
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->disableUpdate()Z

    move-result v8

    xor-int/2addr v8, v5

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getValueDisplayString(I)I

    move-result v9

    goto/16 :goto_14

    .line 82
    :cond_e
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 83
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v1

    .line 85
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v3

    .line 86
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    :goto_f
    move v9, v4

    move v2, v6

    move v6, v1

    move v1, v0

    goto :goto_d

    :cond_f
    const v0, 0x7f080158

    const v1, 0x7f1000e1

    :goto_10
    move v3, v0

    move v9, v4

    move v0, v5

    :goto_11
    move v2, v6

    goto/16 :goto_15

    .line 87
    :cond_10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v0

    .line 89
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResIcon(Z)I

    move-result v2

    .line 90
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v1

    goto/16 :goto_6

    :cond_11
    if-eqz v1, :cond_12

    .line 91
    invoke-interface {v1, v9}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    if-ne v0, v8, :cond_12

    move v0, v5

    goto :goto_12

    :cond_12
    move v0, v6

    :goto_12
    const v1, 0x7f08018d

    const v2, 0x7f1004e3

    goto/16 :goto_0

    .line 92
    :cond_13
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v2

    .line 94
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getDisplayTitleString()I

    move-result v3

    .line 95
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->disableUpdate()Z

    move-result v8

    xor-int/2addr v8, v5

    .line 96
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v9

    goto :goto_14

    .line 97
    :cond_14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_15

    const v1, 0x7f0801fe

    goto :goto_13

    :cond_15
    const v1, 0x7f0801fc

    :goto_13
    const v2, 0x7f10009f

    goto/16 :goto_0

    .line 98
    :cond_16
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemLive:Lcom/android/camera/data/data/extra/DataItemLive;

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v2

    .line 101
    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->getDisplayTitleString()I

    move-result v3

    .line 102
    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->disableUpdate()Z

    move-result v8

    xor-int/2addr v8, v5

    .line 103
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v9

    :goto_14
    move v1, v3

    move v0, v8

    move v3, v2

    move v2, v5

    :goto_15
    const v8, 0x7f0900bf

    .line 104
    invoke-virtual {p1, v8}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f0900be

    .line 105
    invoke-virtual {p1, v10}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/ColorImageView;

    .line 106
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSelected(Z)V

    if-eq v1, v4, :cond_17

    .line 107
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_16

    .line 108
    :cond_17
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eq v9, v4, :cond_18

    .line 111
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    if-eqz v6, :cond_19

    .line 112
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100057

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_19
    if-nez v2, :cond_1a

    .line 113
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10003a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1a
    :goto_17
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_1c

    if-eqz v6, :cond_1b

    .line 116
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    goto :goto_18

    :cond_1b
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    goto :goto_18

    :cond_1c
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mUnableClickColor:I

    :goto_18
    if-eqz v6, :cond_1d

    .line 117
    iget v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    goto :goto_19

    :cond_1d
    iget v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    .line 118
    :goto_19
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sparse-switch v3, :sswitch_data_0

    .line 119
    invoke-virtual {v10, v2}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    goto :goto_1a

    :sswitch_0
    if-nez v0, :cond_1e

    .line 120
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mUnableClickColor:I

    invoke-virtual {v10, v0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    goto :goto_1a

    .line 121
    :cond_1e
    invoke-virtual {v10, v2}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 122
    :goto_1a
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/camera/Util;->isSetContentDesc()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 124
    :cond_1f
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    if-ne v0, p2, :cond_20

    .line 125
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/top/ExtraAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/top/ExtraAdapter$1;-><init>(Lcom/android/camera/fragment/top/ExtraAdapter;Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void

    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xdb
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe4
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfb
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x104
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f080069 -> :sswitch_0
        0x7f08006a -> :sswitch_0
        0x7f08013c -> :sswitch_0
        0x7f08013d -> :sswitch_0
        0x7f08013e -> :sswitch_0
        0x7f080140 -> :sswitch_0
        0x7f080146 -> :sswitch_0
        0x7f08015d -> :sswitch_0
        0x7f080179 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0078

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    iget p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz p0, :cond_0

    int-to-float p0, p0

    .line 5
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 6
    :cond_0
    new-instance p0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const p0, 0x7f0900be

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return p1

    :cond_2
    const p2, 0x3f6e147b    # 0.93f

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return p1
.end method

.method public setNewDegree(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method

.method public setOnClictTag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    return-void
.end method
