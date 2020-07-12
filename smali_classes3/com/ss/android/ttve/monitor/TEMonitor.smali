.class public Lcom/ss/android/ttve/monitor/TEMonitor;
.super Ljava/lang/Object;
.source "TEMonitor.java"


# static fields
.field public static MONITOR_ACTION_CANCEL:I = 0x0

.field public static MONITOR_ACTION_COMPILE:I = 0x1

.field public static final MONITOR_COMPOSITION:I = 0x1

.field public static final MONITOR_RECORD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TEMonitor"

.field private static sMonitor:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/ttve/monitor/IMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static sVid:Ljava/lang/String; = ""


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

.method public static clear()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativeReset()V

    return-void
.end method

.method public static clearWithType(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativeReset(I)V

    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIsComplete(Lorg/json/JSONObject;)I
    .locals 3

    const-string v0, "completed"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TEMonitor"

    const-string v2, "get complete filed error!"

    .line 3
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativeInit()V

    return-void
.end method

.method public static initStats(I)V
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const-string v2, "te_record_err_code"

    .line 1
    invoke-static {p0, v2, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    const-string p0, "te_edit_err_code"

    .line 2
    invoke-static {v2, p0, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const-string p0, "te_composition_err_code"

    .line 3
    invoke-static {v2, p0, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static monitorTELog(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static monitorTELog(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static monitorTELog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static monitorTELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    .line 10
    sget-object v0, Lcom/ss/android/ttve/monitor/TEMonitor;->sMonitor:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static monitorTELog(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/ttve/monitor/IMonitor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ")Z"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "service"

    .line 13
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "iesve_veeditor_record_finish"

    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "iesve_veeditor_composition_finish"

    .line 15
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p3, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->putAll(Ljava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    invoke-static {p2, p3, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->putAll(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_1
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportMonitor(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "TEMonitor"

    const-string p1, "No monitor callback, skip"

    .line 19
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static monitorTELogJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "service"

    .line 2
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4
    :goto_1
    sget-object p1, Lcom/ss/android/ttve/monitor/TEMonitor;->sMonitor:Ljava/lang/ref/WeakReference;

    invoke-static {p1, p0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportMonitor(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static monitorVELog(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "service"

    const-string v1, "TEMonitor"

    if-nez p0, :cond_0

    const-string p0, "monitorVELog error, param is null"

    .line 1
    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, ""

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v0, "iesve_veeditor_record_finish"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "iesve_veeditor_composition_finish"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativeGetMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    :try_start_1
    invoke-static {v0, p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->putAll(Ljava/util/Map;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "merge monitor logs error"

    .line 9
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->getIsComplete(Lorg/json/JSONObject;)I

    .line 12
    sget-object v0, Lcom/ss/android/ttve/monitor/TEMonitor;->sMonitor:Ljava/lang/ref/WeakReference;

    const-string v1, "sdk_video_edit_compose"

    invoke-static {v0, v1, p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportMonitor(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static perfDouble(ILjava/lang/String;D)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEMonitor"

    const-string p1, "perfDouble: key is null"

    .line 5
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativePerfDouble(ILjava/lang/String;D)V

    return-void
.end method

.method public static perfDouble(Ljava/lang/String;D)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEMonitor"

    const-string p1, "perfDouble: key is null"

    .line 2
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativePerfDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public static perfLong(ILjava/lang/String;J)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEMonitor"

    const-string p1, "perfLong: key is null"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativePerfLong(ILjava/lang/String;J)V

    return-void
.end method

.method public static perfLong(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEMonitor"

    const-string p1, "perfLong: key is null"

    .line 2
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativePerfLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static perfRational(Ljava/lang/String;FF)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEMonitor"

    const-string p1, "perfLong: key is null"

    .line 2
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativePerfRational(Ljava/lang/String;FF)V

    return-void
.end method

.method public static perfString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEMonitor"

    const-string p1, "perfString: key is null"

    .line 5
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 6
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativePerfString(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static perfString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TEMonitor"

    const-string p1, "perfString: key is null"

    .line 2
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativePerfString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static putAll(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    const-string v2, "iesve_veeditor_record_finish"

    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "iesve_veeditor_composition_finish"

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitorKeys;->getType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 20
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitorNewKeys;->getType(Ljava/lang/String;)I

    move-result v2

    .line 21
    :goto_2
    sget v3, Lcom/ss/android/ttve/monitor/TEMonitorKeys;->TYPE_INT:I

    const-string v4, "TEMonitor"

    if-ne v2, v3, :cond_2

    .line 22
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 23
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse int error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_2
    sget v3, Lcom/ss/android/ttve/monitor/TEMonitorKeys;->TYPE_DOUBLE:I

    if-ne v2, v3, :cond_3

    .line 26
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    .line 27
    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v1, "Parse float error"

    .line 28
    invoke-static {v4, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static putAll(Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/String;

    const-string v2, "iesve_"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/ss/android/medialib/log/VEMonitorKeys;->getType(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitorKeys;->getType(Ljava/lang/String;)I

    move-result v2

    .line 6
    :goto_1
    sget v3, Lcom/ss/android/ttve/monitor/TEMonitorKeys;->TYPE_INT:I

    const-string v4, "TEMonitor"

    if-ne v2, v3, :cond_1

    .line 7
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse int error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    sget v3, Lcom/ss/android/ttve/monitor/TEMonitorKeys;->TYPE_DOUBLE:I

    if-ne v2, v3, :cond_2

    .line 11
    :try_start_1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    .line 12
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v1, "Parse float error"

    .line 13
    invoke-static {v4, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static register(Lcom/ss/android/ttve/monitor/IMonitor;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ss/android/ttve/monitor/TEMonitor;->sMonitor:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static report(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativeMonitorPerf(I)V

    return-void
.end method

.method private static reportMonitor(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/ttve/monitor/IMonitor;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "service"

    const-string v1, "sdk_video_edit_compose"

    if-eqz p2, :cond_4

    .line 1
    invoke-static {p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->getIsComplete(Lorg/json/JSONObject;)I

    move-result v2

    .line 2
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "iesve_veeditor_record_finish"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "iesve_veeditor_composition_finish"

    const-string v4, ""

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    :cond_1
    sget-object v0, Lcom/ss/android/ttve/monitor/TEMonitor;->sVid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ss/android/ttve/monitor/TEMonitor;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/TEMonitor;->sVid:Ljava/lang/String;

    :cond_2
    const-string v0, "te_record_compose_vid"

    .line 7
    sget-object v5, Lcom/ss/android/ttve/monitor/TEMonitor;->sVid:Ljava/lang/String;

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    sput-object v4, Lcom/ss/android/ttve/monitor/TEMonitor;->sVid:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 11
    :cond_5
    :goto_0
    invoke-static {v1, v2, p2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V

    if-eqz p0, :cond_6

    .line 12
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/monitor/IMonitor;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/ttve/monitor/IMonitor;->monitorLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "TEMonitor"

    const-string p2, "Something happened when monitor log"

    .line 14
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public static reportWithType(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitorInvoker;->nativeMonitorPerfWithType(I)V

    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public static setSDKMonitorEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setEnable(Z)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setUserId(Ljava/lang/String;)V

    return-void
.end method
