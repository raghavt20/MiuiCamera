.class Lcom/android/camera/features/gif/GifEditText$1;
.super Ljava/lang/Object;
.source "GifEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/gif/GifEditText;->initEditTextParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/gif/GifEditText;


# direct methods
.method constructor <init>(Lcom/android/camera/features/gif/GifEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifEditText;->getMaxGifHeight()Lcom/android/camera/features/gif/GifEditText$TextJudge;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-static {p2}, Lcom/android/camera/features/gif/GifEditText;->access$000(Lcom/android/camera/features/gif/GifEditText;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/camera/features/gif/GifEditText;->access$002(Lcom/android/camera/features/gif/GifEditText;Z)Z

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifEditText$TextJudge;->getTextShow()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 6
    iget-object p3, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-static {p2}, Lcom/android/camera/features/gif/GifEditText;->access$100(Lcom/android/camera/features/gif/GifEditText;)Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditText$1;->this$0:Lcom/android/camera/features/gif/GifEditText;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditText;->access$100(Lcom/android/camera/features/gif/GifEditText;)Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/features/gif/GifEditText$ItfTextChanged;->afterTextChanged(Lcom/android/camera/features/gif/GifEditText$TextJudge;)V

    :cond_1
    return-void
.end method
