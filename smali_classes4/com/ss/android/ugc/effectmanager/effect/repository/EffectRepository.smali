.class public Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;
.super Ljava/lang/Object;
.source "EffectRepository.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/common/WeakHandler$IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;
    }
.end annotation


# instance fields
.field private mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

.field private mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            "Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mTaskMap:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    .line 5
    new-instance p1, Lcom/ss/android/ugc/effectmanager/common/WeakHandler;

    invoke-direct {p1, p0}, Lcom/ss/android/ugc/effectmanager/common/WeakHandler;-><init>(Lcom/ss/android/ugc/effectmanager/common/WeakHandler$IHandler;)V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelDownloadEffect(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;

    invoke-interface {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    if-eqz p0, :cond_1

    const/16 v0, 0x16

    const-string v2, ""

    .line 7
    invoke-interface {p0, v2, p1, v0, v1}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;->updateEffectStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_1
    return-void
.end method

.method public downloadProviderEffectList(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadProviderEffectTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Landroid/os/Handler;)V

    .line 2
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchEffect(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Landroid/os/Handler;)V

    .line 2
    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    const-string v1, ""

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p2, v1, p1, v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;->updateEffectStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    .line 3
    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchEffectList(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    .line 2
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    const/16 v3, 0x15

    const/4 v4, 0x0

    const-string v5, ""

    invoke-interface {v2, v5, v1, v3, v4}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;->updateEffectStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, p2, p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchEffectListById(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListByIdsTask;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, p0, p2}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListByIdsTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchEffectListById(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object v0

    new-instance v7, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListByIdsTask;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    move-object v1, v7

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListByIdsTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;->getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x14

    invoke-interface {v3, v0, v1, v4, v2}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;->updateEffectStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1a

    invoke-interface {v4, v0, v1, v5, v3}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;->updateEffectStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectListTaskResult;

    if-eqz v1, :cond_4

    .line 12
    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectListTaskResult;

    .line 13
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectListTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v1

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectListTaskResult;->getEffectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v3, v0, v2}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;->updateEffectListStatus(Ljava/lang/String;Ljava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectListTaskResult;->getEffectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;->updateEffectListStatus(Ljava/lang/String;Ljava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    .line 16
    :cond_4
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    .line 17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;

    if-eqz v1, :cond_6

    .line 18
    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;

    .line 19
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object v2

    .line 21
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getDownloadProviderEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IDownloadProviderEffectListener;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IDownloadProviderEffectListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;)V

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IDownloadProviderEffectListener;->onFail(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    .line 24
    :cond_6
    :goto_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_7

    .line 25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    if-eqz v0, :cond_7

    .line 26
    check-cast p1, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    .line 27
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 28
    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;->getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;->onStart(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V

    :cond_7
    return-void
.end method

.method public setListener(Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository;->mListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;

    return-void
.end method
