.class public Lcom/android/camera/CameraAppImpl;
.super Lmiui/external/Application;
.source "CameraAppImpl.java"


# static fields
.field private static sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isMimojiNeedUpdate:Z

.field private sLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    .line 2
    const-class v0, Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->isMimojiNeedUpdate:Z

    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraApplicationDelegate;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraApplicationDelegate;->closeAllActivitiesBut(Landroid/app/Activity;)V

    return-void
.end method

.method public containsResumedCameraInStack()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->containsResumedCameraInStack()Z

    move-result p0

    return p0
.end method

.method public getActivity(I)Landroid/app/Activity;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraApplicationDelegate;->getActivity(I)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getActivityCount()I
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result p0

    return p0
.end method

.method public isApplicationFirstLaunched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isMainIntentActivityLaunched()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->isMainIntentActivityLaunched()Z

    move-result p0

    return p0
.end method

.method public isMimojiNeedUpdate()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->isMimojiNeedUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/CameraAppImpl;->isMimojiNeedUpdate:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isNeedRestore()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getSettingsFlag()Z

    move-result p0

    return p0
.end method

.method public onCreateApplicationDelegate()Lcom/android/camera/CameraApplicationDelegate;
    .locals 7

    .line 2
    sget-object v0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/CameraApplicationDelegate;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraApplicationDelegate;-><init>(Lcom/android/camera/CameraAppImpl;)V

    sput-object v0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    :cond_0
    const-string v0, "rx2.purge-period-seconds"

    const-string v1, "3600"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/android/camera/aftersales/AftersalesManager;->checkSelf(Landroid/content/Context;)V

    .line 6
    sget-object v0, Lcom/mi/config/b;->a:Ljava/lang/String;

    const-string v1, "avenger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "com.android.camera"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera2/vendortag/struct/MarshalQueryableRegister;->preload()V

    .line 9
    invoke-static {}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->preload()V

    .line 10
    invoke-static {}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->preload()V

    .line 11
    invoke-static {}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->preload()V

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.xiaomi.camera.parallel.enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-wide/32 v2, 0x40000000

    .line 16
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    const-wide/16 v2, 0x6

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 19
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "totalMemory:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "G, and final maxAcquireCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(II)V

    .line 21
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/parallel/AlgoConnector;->startService(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 23
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/CrashHandler;->getInstance()Lcom/android/camera/CrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/CrashHandler;->init(Lmiui/external/Application;)V

    .line 24
    invoke-static {p0}, Lcom/android/camera/network/util/NetworkUtils;->bind(Landroid/app/Application;)V

    .line 25
    invoke-static {p0}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    .line 26
    invoke-static {p0}, Lcom/android/camera/upgrade/UpgradeManager;->migrateForUpgrade(Landroid/content/Context;)V

    .line 27
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    return-object p0
.end method

.method public bridge synthetic onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->onCreateApplicationDelegate()Lcom/android/camera/CameraApplicationDelegate;

    move-result-object p0

    return-object p0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraApplicationDelegate;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public resetRestoreFlag()V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->resetRestoreFlag()V

    return-void
.end method
