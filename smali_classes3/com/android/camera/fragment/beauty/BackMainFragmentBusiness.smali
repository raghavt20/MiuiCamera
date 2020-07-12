.class public Lcom/android/camera/fragment/beauty/BackMainFragmentBusiness;
.super Lcom/android/camera/fragment/beauty/AbBeautyFragmentBusiness;
.source "BackMainFragmentBusiness.java"


# instance fields
.field mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
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
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BackMainFragmentBusiness;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BackMainFragmentBusiness;->mFragments:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BackMainFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BackMainFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BackMainFragmentBusiness;->mFragments:Ljava/util/List;

    return-object p0
.end method
