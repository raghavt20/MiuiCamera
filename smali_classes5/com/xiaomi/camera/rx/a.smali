.class public final synthetic Lcom/xiaomi/camera/rx/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Lcom/xiaomi/camera/rx/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/rx/a;

    invoke-direct {v0}, Lcom/xiaomi/camera/rx/a;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/rx/a;->a:Lcom/xiaomi/camera/rx/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/camera/rx/CameraSchedulers;->a(Ljava/lang/Runnable;)V

    return-void
.end method
