.class public Lcom/google/android/apps/lens/library/base/LensServiceBridge;
.super Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback$Stub;
.source "LensServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final BIND_INTENT_ACTION:Ljava/lang/String; = "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

.field private static final DEBUG:Z = false

.field private static final LENS_CLIENT_SESSION_TYPE:Ljava/lang/String; = "LENS_SERVICE_SESSION"

.field private static final TAG:Ljava/lang/String; = "LensServiceBridge"

.field private static final TARGET_SERVICE_API_VERSION:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private lensService:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile lensServiceSession:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private serviceApiVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->context:Landroid/content/Context;

    return-void
.end method

.method private beginLensSession()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensService:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;-><init>()V

    const/16 v1, 0x15c

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;->setEventId(I)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEvent;->lensServiceClientEventData:Lcom/google/protobuf/nano/Extension;

    new-instance v2, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;

    invoke-direct {v2}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;-><init>()V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->setTargetServiceApiVersion(I)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/ExtendableMessageNano;->setExtension(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/google/protobuf/nano/ExtendableMessageNano;

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensService:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    const-string v2, "LENS_SERVICE_SESSION"

    .line 8
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 9
    invoke-interface {v1, v2, p0, v0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;->beginSession(Ljava/lang/String;Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback;[B)Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensServiceSession:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LensServiceBridge"

    const-string v1, "Unable to begin Lens service session."

    .line 10
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private endLensSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensService:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensServiceSession:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;-><init>()V

    const/16 v1, 0x159

    invoke-virtual {v0, v1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;->setEventId(I)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensServiceSession:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;->onGenericClientEvent([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LensServiceBridge"

    const-string v1, "Unable to end Lens service session."

    .line 4
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureOnMainThread()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This should be running on the main thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isLensSessionReady()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->serviceApiVersion:I

    .line 2
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensService:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensServiceSession:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bindService()Z
    .locals 5

    const-string v0, "LensServiceBridge"

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->ensureOnMainThread()V

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->context:Landroid/content/Context;

    const/16 v4, 0x41

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Unable to bind Lens service."

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Unable to bind Lens service due to security exception. Maybe the service is not available yet."

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->ensureOnMainThread()V

    const-string p1, "LensServiceBridge"

    const-string v0, "Lens service connected."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p2}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensService:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    .line 4
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->beginLensSession()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->ensureOnMainThread()V

    const-string p0, "LensServiceBridge"

    const-string p1, "Lens service disconnected."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceEvent([BLcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedServiceEvent",
            "systemParcelableWrapper"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->parseFrom([B)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->getEventId()I

    move-result p2

    const/16 v0, 0xf0

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEvent;->lensServiceEventData:Lcom/google/protobuf/nano/Extension;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/ExtendableMessageNano;->hasExtension(Lcom/google/protobuf/nano/Extension;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object p2, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEvent;->lensServiceEventData:Lcom/google/protobuf/nano/Extension;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/ExtendableMessageNano;->getExtension(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;->getServiceApiVersion()I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->serviceApiVersion:I

    :cond_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "LensServiceBridge"

    const-string p2, "Unable to parse the protobuf."

    .line 7
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public prewarmLensActivity()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->ensureOnMainThread()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->isLensSessionReady()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "LensServiceBridge"

    if-nez v0, :cond_0

    const-string p0, "Lens session is not ready for prewarm."

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;-><init>()V

    const/16 v3, 0x15b

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;->setEventId(I)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventProto;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensServiceSession:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;->onGenericClientEvent([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Unable to send prewarm signal."

    .line 7
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public unbindService()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->ensureOnMainThread()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->endLensSession()V

    .line 3
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensService:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    .line 5
    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->lensServiceSession:Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->serviceApiVersion:I

    return-void
.end method
