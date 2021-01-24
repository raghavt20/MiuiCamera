.class public final synthetic Lcom/android/camera/module/C;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/module/CloneModule;

.field public final synthetic b:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/C;->a:Lcom/android/camera/module/CloneModule;

    iput-object p2, p0, Lcom/android/camera/module/C;->b:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/C;->a:Lcom/android/camera/module/CloneModule;

    iget-object p0, p0, Lcom/android/camera/module/C;->b:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/CloneModule;->b(Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V

    return-void
.end method
