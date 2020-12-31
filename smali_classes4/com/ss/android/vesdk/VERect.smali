.class public Lcom/ss/android/vesdk/VERect;
.super Ljava/lang/Object;
.source "VERect.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/android/vesdk/VERect;->x:I

    .line 3
    iput v0, p0, Lcom/ss/android/vesdk/VERect;->y:I

    const/16 v0, 0x2d0

    .line 4
    iput v0, p0, Lcom/ss/android/vesdk/VERect;->width:I

    const/16 v0, 0x500

    .line 5
    iput v0, p0, Lcom/ss/android/vesdk/VERect;->height:I

    .line 6
    iput p1, p0, Lcom/ss/android/vesdk/VERect;->x:I

    .line 7
    iput p2, p0, Lcom/ss/android/vesdk/VERect;->y:I

    .line 8
    iput p3, p0, Lcom/ss/android/vesdk/VERect;->width:I

    .line 9
    iput p4, p0, Lcom/ss/android/vesdk/VERect;->height:I

    return-void
.end method
