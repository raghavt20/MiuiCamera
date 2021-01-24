.class Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderPictureOnResultListenerInvoker"
.end annotation


# instance fields
.field private mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

.field private mRet:I

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    .line 3
    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;->mState:I

    .line 4
    iput p3, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;->mRet:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;->mState:I

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;->mRet:I

    invoke-interface {v0, v1, p0}, Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;->onResult(II)V

    return-void
.end method
