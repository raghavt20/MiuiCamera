.class public Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source "SimpleNativeResourceInfoListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/resource/BaseResourceList;",
        ">",
        "Lcom/android/camera/resource/BaseObservableRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PREFIX_CLOUD_RESOURCE:Ljava/lang/String; = "https://"

.field private static final PREFIX_EXTERNAL_RESOURCE:Ljava/lang/String; = "sdcard/"

.field private static final PREFIX_NATIVE_RESOURCE:Ljava/lang/String; = "assets://"


# instance fields
.field private mAssetName:Ljava/lang/String;

.field private mOutPutFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->mAssetName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->mOutPutFolder:Ljava/lang/String;

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/Scanner;

    invoke-direct {p0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p1, "\\A"

    invoke-virtual {p0, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private decompressNativeResource(Landroid/content/Context;Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p2, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    const-string v0, "assets://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p2, p3}, Lcom/android/camera/resource/BaseResourceItem;->simpleVerification(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2, p3}, Lcom/android/camera/resource/BaseResourceItem;->onDecompressFinished(Ljava/lang/String;)V

    return-void

    :cond_0
    const p4, 0x8000

    .line 5
    invoke-static {p1, p0, p3, p4}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p2, p3}, Lcom/android/camera/resource/BaseResourceItem;->onDecompressFinished(Ljava/lang/String;)V

    return-void
.end method

.method private decompressSdcardResource(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p3, p0}, Lcom/android/camera/resource/BaseResourceItem;->onDecompressFinished(Ljava/lang/String;)V

    return-void
.end method

.method private getAssetCache(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public decompressResource(Landroid/content/Context;Lcom/android/camera/resource/BaseResourceList;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/resource/BaseResourceList;->getResourceList()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/resource/BaseResourceItem;

    .line 3
    iget-object v1, v0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    const-string v2, "assets://"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->decompressNativeResource(Landroid/content/Context;Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "sdcard/"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->decompressSdcardResource(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method protected scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Class;Lcom/android/camera/resource/BaseResourceList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/ResponseListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->mAssetName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->getAssetCache(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/resource/BaseObservableRequest;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/android/camera/resource/BaseResourceList;

    :goto_0
    const/4 p2, 0x2

    const/4 v2, 0x0

    if-nez p3, :cond_1

    .line 5
    invoke-interface {p1, p2, v2, v2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3, v3}, Lcom/android/camera/resource/BaseResourceList;->parseInitialData(Lorg/json/JSONObject;)V

    .line 8
    invoke-virtual {p3, v3}, Lcom/android/camera/resource/BaseResourceList;->createResourcesList(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x1

    .line 9
    iget-object v1, p3, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    .line 10
    invoke-virtual {p3}, Lcom/android/camera/resource/BaseResourceList;->getLocalVersion()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {p3, v1}, Lcom/android/camera/resource/BaseResourceList;->setLocalVersion(Ljava/lang/String;)V

    move p2, v4

    .line 13
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->mOutPutFolder:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 14
    iget-object v1, p0, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->mOutPutFolder:Ljava/lang/String;

    invoke-virtual {p0, v0, p3, v1, p2}, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->decompressResource(Landroid/content/Context;Lcom/android/camera/resource/BaseResourceList;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    invoke-interface {p1, p3, v4}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p2, 0x3

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0, v2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0, v2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/android/camera/resource/BaseResourceList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/resource/SimpleNativeResourceInfoListRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Class;Lcom/android/camera/resource/BaseResourceList;)V

    return-void
.end method
