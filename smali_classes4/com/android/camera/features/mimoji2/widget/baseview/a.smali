.class public final synthetic Lcom/android/camera/features/mimoji2/widget/baseview/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/a;->a:Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/baseview/a;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/android/camera/features/mimoji2/widget/baseview/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/a;->a:Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/a;->b:Ljava/lang/Object;

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/a;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;->a(Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;)V

    return-void
.end method
