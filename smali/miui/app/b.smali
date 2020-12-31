.class public Lmiui/app/b;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/b$a;
    }
.end annotation


# static fields
.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7


# instance fields
.field private a:Lmiui/app/a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lmiui/app/b;->g(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/b;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    invoke-static {p1, p2}, Lmiui/app/b;->g(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance p2, Lmiui/app/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lmiui/app/a;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lmiui/app/b;->a:Lmiui/app/a;

    return-void
.end method

.method static synthetic a(Lmiui/app/b;)Lmiui/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    return-object p0
.end method

.method static g(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x1010309

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_1
    const p1, 0x1030417

    goto :goto_0

    :cond_2
    const p1, 0x1030410

    :goto_0
    return p1
.end method


# virtual methods
.method public b(I)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0, p1}, Lmiui/app/a;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public c()[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0}, Lmiui/app/a;->a()[Z

    move-result-object p0

    return-object p0
.end method

.method public d()Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0}, Lmiui/app/a;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public e()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0}, Lmiui/app/a;->b()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public f()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0}, Lmiui/app/a;->c()Z

    move-result p0

    return p0
.end method

.method public h(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/app/a;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public i(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lmiui/app/a;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public j(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0, p1}, Lmiui/app/a;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0, p1}, Lmiui/app/a;->setIcon(I)V

    return-void
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0, p1}, Lmiui/app/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m(I)V
    .locals 0

    return-void
.end method

.method public n(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0, p1}, Lmiui/app/a;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0, p1}, Lmiui/app/a;->setView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0}, Lmiui/app/a;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {v0, p1, p2}, Lmiui/app/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {v0, p1, p2}, Lmiui/app/a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lmiui/app/b;->a:Lmiui/app/a;

    invoke-virtual {p0, p1}, Lmiui/app/a;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
