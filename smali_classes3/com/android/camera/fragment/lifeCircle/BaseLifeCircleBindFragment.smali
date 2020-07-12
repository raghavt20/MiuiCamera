.class public Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseLifeCircleBindFragment.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "com.android.camera.bind"


# instance fields
.field private final mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    invoke-direct {v0}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;-><init>(Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    return-void
.end method


# virtual methods
.method public getFragmentLifecycle()Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    const-string v0, "com.android.camera.bind"

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->onDestroy(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    const-string v0, "com.android.camera.bind"

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->onStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    const-string v0, "com.android.camera.bind"

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->onStop(Ljava/lang/String;)V

    return-void
.end method
