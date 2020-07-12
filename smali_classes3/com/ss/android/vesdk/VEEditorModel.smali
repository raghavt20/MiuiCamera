.class public Lcom/ss/android/vesdk/VEEditorModel;
.super Ljava/lang/Object;
.source "VEEditorModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEEditorModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioEffectFilterIndex:I

.field public audioPaths:[Ljava/lang/String;

.field public backgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public colorFilterIndex:I

.field public colorFilterIntensity:F

.field public colorFilterLeftPath:Ljava/lang/String;

.field public colorFilterPosition:F

.field public colorFilterRightPath:Ljava/lang/String;

.field public inPoint:I

.field public masterTrackIndex:I

.field public modelDir:Ljava/lang/String;

.field public outputFile:Ljava/lang/String;

.field public outputPoint:I

.field public projectXML:Ljava/lang/String;

.field public reverseDone:Z

.field public separateAV:Z

.field public transitions:[Ljava/lang/String;

.field public useColorFilterResIntensity:Z

.field public videoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public videoPaths:[Ljava/lang/String;

.field public watermarkFile:Ljava/lang/String;

.field public watermarkHeight:D

.field public watermarkOffsetX:D

.field public watermarkOffsetY:D

.field public watermarkWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/vesdk/VEEditorModel$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEditorModel$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEditorModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->projectXML:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->inPoint:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->outputPoint:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->reverseDone:Z

    .line 7
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->values()[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->videoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->separateAV:Z

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->masterTrackIndex:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->audioEffectFilterIndex:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->modelDir:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterIndex:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->videoPaths:[Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->videoPaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_2
    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditorModel;->videoPaths:[Ljava/lang/String;

    .line 17
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->audioPaths:[Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->audioPaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_3
    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditorModel;->audioPaths:[Ljava/lang/String;

    .line 21
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->transitions:[Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->transitions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_4
    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditorModel;->transitions:[Ljava/lang/String;

    .line 25
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->backgroundColor:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->outputFile:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkFile:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkWidth:D

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkHeight:D

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkOffsetX:D

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkOffsetY:D

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterLeftPath:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterRightPath:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterPosition:F

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterIntensity:F

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEEditorModel;->useColorFilterResIntensity:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->projectXML:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->inPoint:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->outputPoint:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->reverseDone:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->videoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->separateAV:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->masterTrackIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->audioEffectFilterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->modelDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->videoPaths:[Ljava/lang/String;

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 12
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->videoPaths:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    :goto_0
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->audioPaths:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 16
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->audioPaths:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    :goto_1
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->transitions:[Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 20
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->transitions:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    :goto_2
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->outputFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkWidth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 27
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkHeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 28
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkOffsetX:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditorModel;->watermarkOffsetY:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 30
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterLeftPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterRightPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterPosition:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 33
    iget p2, p0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterIntensity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEEditorModel;->useColorFilterResIntensity:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
