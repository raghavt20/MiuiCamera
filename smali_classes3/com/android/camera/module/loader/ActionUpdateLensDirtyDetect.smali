.class public Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;
.super Ljava/lang/Object;
.source "ActionUpdateLensDirtyDetect.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private mIsOnCreate:Z

.field private mModuleWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/BaseModule;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mIsOnCreate:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean p0, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mIsOnCreate:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setLensDirtyDetectEnable(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMiAlgoASDVersion()F

    move-result p0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_lens_dirty_detect_enabled_key"

    .line 8
    invoke-interface {v2, v3, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v3, "pref_lens_dirty_detect_times_key"

    .line 9
    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    const-string v3, "pref_lens_dirty_detect_date_key"

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 13
    :cond_2
    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->addLensDirtyDetectedTimes()V

    :goto_0
    const/4 p0, 0x1

    new-array v2, p0, [I

    const/16 v3, 0x3d

    aput v3, v2, v1

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->updateLensDirtyDetect(Z)V

    :cond_4
    return-void
.end method
