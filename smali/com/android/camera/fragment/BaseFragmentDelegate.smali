.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentDelegate$FragmentInto;
    }
.end annotation


# static fields
.field public static final BEAUTY_FRAGMENT_CONTAINER_ID:I = 0x7f09001e

.field public static final EYE_LIGHT_POPU_TIP_FRAGMENT_CONTAINER_ID:I = 0x7f090026

.field public static final FRAGMENT_ASD_WATERMARK:I = 0xfffc

.field public static final FRAGMENT_BASE_WATERMARK:I = 0xffff

.field public static final FRAGMENT_BEAUTY:I = 0xfb

.field public static final FRAGMENT_BLANK_BEAUTY:I = 0xffa

.field public static final FRAGMENT_BOTTOM_ACTION:I = 0xf1

.field public static final FRAGMENT_BOTTOM_INTENT_DONE:I = 0xff3

.field public static final FRAGMENT_BOTTOM_POPUP_TIPS:I = 0xfff2

.field public static final FRAGMENT_CITY_WATERMARK:I = 0xfffd

.field public static final FRAGMENT_DUAL_CAMERA_ADJUST:I = 0xff4

.field public static final FRAGMENT_DUAL_CAMERA_BOKEH_ADJUST:I = 0xffb

.field public static final FRAGMENT_DUAL_STEREO:I = 0xff5

.field public static final FRAGMENT_EYE_LIGHT_POPU_TIP:I = 0xff9

.field public static final FRAGMENT_FESTIVAL_WATERMARK:I = 0xfffb

.field public static final FRAGMENT_FILTER:I = 0xfa

.field public static final FRAGMENT_GENERAL_WATERMARK:I = 0x10000

.field public static final FRAGMENT_GIF:I = 0xfa5

.field public static final FRAGMENT_ID_CARD:I = 0xfff8

.field public static final FRAGMENT_INVALID:I = 0xf0

.field public static final FRAGMENT_KALEIDOSCOPE:I = 0xfffa

.field public static final FRAGMENT_LIGHTING:I = 0xff7

.field public static final FRAGMENT_LIVE_REVIEW:I = 0xfff9

.field public static final FRAGMENT_MAIN_CONTENT:I = 0xf3

.field public static final FRAGMENT_MANUALLY_EXTRA:I = 0xfe

.field public static final FRAGMENT_MIMOJI_EDIT:I = 0xfa2

.field public static final FRAGMENT_MIMOJI_EMOTICON:I = 0xfa3

.field public static final FRAGMENT_MIMOJI_LIST:I = 0xfa1

.field public static final FRAGMENT_MIMOJI_SCREEN:I = 0xfa4

.field public static final FRAGMENT_MODE_SELECT:I = 0xf2

.field public static final FRAGMENT_PANORAMA:I = 0xff0

.field public static final FRAGMENT_POPUP_BEAUTY:I = 0xf9

.field public static final FRAGMENT_POPUP_BEAUTYLEVEL:I = 0xff2

.field public static final FRAGMENT_POPUP_LIVE_SPEED:I = 0xffd

.field public static final FRAGMENT_POPUP_LIVE_STICKER:I = 0xffc

.field public static final FRAGMENT_POPUP_MAKEUP:I = 0xfc

.field public static final FRAGMENT_POPUP_MANUALLY:I = 0xf7

.field public static final FRAGMENT_SCREEN_LIGHT:I = 0xff6

.field public static final FRAGMENT_SPOTS_WATERMARK:I = 0x10001

.field public static final FRAGMENT_STICKER:I = 0xff

.field public static final FRAGMENT_SUBTITLE:I = 0xfff7

.field public static final FRAGMENT_TOP_ALERT:I = 0xfd

.field public static final FRAGMENT_TOP_CONFIG:I = 0xf4

.field public static final FRAGMENT_TOP_CONFIG_EXTRA:I = 0xf5

.field public static final FRAGMENT_VERTICAL:I = 0xff8

.field public static final FRAGMENT_VV:I = 0xfff3

.field public static final FRAGMENT_VV_GALLERY:I = 0xfff4

.field public static final FRAGMENT_VV_PREVIEW:I = 0xfff5

.field public static final FRAGMENT_VV_PROCESS:I = 0xfff6

.field public static final FRAGMENT_WATERMARK:I = 0xfffe

.field public static final FRAGMENT_WIDESELFIE:I = 0xffe

.field public static final MAKE_UP_POPU_FRAGMENT_CONTAINER_ID:I = 0x7f090023

.field private static final TAG:Ljava/lang/String; = "BaseFragmentDelegate"


# instance fields
.field private animationComposite:Lcom/android/camera/animation/AnimationComposite;

.field private currentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/camera/Camera;

.field private mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

.field private mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private originalFragments:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .line 4
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 5
    new-instance p1, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p1}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    .line 6
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 6
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    .line 7
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 8
    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 11
    :cond_1
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    :pswitch_1
    if-eq v3, v4, :cond_2

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 14
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 15
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 16
    invoke-virtual {v5, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 17
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 18
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 19
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    .line 20
    :pswitch_2
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    iget v8, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v8, v7

    .line 21
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 22
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    iget-object v10, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10, v9}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 24
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v10, :cond_5

    if-eq v9, v3, :cond_4

    .line 25
    invoke-virtual {v10, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_2

    .line 26
    :cond_4
    invoke-virtual {v10, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 27
    :goto_2
    invoke-virtual {v1, v10}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 28
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    .line 29
    invoke-virtual {v5, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 30
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 31
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 32
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 33
    :pswitch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_7

    .line 34
    invoke-virtual {v5, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 35
    invoke-virtual {v5, v4}, Lcom/android/camera/fragment/BaseFragment;->setNewFragmentInfo(I)V

    .line 36
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 37
    :cond_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_8

    .line 38
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 39
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_4

    .line 40
    :cond_8
    invoke-direct {p0, v7, v4, v3, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    .line 41
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    :goto_4
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 43
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 44
    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 45
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_9

    .line 46
    invoke-virtual {v4, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 47
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 48
    :cond_9
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 49
    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v4}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 50
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v3, :cond_a

    .line 51
    invoke-virtual {v3, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 52
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    :cond_a
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 54
    :pswitch_6
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    .line 55
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 56
    invoke-direct {p0, v7, v4, v3, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    .line 57
    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v3, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 59
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 60
    :cond_b
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 61
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "need operation info"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bindLifeCircle(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->getFragmentLifecycle()Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/BaseFragmentDelegate$2;

    invoke-direct {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate$2;-><init>()V

    const-string v3, "com.android.camera.bind"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->addListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 2

    const/16 v0, 0xf0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_b

    const/16 v0, 0xf1

    if-eq p2, v0, :cond_a

    const/16 v0, 0xf3

    if-eq p2, v0, :cond_9

    const/16 v0, 0xf4

    if-eq p2, v0, :cond_8

    const/16 v0, 0xf7

    if-eq p2, v0, :cond_7

    const/16 v0, 0xf9

    if-eq p2, v0, :cond_6

    const/16 v0, 0xfb

    if-eq p2, v0, :cond_5

    const/16 v0, 0xff

    if-eq p2, v0, :cond_4

    const/16 v0, 0xfa1

    if-eq p2, v0, :cond_2

    const/16 v0, 0xff0

    if-eq p2, v0, :cond_1

    const v0, 0xfffe

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    .line 1
    :pswitch_0
    new-instance v1, Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-direct {v1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;-><init>()V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;-><init>()V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    new-instance v1, Lcom/android/camera/fragment/idcard/FragmentIDCard;

    invoke-direct {v1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;-><init>()V

    goto/16 :goto_0

    .line 4
    :pswitch_3
    new-instance v1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;-><init>()V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;-><init>()V

    goto/16 :goto_0

    .line 6
    :pswitch_5
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVV;

    invoke-direct {v1}, Lcom/android/camera/fragment/vv/FragmentVV;-><init>()V

    goto/16 :goto_0

    .line 7
    :pswitch_6
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;-><init>()V

    goto/16 :goto_0

    .line 8
    :pswitch_7
    new-instance v1, Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentWideSelfie;-><init>()V

    goto/16 :goto_0

    .line 9
    :pswitch_8
    new-instance v1, Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-direct {v1}, Lcom/android/camera/fragment/live/FragmentLiveSpeed;-><init>()V

    goto/16 :goto_0

    .line 10
    :pswitch_9
    new-instance v1, Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-direct {v1}, Lcom/android/camera/fragment/live/FragmentLiveSticker;-><init>()V

    goto/16 :goto_0

    .line 11
    :pswitch_a
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;-><init>()V

    goto/16 :goto_0

    .line 12
    :pswitch_b
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;-><init>()V

    goto/16 :goto_0

    .line 13
    :pswitch_c
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopuEyeLightTip;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopuEyeLightTip;-><init>()V

    goto/16 :goto_0

    .line 14
    :pswitch_d
    new-instance v1, Lcom/android/camera/fragment/FragmentVertical;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentVertical;-><init>()V

    goto/16 :goto_0

    .line 15
    :pswitch_e
    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;-><init>()V

    goto/16 :goto_0

    .line 16
    :pswitch_f
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualStereo;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualStereo;-><init>()V

    goto/16 :goto_0

    .line 17
    :pswitch_10
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    goto/16 :goto_0

    .line 18
    :pswitch_11
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    goto/16 :goto_0

    .line 19
    :pswitch_12
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;-><init>()V

    goto :goto_0

    .line 20
    :pswitch_13
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/gif/FragmentGifEdit;

    invoke-direct {v1}, Lcom/android/camera/features/mimoji2/fragment/gif/FragmentGifEdit;-><init>()V

    goto :goto_0

    .line 21
    :pswitch_14
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

    invoke-direct {v1}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;-><init>()V

    goto :goto_0

    .line 22
    :pswitch_15
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

    invoke-direct {v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;-><init>()V

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

    invoke-direct {v1}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;-><init>()V

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    goto :goto_0

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xb8

    if-ne p2, v0, :cond_3

    .line 26
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {v1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    goto :goto_0

    .line 27
    :cond_3
    new-instance v1, Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-direct {v1}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;-><init>()V

    goto :goto_0

    .line 28
    :cond_4
    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {v1}, Lcom/android/camera/fragment/sticker/FragmentSticker;-><init>()V

    goto :goto_0

    .line 29
    :cond_5
    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBeauty;-><init>()V

    goto :goto_0

    .line 30
    :cond_6
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;-><init>()V

    goto :goto_0

    .line 31
    :cond_7
    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v1}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    goto :goto_0

    .line 32
    :cond_8
    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    goto :goto_0

    .line 33
    :cond_9
    new-instance v1, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    goto :goto_0

    .line 34
    :cond_a
    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-direct {v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;-><init>()V

    .line 35
    :goto_0
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->inceptFragment(Lcom/android/camera/fragment/BaseFragment;ZILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    :cond_b
    return-object v1

    :pswitch_data_0
    .packed-switch 0xfa3
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xff2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xff8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfff2
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfff6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private inceptFragment(Lcom/android/camera/fragment/BaseFragment;ZILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 2
    invoke-virtual {p1, p4}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    xor-int/lit8 p0, p2, 0x1

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    return-void
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCurrentFragments(III)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_6

    .line 2
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_6

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :goto_1
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_2

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 9
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 11
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 12
    :goto_3
    :pswitch_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_6

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_3

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 15
    :goto_4
    :pswitch_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_6

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_4

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_6
    if-nez v0, :cond_5

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 20
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    :goto_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearFeatureFragment()V
    .locals 0

    return-void
.end method

.method public delegateEvent(I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0xfff3

    const v2, 0x7f090073

    const v3, 0x7f090024

    const/16 v4, 0xf1

    const v5, 0x7f090023

    const v6, 0x7f090028

    const v7, 0x7f09001d

    const v8, 0x7f09001e

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffe

    if-eq p1, v1, :cond_0

    .line 3
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffe

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    const p1, 0x7f090070

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xfa5

    if-eq v1, v2, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xfa5

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    const p1, 0x7f09006f

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xfa3

    if-eq v1, v2, :cond_2

    .line 9
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xfa3

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 11
    :pswitch_4
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffa

    if-eq p1, v1, :cond_3

    .line 12
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffa

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 13
    :cond_3
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 14
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 15
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff6

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 19
    :cond_4
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/mi/config/b;->im()Z

    move-result p1

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_6

    .line 22
    :cond_5
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_6
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff6

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 24
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfa1

    if-eq p1, v1, :cond_7

    .line 25
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xfa1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 26
    :cond_7
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 27
    :pswitch_7
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffd

    if-eq p1, v1, :cond_8

    .line 28
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xffd

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 29
    :cond_8
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 30
    :pswitch_8
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffc

    if-eq p1, v1, :cond_9

    .line 31
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xffc

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 32
    :cond_9
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 33
    :pswitch_9
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfff9

    if-eq p1, v1, :cond_a

    const p1, 0x7f090074

    .line 34
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff9

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    const p1, 0x7f090074

    .line 35
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 36
    :pswitch_a
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffa

    if-eq p1, v1, :cond_b

    .line 37
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xffa

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 38
    :cond_b
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_b
    const p1, 0x7f090026

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_c

    .line 40
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff9

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 41
    :cond_c
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 42
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-ne p1, v1, :cond_d

    const/16 p1, 0xf

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I)V

    return-void

    :cond_d
    if-eq p1, v4, :cond_14

    .line 44
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff2

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 48
    :pswitch_d
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff3

    const v2, 0x7f090027

    const v5, 0x7f0900de

    if-eq p1, v1, :cond_e

    .line 49
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff3

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 54
    :cond_e
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/mi/config/b;->im()Z

    move-result p1

    if-nez p1, :cond_f

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_14

    .line 59
    :cond_f
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 60
    :pswitch_e
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff2

    if-eq p1, v1, :cond_10

    .line 61
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff2

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 62
    :cond_10
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 63
    :pswitch_f
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff

    if-eq p1, v1, :cond_11

    .line 64
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_11
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff2

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :pswitch_10
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfb

    if-eq p1, v1, :cond_12

    .line 69
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_12
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :pswitch_11
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfa

    if-eq p1, v1, :cond_13

    .line 72
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_13
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_14
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    return-void

    :cond_15
    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .param p1    # Lio/reactivex/Completable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/BaseFragmentDelegate$1;

    invoke-direct {v0, p0, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate$1;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->isSupportUltraWide()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 6
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p0, v1, v1, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    .line 7
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public getActiveFragment(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0xf0

    return p0
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object p0
.end method

.method public getOriginalFragment(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v0, 0xf0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public init(Landroid/support/v4/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 3
    iput-object v1, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    const/4 v3, 0x1

    const/16 v4, 0xf0

    const/16 v5, 0xf4

    .line 4
    invoke-direct {v0, v3, v5, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    const/16 v6, 0xf7

    .line 5
    invoke-direct {v0, v3, v6, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v6

    const v7, 0xfff2

    .line 6
    invoke-direct {v0, v3, v7, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v7

    const/16 v8, 0xf1

    .line 7
    invoke-direct {v0, v3, v8, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    const/16 v9, 0xf3

    .line 8
    invoke-direct {v0, v3, v9, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v9

    const/16 v10, 0xff0

    .line 9
    invoke-direct {v0, v3, v10, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v10

    const/16 v11, 0xff8

    .line 10
    invoke-direct {v0, v3, v11, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v11

    const v12, 0xfff7

    .line 11
    invoke-direct {v0, v3, v12, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v12

    const/16 v13, 0xfa4

    .line 12
    invoke-direct {v0, v3, v13, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v13

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 14
    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f090028

    invoke-virtual {v2, v15, v7, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 15
    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f09001d

    invoke-virtual {v2, v15, v8, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 16
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0900de

    invoke-virtual {v2, v15, v5, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 17
    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f090027

    invoke-virtual {v2, v15, v6, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 18
    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0900db

    invoke-virtual {v2, v15, v9, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 19
    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f090129

    invoke-virtual {v2, v15, v10, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 20
    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0900df

    invoke-virtual {v2, v15, v11, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 21
    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0900dd

    invoke-virtual {v2, v15, v12, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 22
    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0900fb

    invoke-virtual {v2, v15, v13, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 23
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mi/config/a;->qd()Z

    move-result v14

    if-eqz v14, :cond_0

    const v14, 0xfff8

    .line 24
    invoke-direct {v0, v3, v14, v4, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v14

    .line 25
    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v15

    const v3, 0x7f090081

    invoke-virtual {v2, v3, v14, v15}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 26
    iget-object v15, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v15, v4, v14}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 27
    iget-object v4, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v4, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    const/4 v3, 0x0

    .line 28
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v4, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/mi/config/b;->im()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v3, 0xff5

    const/4 v4, 0x1

    const/16 v14, 0xf0

    .line 30
    invoke-direct {v0, v4, v3, v14, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    const/16 v14, 0xf0

    const/16 v3, 0xff4

    .line 31
    invoke-direct {v0, v4, v3, v14, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    :cond_3
    :goto_1
    const v4, 0x7f090024

    if-eqz v3, :cond_4

    .line 32
    iget-object v14, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v15

    invoke-virtual {v14, v4, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v14, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v15

    invoke-virtual {v14, v15, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 34
    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v4, v3, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v14, 0xf0

    goto :goto_2

    .line 35
    :cond_4
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v14, 0xf0

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->isSupportBokehAdjust()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xffb

    const/4 v4, 0x1

    .line 37
    invoke-direct {v0, v4, v3, v14, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    .line 38
    iget-object v4, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    const v15, 0x7f090025

    invoke-virtual {v4, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v4, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v4, v14, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 40
    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v15, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 41
    :cond_5
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    const v14, 0x7f090028

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    const v14, 0x7f09001d

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    const v14, 0x7f0900de

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v4, 0x7f090023

    const/16 v14, 0xf0

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    const v14, 0x7f090027

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    const v14, 0x7f0900db

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    const v14, 0x7f090129

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v4, 0x7f09001e

    const/16 v14, 0xf0

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v4, 0x7f090026

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v4, 0x7f0900dd

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v4, 0x7f0900fb

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 53
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 54
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 55
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v9}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 56
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 57
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v10}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 58
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v11}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 59
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v12}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 60
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v13}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 61
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->Wd()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xffe

    const/4 v4, 0x1

    const/16 v5, 0xf0

    .line 62
    invoke-direct {v0, v4, v3, v5, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    const v4, 0x7f090211

    .line 63
    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    iget-object v4, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 65
    :cond_6
    iget-object v3, v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-direct {v0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    .line 66
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 67
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method public lazyLoadFragment(II)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xff6

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const/16 v1, 0xf0

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 9
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public loadFeatureFragment(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 3
    iget v2, v1, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/BaseFragment;

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    const/4 v5, 0x1

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->inceptFragment(Lcom/android/camera/fragment/BaseFragment;ZILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-direct {p0, v2, v1, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method
