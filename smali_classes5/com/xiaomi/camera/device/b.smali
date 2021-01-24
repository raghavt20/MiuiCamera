.class public final synthetic Lcom/xiaomi/camera/device/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic a:Lcom/xiaomi/camera/device/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/device/b;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/b;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/device/b;->a:Lcom/xiaomi/camera/device/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraService;->a(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
