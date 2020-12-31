.class public final synthetic Lcom/android/camera/module/loader/camera2/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic a:Lcom/android/camera/module/loader/camera2/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/camera2/a;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/a;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/a;->a:Lcom/android/camera/module/loader/camera2/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/module/loader/camera2/Camera2Result;

    check-cast p2, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-static {p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->c(Lcom/android/camera/module/loader/camera2/Camera2Result;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p0

    return-object p0
.end method
