.class public final synthetic Lcom/android/camera/module/A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Hi:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/A;->Hi:Lcom/android/camera/module/MiLiveModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/A;->Hi:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->Tf()V

    return-void
.end method
