.class public Lcom/android/camera/aiwatermark/data/WatermarkItem;
.super Ljava/lang/Object;
.source "WatermarkItem.java"


# instance fields
.field private mCoordinate:[I

.field private mCountry:I

.field private mHasMove:Z

.field private mKey:Ljava/lang/String;

.field private mLimitArea:Landroid/graphics/Rect;

.field private mLocation:I

.field private mResId:I

.field private mResRvItem:I

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    .line 6
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    .line 7
    iput v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    .line 8
    iput v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    .line 20
    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    .line 21
    iput v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    .line 22
    iput v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 23
    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    .line 25
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    .line 27
    iput-object p3, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    .line 29
    iput p5, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 14
    iput p6, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 12
    iput p7, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return-void
.end method


# virtual methods
.method public getCoordinate()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    return-object p0
.end method

.method public getCountry()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLimitArea()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLimitArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLocation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return p0
.end method

.method public getResId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    return p0
.end method

.method public getResRvItem()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    return p0
.end method

.method public hasMove()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    return p0
.end method

.method public setCountry(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return-void
.end method

.method public setHasMove(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLimitArea(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLimitArea:Landroid/graphics/Rect;

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    return-void
.end method

.method public setResRvItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatermarkItem: key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; text is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; res id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; location is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; country is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCountry()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCoordinate([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    return-void
.end method
