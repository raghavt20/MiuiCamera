.class Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;
.super Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;
.source "DefaultEffectFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;->fetchEffect(Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;)Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
        "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;

.field final synthetic val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .line 1
    invoke-virtual {p0, p0}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->onStart(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    .line 4
    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getDownloadUrl()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    .line 5
    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getDownloadUrl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getFileUrl()Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectUtils;->isUrlModelEmpty(Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getDownloadUrl()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    new-instance v0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/16 v1, 0x2711

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->onFailed(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    goto/16 :goto_5

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    invoke-virtual {v3}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getDownloadUrl()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getUnzipPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    invoke-virtual {v6}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getEffectDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->setZipPath(Ljava/lang/String;)V

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    invoke-virtual {v6}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getEffectDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->setUnzipPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 14
    :cond_3
    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_0
    move-exception v5

    .line 17
    :try_start_2
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    .line 18
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-object v5, v4

    .line 19
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;

    invoke-static {v6}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;->access$000(Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;)Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher$1;->val$arguments:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;

    invoke-virtual {v7}, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->getDownloadUrl()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getZipPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectUtils;->download(Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 20
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getZipPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getUnzipPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/ugc/effectmanager/common/utils/FileUtils;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v6, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    invoke-direct {v6, v0, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, p0, v6}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->onResponse(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_3

    :catch_3
    move-exception v5

    :goto_3
    add-int/lit8 v6, v2, -0x1

    if-ne v1, v6, :cond_4

    .line 22
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    new-instance v1, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    invoke-direct {v1, v5}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(Ljava/lang/Exception;)V

    const-string v2, ""

    .line 24
    invoke-virtual {v1, v3, v2, v4}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->setTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getUnzipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/ugc/effectmanager/common/utils/FileUtils;->removeDir(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p0, v1}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->onFailed(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 27
    :cond_5
    :goto_4
    new-instance v0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/16 v1, 0x2713

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->onFailed(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    .line 28
    :cond_6
    :goto_5
    invoke-virtual {p0, p0}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->onFinally(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V

    return-void
.end method
