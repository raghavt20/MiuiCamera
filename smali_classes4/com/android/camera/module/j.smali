.class public final synthetic Lcom/android/camera/module/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/j;->a:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-boolean p2, p0, Lcom/android/camera/module/j;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/j;->a:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget-boolean p0, p0, Lcom/android/camera/module/j;->b:Z

    invoke-static {v0, p0}, Lcom/android/camera/module/Camera2Module;->D(Lcom/android/camera/protocol/ModeProtocol$TopAlert;Z)V

    return-void
.end method
