.class public abstract Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;
.super Ljava/lang/Object;
.source "NormalTask.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mIsCanceled:Z

.field private mType:Ljava/lang/String;

.field protected taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mHandler:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->taskId:Ljava/lang/String;

    const-string p1, "NORMAL"

    .line 4
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mHandler:Landroid/os/Handler;

    .line 7
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->taskId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mIsCanceled:Z

    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public isCanceled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mIsCanceled:Z

    return p0
.end method

.method protected sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->taskId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->setTaskID(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 3
    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
