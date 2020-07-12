.class public Lmiui/app/c$a$a;
.super Ljava/lang/Object;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public icon:I

.field public id:I

.field public label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiui/app/c$a$a;->label:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lmiui/app/c$a$a;->icon:I

    .line 4
    iput p3, p0, Lmiui/app/c$a$a;->id:I

    return-void
.end method
