.class public Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;
.super Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;
.source "FragmentGenWatermark.java"


# static fields
.field public static final FRAGMENT_INFO:I = 0x10000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;-><init>()V

    return-void
.end method


# virtual methods
.method public getWatermarkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/android/camera/aiwatermark/data/GeneralWatermark;

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/GeneralWatermark;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/GeneralWatermark;->getForManual()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
