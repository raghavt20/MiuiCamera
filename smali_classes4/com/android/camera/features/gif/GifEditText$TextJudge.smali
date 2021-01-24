.class Lcom/android/camera/features/gif/GifEditText$TextJudge;
.super Ljava/lang/Object;
.source "GifEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextJudge"
.end annotation


# instance fields
.field private isSingleLine:Z

.field private textNative:Ljava/lang/StringBuilder;

.field private textShow:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/camera/features/gif/GifEditText;


# direct methods
.method constructor <init>(Lcom/android/camera/features/gif/GifEditText;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->isSingleLine:Z

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->textShow:Ljava/lang/StringBuilder;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->textNative:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/features/gif/GifEditText$TextJudge;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->textShow:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/features/gif/GifEditText$TextJudge;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->textNative:Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public getTextNative()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->textNative:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextShow()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->textShow:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSingleLine()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->isSingleLine:Z

    return p0
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifEditText$TextJudge;->isSingleLine:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " textShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextShow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   textNative:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextNative()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
