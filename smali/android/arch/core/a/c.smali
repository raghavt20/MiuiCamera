.class public Landroid/arch/core/a/c;
.super Landroid/arch/core/a/e;
.source "ArchTaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final Ea:Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sInstance:Landroid/arch/core/a/c;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private Ca:Landroid/arch/core/a/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private Da:Landroid/arch/core/a/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/arch/core/a/a;

    invoke-direct {v0}, Landroid/arch/core/a/a;-><init>()V

    sput-object v0, Landroid/arch/core/a/c;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Landroid/arch/core/a/b;

    invoke-direct {v0}, Landroid/arch/core/a/b;-><init>()V

    sput-object v0, Landroid/arch/core/a/c;->Ea:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/arch/core/a/e;-><init>()V

    .line 2
    new-instance v0, Landroid/arch/core/a/d;

    invoke-direct {v0}, Landroid/arch/core/a/d;-><init>()V

    iput-object v0, p0, Landroid/arch/core/a/c;->Da:Landroid/arch/core/a/e;

    .line 3
    iget-object v0, p0, Landroid/arch/core/a/c;->Da:Landroid/arch/core/a/e;

    iput-object v0, p0, Landroid/arch/core/a/c;->Ca:Landroid/arch/core/a/e;

    return-void
.end method

.method public static getInstance()Landroid/arch/core/a/c;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Landroid/arch/core/a/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroid/arch/core/a/c;

    invoke-direct {v1}, Landroid/arch/core/a/c;-><init>()V

    sput-object v1, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/arch/core/a/c;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static oa()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/arch/core/a/c;->Ea:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/arch/core/a/e;)V
    .locals 0
    .param p1    # Landroid/arch/core/a/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/arch/core/a/c;->Da:Landroid/arch/core/a/e;

    :cond_0
    iput-object p1, p0, Landroid/arch/core/a/c;->Ca:Landroid/arch/core/a/e;

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/a/c;->Ca:Landroid/arch/core/a/e;

    invoke-virtual {p0, p1}, Landroid/arch/core/a/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/a/c;->Ca:Landroid/arch/core/a/e;

    invoke-virtual {p0, p1}, Landroid/arch/core/a/e;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/a/c;->Ca:Landroid/arch/core/a/e;

    invoke-virtual {p0}, Landroid/arch/core/a/e;->isMainThread()Z

    move-result p0

    return p0
.end method
