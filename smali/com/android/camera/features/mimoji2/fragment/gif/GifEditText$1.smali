.class Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;
.super Ljava/lang/Object;
.source "GifEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;->initEditTextParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

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
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;->getMaxGifHeight()Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    invoke-static {p2}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;->access$000(Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;)Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$ItfTextChanged;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    invoke-static {p2}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;->access$000(Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;)Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$ItfTextChanged;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$ItfTextChanged;->afterTextChanged(Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    invoke-static {p2}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;->access$100(Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;->access$102(Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;Z)Z

    .line 6
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$TextJudge;->getTextShow()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 8
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/gif/GifEditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method
