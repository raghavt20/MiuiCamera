.class public Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditLevelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mColorRecycleView:Landroid/support/v7/widget/RecyclerView;

.field mThumbnailGV:Landroid/support/v7/widget/RecyclerView;

.field mTvSubTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ViewHolder;->this$0:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901ab

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ViewHolder;->mTvSubTitle:Landroid/widget/TextView;

    const p1, 0x7f090042

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ViewHolder;->mColorRecycleView:Landroid/support/v7/widget/RecyclerView;

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ViewHolder;->mColorRecycleView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const p1, 0x7f090183

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ViewHolder;->mThumbnailGV:Landroid/support/v7/widget/RecyclerView;

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ViewHolder;->mThumbnailGV:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method
