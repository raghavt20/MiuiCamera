.class public Lcom/android/camera/scene/SemanticsClassResultParse;
.super Lcom/android/camera/scene/ASDResultParse;
.source "SemanticsClassResultParse.java"


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/scene/ASDResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic b(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSelector(I)V

    return-void
.end method

.method private eventTrack(I)V
    .locals 3

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    const-string v1, "asd_portrait_tip"

    const-string v2, "attr_asd_detect_tip"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "asd_macro_tip"

    .line 2
    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "asd_dirty_tip"

    .line 3
    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "asd_backlit_tip"

    .line 4
    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "key_common_tips"

    .line 7
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    .line 2
    iget v1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    .line 3
    iget-object v2, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa3

    if-eq v3, v4, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa5

    if-ne v3, v4, :cond_e

    .line 6
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/android/camera/module/Camera2Module;

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->getSceneTipResId(II)I

    move-result v3

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isSceneChange(II)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xaf

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v5, 0x6

    if-eq v0, v5, :cond_c

    const/4 v2, 0x7

    const/16 v5, 0x9

    if-eq v0, v2, :cond_3

    if-eq v0, v5, :cond_3

    goto/16 :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/scene/ASDResultParse;->isSuggestionIntercept(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-static {v0}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isTipEnable(I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    .line 12
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v5, 0x0

    if-lez v3, :cond_5

    .line 13
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    const/4 p1, 0x0

    if-eqz v4, :cond_6

    .line 14
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isTipShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->getCurrentBottomTipMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move p1, v2

    :cond_6
    if-eqz p1, :cond_e

    .line 15
    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-nez p1, :cond_e

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->closeTip()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 17
    :cond_7
    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    if-gtz v3, :cond_9

    goto :goto_1

    :cond_9
    if-ne v0, v5, :cond_a

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xeb

    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;

    if-eqz p1, :cond_b

    .line 19
    invoke-interface {p1, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;->updateUltraWide(ZI)V

    goto :goto_0

    :cond_a
    const/16 p1, 0xe

    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/camera/scene/ASDResultParse;->showTip(III)Z

    .line 21
    :cond_b
    :goto_0
    invoke-static {v0, v2}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->setTipEnable(IZ)V

    .line 22
    invoke-direct {p0, v0}, Lcom/android/camera/scene/SemanticsClassResultParse;->eventTrack(I)V

    goto :goto_1

    .line 23
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->isGeneralInterception()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 24
    :cond_d
    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->showLensDirtyTip()V

    .line 25
    invoke-direct {p0, v0}, Lcom/android/camera/scene/SemanticsClassResultParse;->eventTrack(I)V

    :catch_0
    :cond_e
    :goto_1
    return-void
.end method

.method private updateBacklitScene(IILcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/android/camera/module/Camera2Module;->isShowBacklightTip()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/scene/c;

    invoke-direct {v0, p3}, Lcom/android/camera/scene/c;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/scene/SemanticsClassResultParse;->eventTrack(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/module/Camera2Module;->isShowBacklightTip()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 8
    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/camera/scene/d;

    invoke-direct {p2, p0}, Lcom/android/camera/scene/d;-><init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic parseMiAlgoAsdResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    invoke-virtual {p0, p1}, Lcom/android/camera/scene/SemanticsClassResultParse;->parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    return-void
.end method

.method public parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Semantics)scenes size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Semantics)-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/android/camera/scene/SemanticsClassResultParse;->updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
