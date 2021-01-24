.class public final Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraData"
.end annotation


# instance fields
.field public mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public mCameraErrorOccurred:Z

.field public mCameraInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/CameraHandlerThread$CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mDisplayOrientation:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CameraData;-><init>()V

    return-void
.end method
