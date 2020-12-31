.class public Lmiui/app/a$a$c;
.super Ljava/lang/Object;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiui/app/a$a$c;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lmiui/app/a$a$c;->b:I

    .line 4
    iput p3, p0, Lmiui/app/a$a$c;->c:I

    return-void
.end method
