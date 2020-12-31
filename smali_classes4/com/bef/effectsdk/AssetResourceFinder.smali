.class public final Lcom/bef/effectsdk/AssetResourceFinder;
.super Ljava/lang/Object;
.source "AssetResourceFinder.java"

# interfaces
.implements Lcom/bef/effectsdk/ResourceFinder;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 3
    iput-object p2, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mDir:Ljava/lang/String;

    return-void
.end method

.method private static native nativeCreateAssetResourceFinder(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method private static native nativeReleaseAssetResourceFinder(J)V
.end method


# virtual methods
.method public createNativeResourceFinder(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object p0, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mDir:Ljava/lang/String;

    invoke-static {p1, p2, v0, p0}, Lcom/bef/effectsdk/AssetResourceFinder;->nativeCreateAssetResourceFinder(JLandroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public release(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/bef/effectsdk/AssetResourceFinder;->nativeReleaseAssetResourceFinder(J)V

    return-void
.end method
