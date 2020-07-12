.class public Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;
.super Ljava/lang/Object;
.source "VEVideoSWEncodeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBitrateMode:I

.field public mBps:I

.field public mCrf:I

.field public mGop:I

.field public mMaxRate:J

.field public mPreset:I

.field public mProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 2
    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    const v0, 0x3d0900

    .line 3
    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBps:I

    .line 4
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBitrateMode:I

    .line 5
    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    .line 6
    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    const-wide/32 v0, 0xe4e1c0

    .line 7
    iput-wide v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    const/16 v0, 0x23

    .line 8
    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mGop:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 10
    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    const v0, 0x3d0900

    .line 11
    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBps:I

    .line 12
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBitrateMode:I

    .line 13
    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    .line 14
    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    const-wide/32 v0, 0xe4e1c0

    .line 15
    iput-wide v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    const/16 v0, 0x23

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mGop:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBps:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBitrateMode:I

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
    iget p2, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget p2, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBitrateMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
