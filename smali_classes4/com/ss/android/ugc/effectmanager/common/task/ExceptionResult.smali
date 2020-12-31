.class public Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
.super Ljava/lang/Object;
.source "ExceptionResult.java"


# instance fields
.field private errorCode:I

.field private exception:Ljava/lang/Exception;

.field private msg:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private selectedHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 8
    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 9
    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/common/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 3
    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 4
    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/common/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 14
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    .line 18
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/model/NetException;

    if-eqz p2, :cond_0

    .line 19
    move-object p2, p1

    check-cast p2, Lcom/ss/android/ugc/effectmanager/common/model/NetException;

    invoke-virtual {p2}, Lcom/ss/android/ugc/effectmanager/common/model/NetException;->getStatus_code()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto/16 :goto_1

    .line 21
    :cond_0
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;

    if-eqz p2, :cond_1

    .line 22
    move-object p2, p1

    check-cast p2, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;

    invoke-virtual {p2}, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;->getStatusCode()I

    move-result p2

    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto/16 :goto_1

    .line 24
    :cond_1
    instance-of p2, p1, Lorg/json/JSONException;

    if-eqz p2, :cond_2

    const/16 p2, 0x2718

    .line 25
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto/16 :goto_1

    .line 27
    :cond_2
    instance-of p2, p1, Landroid/accounts/NetworkErrorException;

    if-eqz p2, :cond_3

    const/16 p2, 0x2712

    .line 28
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_3
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/UrlNotExistException;

    if-eqz p2, :cond_4

    const/16 p2, 0x271f

    .line 31
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_4
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/UnzipException;

    if-eqz p2, :cond_5

    const/16 p2, 0x271d

    .line 34
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_5
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/MD5Exception;

    if-eqz p2, :cond_6

    const/16 p2, 0x271a

    .line 37
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto :goto_1

    .line 39
    :cond_6
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_7

    const/16 p2, 0x271c

    .line 40
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_9

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "network unavailable"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x271b

    .line 43
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    goto :goto_0

    :cond_8
    const/16 p2, 0x2715

    .line 44
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 45
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    .line 47
    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/common/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    return p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public setTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    const/16 v1, 0x7d

    const-string v2, ", remoteIp=\'"

    const-string v3, ", selectedHost=\'"

    const-string v4, ", requestUrl=\'"

    const-string v5, ", msg=\'"

    const-string v6, "ExceptionResult{errorCode="

    const/16 v7, 0x27

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
