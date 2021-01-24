.class public final synthetic Lcom/android/camera/upgrade/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/camera/upgrade/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/upgrade/a;

    invoke-direct {v0}, Lcom/android/camera/upgrade/a;-><init>()V

    sput-object v0, Lcom/android/camera/upgrade/a;->a:Lcom/android/camera/upgrade/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/camera/upgrade/UpgradeManager;->a()V

    return-void
.end method
