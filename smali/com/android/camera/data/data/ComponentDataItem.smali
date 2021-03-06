.class public final Lcom/android/camera/data/data/ComponentDataItem;
.super Ljava/lang/Object;
.source "ComponentDataItem.java"


# static fields
.field public static final RES_NULL:I = -0x1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public static final STRING_NULL:I = -0x1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# instance fields
.field public mDisplayNameRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public mDisplayNameStr:Ljava/lang/String;

.field public mIconDisabledRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconSelectedRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 9
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 10
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconDisabledRes:I

    .line 11
    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 12
    iput-object p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 3
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 4
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconDisabledRes:I

    .line 5
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 6
    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 15
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 16
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconDisabledRes:I

    .line 17
    iput-object p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComponentDataItem{mDisplayName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "mValue=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
