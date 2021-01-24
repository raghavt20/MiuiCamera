.class public Lcom/ss/android/vesdk/VECherEffectParam;
.super Ljava/lang/Object;
.source "VECherEffectParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VECherEffectParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duration:[D

.field private length:I

.field private matrix:[Ljava/lang/String;

.field private segUseCher:[Z

.field private totalNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/vesdk/VECherEffectParam$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VECherEffectParam$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VECherEffectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[DI[Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ss/android/vesdk/VECherEffectParam;->matrix:[Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ss/android/vesdk/VECherEffectParam;->duration:[D

    .line 5
    iput p3, p0, Lcom/ss/android/vesdk/VECherEffectParam;->length:I

    .line 6
    iput-object p4, p0, Lcom/ss/android/vesdk/VECherEffectParam;->segUseCher:[Z

    .line 7
    array-length p1, p4

    iput p1, p0, Lcom/ss/android/vesdk/VECherEffectParam;->totalNum:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[D[Z)V
    .locals 1

    .line 1
    array-length v0, p1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ss/android/vesdk/VECherEffectParam;-><init>([Ljava/lang/String;[DI[Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/vesdk/VECherEffectParam;->duration:[D

    return-object p0
.end method

.method public getMatrix()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/vesdk/VECherEffectParam;->matrix:[Ljava/lang/String;

    return-object p0
.end method

.method public getSegUseCher()[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/vesdk/VECherEffectParam;->segUseCher:[Z

    return-object p0
.end method

.method public setDuration([D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/vesdk/VECherEffectParam;->duration:[D

    return-void
.end method

.method public setMatrix([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/vesdk/VECherEffectParam;->matrix:[Ljava/lang/String;

    return-void
.end method

.method public setSegUseCher([Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/vesdk/VECherEffectParam;->segUseCher:[Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ss/android/vesdk/VECherEffectParam;->matrix:[Ljava/lang/String;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/ss/android/vesdk/VECherEffectParam;->totalNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/ss/android/vesdk/VECherEffectParam;->matrix:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/ss/android/vesdk/VECherEffectParam;->duration:[D

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 5
    iget-object p0, p0, Lcom/ss/android/vesdk/VECherEffectParam;->segUseCher:[Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
