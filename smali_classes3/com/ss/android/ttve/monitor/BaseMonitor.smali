.class public Lcom/ss/android/ttve/monitor/BaseMonitor;
.super Ljava/lang/Object;
.source "BaseMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseMonitor"

.field public static sMonitor:Lcom/ss/android/ttve/monitor/IMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static monitorVELog(Lcom/ss/android/ttve/monitor/IMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7
    sget-object p0, Lcom/ss/android/ttve/monitor/BaseMonitor;->TAG:Ljava/lang/String;

    const-string p1, "No monitor callback, return"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 8
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "service"

    .line 13
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 14
    invoke-interface {p0, p1, v1}, Lcom/ss/android/ttve/monitor/IMonitor;->monitorLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 15
    :catch_0
    sget-object p0, Lcom/ss/android/ttve/monitor/BaseMonitor;->TAG:Ljava/lang/String;

    const-string p1, "No monitor callback, skip"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static monitorVELog(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/BaseMonitor;->monitorVELog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static monitorVELog(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/BaseMonitor;->monitorVELog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static monitorVELog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/monitor/BaseMonitor;->monitorVELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static monitorVELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    .line 6
    sget-object v0, Lcom/ss/android/ttve/monitor/BaseMonitor;->sMonitor:Lcom/ss/android/ttve/monitor/IMonitor;

    invoke-static {v0, p0, p1, p2}, Lcom/ss/android/ttve/monitor/BaseMonitor;->monitorVELog(Lcom/ss/android/ttve/monitor/IMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static register(Lcom/ss/android/ttve/monitor/IMonitor;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/android/ttve/monitor/BaseMonitor;->sMonitor:Lcom/ss/android/ttve/monitor/IMonitor;

    return-void
.end method

.method public static unRegister()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/ss/android/ttve/monitor/BaseMonitor;->sMonitor:Lcom/ss/android/ttve/monitor/IMonitor;

    return-void
.end method
