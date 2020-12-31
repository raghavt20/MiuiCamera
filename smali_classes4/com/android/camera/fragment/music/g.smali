.class public final synthetic Lcom/android/camera/fragment/music/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/android/camera/fragment/music/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/music/g;

    invoke-direct {v0}, Lcom/android/camera/fragment/music/g;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/music/g;->a:Lcom/android/camera/fragment/music/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/fragment/music/MusicOperation;->a(Ljava/lang/String;)V

    return-void
.end method
