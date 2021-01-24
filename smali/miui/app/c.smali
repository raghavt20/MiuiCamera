.class public Lmiui/app/c;
.super Lmiui/app/b;
.source "ProgressDialog.java"


# static fields
.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/text/NumberFormat;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Ljava/lang/CharSequence;

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiui/app/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiui/app/c;->k:I

    .line 3
    invoke-direct {p0}, Lmiui/app/c;->z()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lmiui/app/b;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lmiui/app/c;->k:I

    .line 6
    invoke-direct {p0}, Lmiui/app/c;->z()V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget v0, p0, Lmiui/app/c;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmiui/app/c;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lmiui/app/c;->x:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static L(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiui/app/c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lmiui/app/c;->M(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/c;

    move-result-object p0

    return-object p0
.end method

.method public static M(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/c;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-static/range {v0 .. v5}, Lmiui/app/c;->O(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/c;

    move-result-object p0

    return-object p0
.end method

.method public static N(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/c;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lmiui/app/c;->O(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/c;

    move-result-object p0

    return-object p0
.end method

.method public static O(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/c;
    .locals 1

    .line 1
    new-instance v0, Lmiui/app/c;

    invoke-direct {v0, p0}, Lmiui/app/c;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lmiui/app/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0, p2}, Lmiui/app/c;->n(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0, p3}, Lmiui/app/c;->C(Z)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {v0, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method static synthetic p(Lmiui/app/c;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/c;->u:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic q(Lmiui/app/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/c;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r(Lmiui/app/c;)Ljava/text/NumberFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/c;->m:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic s(Lmiui/app/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/c;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic t(Lmiui/app/c;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private z()V
    .locals 1

    const-string v0, "%1d/%2d"

    .line 1
    iput-object v0, p0, Lmiui/app/c;->l:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/c;->m:Ljava/text/NumberFormat;

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-boolean p0, p0, Lmiui/app/c;->v:Z

    return p0
.end method

.method public C(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p1, p0, Lmiui/app/c;->v:Z

    :goto_0
    return-void
.end method

.method public D(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lmiui/app/c;->t:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public E(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3
    invoke-direct {p0}, Lmiui/app/c;->B()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lmiui/app/c;->n:I

    :goto_0
    return-void
.end method

.method public F(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiui/app/c;->w:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    invoke-direct {p0}, Lmiui/app/c;->B()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lmiui/app/c;->o:I

    :goto_0
    return-void
.end method

.method public G(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lmiui/app/c;->s:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/app/c;->l:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lmiui/app/c;->B()V

    return-void
.end method

.method public I(Ljava/text/NumberFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/app/c;->m:Ljava/text/NumberFormat;

    .line 2
    invoke-direct {p0}, Lmiui/app/c;->B()V

    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiui/app/c;->k:I

    return-void
.end method

.method public K(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 3
    invoke-direct {p0}, Lmiui/app/c;->B()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lmiui/app/c;->p:I

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lmiui/app/c;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lmiui/app/c;->u:Ljava/lang/CharSequence;

    .line 4
    :cond_0
    iget-object p0, p0, Lmiui/app/c;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lmiui/app/c;->u:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3
    iget v2, p0, Lmiui/app/c;->k:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 4
    new-instance v2, Lmiui/app/c$a;

    invoke-direct {v2, p0}, Lmiui/app/c$a;-><init>(Lmiui/app/c;)V

    iput-object v2, p0, Lmiui/app/c;->x:Landroid/os/Handler;

    const/16 v2, 0xd

    const v4, 0x1090030

    .line 5
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x102040e

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/c;->j:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/16 v2, 0x12

    const v4, 0x10900e0

    .line 7
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v2, 0x102000d

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    const v2, 0x102000b

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/c;->i:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0, v0}, Lmiui/app/b;->o(Landroid/view/View;)V

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    iget v0, p0, Lmiui/app/c;->n:I

    if-lez v0, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Lmiui/app/c;->E(I)V

    .line 14
    :cond_1
    iget v0, p0, Lmiui/app/c;->o:I

    if-lez v0, :cond_2

    .line 15
    invoke-virtual {p0, v0}, Lmiui/app/c;->F(I)V

    .line 16
    :cond_2
    iget v0, p0, Lmiui/app/c;->p:I

    if-lez v0, :cond_3

    .line 17
    invoke-virtual {p0, v0}, Lmiui/app/c;->K(I)V

    .line 18
    :cond_3
    iget v0, p0, Lmiui/app/c;->q:I

    if-lez v0, :cond_4

    .line 19
    invoke-virtual {p0, v0}, Lmiui/app/c;->x(I)V

    .line 20
    :cond_4
    iget v0, p0, Lmiui/app/c;->r:I

    if-lez v0, :cond_5

    .line 21
    invoke-virtual {p0, v0}, Lmiui/app/c;->y(I)V

    .line 22
    :cond_5
    iget-object v0, p0, Lmiui/app/c;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p0, v0}, Lmiui/app/c;->G(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_6
    iget-object v0, p0, Lmiui/app/c;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p0, v0}, Lmiui/app/c;->D(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_7
    iget-object v0, p0, Lmiui/app/c;->u:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p0, v0}, Lmiui/app/c;->n(Ljava/lang/CharSequence;)V

    .line 28
    :cond_8
    iget-boolean v0, p0, Lmiui/app/c;->v:Z

    invoke-virtual {p0, v0}, Lmiui/app/c;->C(Z)V

    .line 29
    invoke-direct {p0}, Lmiui/app/c;->B()V

    .line 30
    invoke-super {p0, p1}, Lmiui/app/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiui/app/c;->w:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiui/app/c;->w:Z

    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lmiui/app/c;->n:I

    return p0
.end method

.method public v()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lmiui/app/c;->o:I

    return p0
.end method

.method public w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lmiui/app/c;->p:I

    return p0
.end method

.method public x(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 3
    invoke-direct {p0}, Lmiui/app/c;->B()V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lmiui/app/c;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/c;->q:I

    :goto_0
    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/c;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 3
    invoke-direct {p0}, Lmiui/app/c;->B()V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lmiui/app/c;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/c;->r:I

    :goto_0
    return-void
.end method
