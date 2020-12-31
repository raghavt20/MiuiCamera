.class public Lmiui/cloud/backup/data/a$a;
.super Ljava/lang/Object;
.source "PrefsBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/backup/data/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiui/cloud/backup/data/a$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lmiui/cloud/backup/data/a$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lmiui/cloud/backup/data/a$a;->c:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lmiui/cloud/backup/data/a$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/a$a;
    .locals 3

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)Lmiui/cloud/backup/data/a$a;
    .locals 2

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/a$a;
    .locals 3

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;I)Lmiui/cloud/backup/data/a$a;
    .locals 2

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/a$a;
    .locals 3

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;J)Lmiui/cloud/backup/data/a$a;
    .locals 2

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/a$a;
    .locals 3

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/a$a;
    .locals 2

    .line 1
    new-instance v0, Lmiui/cloud/backup/data/a$a;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p2}, Lmiui/cloud/backup/data/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/cloud/backup/data/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/cloud/backup/data/a$a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/cloud/backup/data/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lmiui/cloud/backup/data/a$a;->c:Ljava/lang/Class;

    return-object p0
.end method
