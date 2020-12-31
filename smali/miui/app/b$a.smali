.class public Lmiui/app/b$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lmiui/app/a$a;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lmiui/app/b;->g(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/b$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lmiui/app/a$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lmiui/app/b;->g(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lmiui/app/a$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    const/4 p1, 0x4

    if-lt p2, p1, :cond_0

    const/4 p1, 0x7

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, v0, Lmiui/app/a$a;->e:Z

    .line 5
    iput p2, p0, Lmiui/app/b$a;->b:I

    return-void
.end method


# virtual methods
.method public A(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lmiui/app/a$a;->b:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public B(Landroid/widget/AdapterView$OnItemSelectedListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public C(Landroid/content/DialogInterface$OnKeyListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public D(Landroid/content/DialogInterface$OnShowListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lmiui/app/a$a;->c:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public E(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public F(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public G(IILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public H(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 2
    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 4
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public I(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public J([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public K(I)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public L(Ljava/lang/CharSequence;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public M(I)Lmiui/app/b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    return-object p0
.end method

.method public N(Landroid/view/View;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    return-object p0
.end method

.method public O()Lmiui/app/b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiui/app/b$a;->c()Lmiui/app/b;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public a(III)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lmiui/app/b$a;->b(Ljava/lang/CharSequence;II)Lmiui/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;II)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lmiui/app/a$a;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lmiui/app/a$a;->d:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v0, v0, Lmiui/app/a$a;->d:Ljava/util/ArrayList;

    new-instance v1, Lmiui/app/a$a$c;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/a$a$c;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lmiui/app/b;
    .locals 3

    .line 1
    new-instance v0, Lmiui/app/b;

    iget-object v1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiui/app/b$a;->b:I

    invoke-direct {v0, v1, v2}, Lmiui/app/b;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    invoke-static {v0}, Lmiui/app/b;->a(Lmiui/app/b;)Lmiui/app/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/a$a;->apply(Lcom/android/internal/app/AlertController;)V

    .line 3
    iget-object v1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    :cond_0
    iget-object v1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    iget-object v1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v1, Lmiui/app/a$a;->b:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iget-object v1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v1, Lmiui/app/a$a;->c:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 9
    iget-object p0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public e(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public f(Z)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public g(ZLjava/lang/CharSequence;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-boolean p1, v0, Lmiui/app/a$a;->f:Z

    .line 2
    iput-object p2, v0, Lmiui/app/a$a;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 2
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 3
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public i(Landroid/view/View;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public j(I)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public k(Landroid/graphics/drawable/Drawable;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public l(I)Lmiui/app/b$a;
    .locals 0

    return-object p0
.end method

.method public m(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public n([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public o(I)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p(Ljava/lang/CharSequence;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public q(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 3
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public r(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public s(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 2
    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 4
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public t([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public u(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public v(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public w(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public x(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public y(Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lmiui/app/a$a;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public z(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b$a;->a:Lmiui/app/a$a;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method
