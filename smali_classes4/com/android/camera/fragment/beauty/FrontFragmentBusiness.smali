.class public Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;
.super Lcom/android/camera/fragment/beauty/AbBeautyFragmentBusiness;
.source "FrontFragmentBusiness.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/AbBeautyFragmentBusiness;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentShowFragmentList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/mi/config/b;->c0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Y2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportBeautyMakeup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    return-object p0
.end method
