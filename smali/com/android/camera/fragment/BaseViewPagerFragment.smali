.class public abstract Lcom/android/camera/fragment/BaseViewPagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseViewPagerFragment.java"


# instance fields
.field private isOnCreate:Z

.field private isViewCreated:Z

.field private isViewCreatedAndVisibleToUser:Z

.field private isVisibleToUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private beforeViewGoneToUser()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    return-void
.end method

.method private beforeViewVisibleToUser()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewGoneToUser()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isVisibleToUser:Z

    if-eqz p2, :cond_1

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onViewCreatedAndJumpOut()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method protected onViewCreatedAndVisibleToUser(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isVisibleToUser:Z

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewGoneToUser()V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    :cond_2
    return-void
.end method
