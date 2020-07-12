.class public Lcom/ss/android/vesdk/VEEqualizerParams;
.super Ljava/lang/Object;
.source "VEEqualizerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEEqualizerParams$Presets;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEEqualizerParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public amp1000:F

.field public amp125:F

.field public amp16000:F

.field public amp2000:F

.field public amp250:F

.field public amp31:F

.field public amp4000:F

.field public amp500:F

.field public amp63:F

.field public amp8000:F

.field public freqWidth1000:F

.field public freqWidth125:F

.field public freqWidth16000:F

.field public freqWidth2000:F

.field public freqWidth250:F

.field public freqWidth31:F

.field public freqWidth4000:F

.field public freqWidth500:F

.field public freqWidth63:F

.field public freqWidth8000:F

.field public name:Ljava/lang/String;

.field public preamp:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    .line 84
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 86
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 87
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 88
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 89
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 90
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 91
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 92
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 93
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 94
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 96
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 97
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 98
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 99
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 100
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 101
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 102
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 103
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 104
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method private constructor <init>(FFFFFFFFFFF)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    .line 49
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 51
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 52
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 53
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 54
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 55
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 56
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 57
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 58
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 59
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 61
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 62
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 63
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 64
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 65
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 66
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 67
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 68
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 69
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    const-string v0, "custom"

    .line 70
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    .line 71
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    .line 72
    iput p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 73
    iput p3, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 74
    iput p4, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 75
    iput p5, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 76
    iput p6, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 77
    iput p7, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 78
    iput p8, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 79
    iput p9, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 80
    iput p10, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 81
    iput p11, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method private constructor <init>(FFFFFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    .line 3
    iput-object v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v1, 0x41400000    # 12.0f

    .line 4
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 6
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 7
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 8
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 9
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 10
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 11
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 12
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 13
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 14
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 16
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 17
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 18
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 19
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 20
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 21
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 22
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 23
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 24
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    const-string v1, "custom"

    .line 25
    iput-object v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    move v1, p11

    .line 26
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    move v1, p1

    .line 27
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    move v1, p2

    .line 28
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    move v1, p3

    .line 29
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    move v1, p4

    .line 30
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    move v1, p5

    .line 31
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    move v1, p6

    .line 32
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    move v1, p7

    .line 33
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    move v1, p8

    .line 34
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    move v1, p9

    .line 35
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    move v1, p10

    .line 36
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    move v1, p12

    .line 37
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    move v1, p13

    .line 38
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    move/from16 v1, p14

    .line 39
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    move/from16 v1, p15

    .line 40
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    move/from16 v1, p16

    .line 41
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    move/from16 v1, p17

    .line 42
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    move/from16 v1, p18

    .line 43
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    move/from16 v1, p19

    .line 44
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    move/from16 v1, p20

    .line 45
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    move/from16 v1, p21

    .line 46
    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method synthetic constructor <init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFF)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 106
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    .line 107
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 109
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 110
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 111
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 112
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 113
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 114
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 115
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 116
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 117
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 119
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 120
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 121
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 122
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 123
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 124
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 125
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 126
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 127
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEqualizerParams;
    .locals 3

    const-string v0, ","

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 4
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/4 v2, 0x3

    .line 5
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    const/4 v1, 0x4

    .line 6
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    const/4 v2, 0x5

    .line 7
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    const/4 v1, 0x6

    .line 8
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    const/4 v2, 0x7

    .line 9
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    const/16 v1, 0x8

    .line 10
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    const/16 v2, 0x9

    .line 11
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    const/16 v1, 0xa

    .line 12
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    const/16 v2, 0xb

    .line 13
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    const/16 v1, 0xc

    .line 14
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/16 v2, 0xd

    .line 15
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    const/16 v1, 0xe

    .line 16
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    const/16 v2, 0xf

    .line 17
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    const/16 v1, 0x10

    .line 18
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    const/16 v2, 0x11

    .line 19
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    const/16 v1, 0x12

    .line 20
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    const/16 v2, 0x13

    .line 21
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    const/16 v1, 0x14

    .line 22
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    const/16 v2, 0x15

    .line 23
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 24
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/ss/android/vesdk/VEEqualizerParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEqualizerParams;->getParamsAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEqualizerParams;->fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEqualizerParams;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParamsAsString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEEqualizerParams{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", preamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp31="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp63="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp125="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp250="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp500="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp1000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp2000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp4000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp8000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp16000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth31="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth63="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth125="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth250="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth500="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth1000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth2000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth4000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth8000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth16000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 11
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 13
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 15
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 16
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 17
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 18
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 20
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 22
    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
