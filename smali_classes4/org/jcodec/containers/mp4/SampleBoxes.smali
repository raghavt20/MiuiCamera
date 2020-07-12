.class public Lorg/jcodec/containers/mp4/SampleBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source "SampleBoxes.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/Boxes;->clear()V

    .line 3
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "ap4h"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apch"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apcn"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apcs"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "apco"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "avc1"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "cvid"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "jpeg"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 11
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "smc "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "rle "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "rpza"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 14
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "kpcd"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "png "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "mjpa"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "mjpb"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "SVQ1"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "SVQ3"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "mp4v"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "dvc "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "dvcp"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "gif "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 24
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "h263"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 25
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "tiff"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v1, "raw "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "2vuY"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "yuv2"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v308"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 30
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v408"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 31
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v216"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v410"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 33
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "v210"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "m2v1"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "m1v1"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "xd5b"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "dv5n"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "jp2h"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    const-class v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-string v2, "mjp2"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v2, "ac-3"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v2, "cac3"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v2, "ima4"

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aac "

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "celp"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "hvxc"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "twvq"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, ".mp1"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, ".mp2"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "midi"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "apvs"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "alac"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aach"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacl"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aace"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacf"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacp"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aacs"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "samr"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "AUDB"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "ilbc"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 61
    fill-array-data v3, :array_0

    invoke-static {v3}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v3, v4}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    new-array v0, v0, [B

    .line 62
    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v0, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "aes3"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v3, "NONE"

    invoke-virtual {p0, v3, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "twos"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "sowt"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "MAC3 "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 69
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "MAC6 "

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "fl32"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "fl64"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "in24"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 74
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "in32"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "ulaw"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "alaw"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "dvca"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 78
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "QDMC"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 79
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "QDM2"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "Qclp"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, ".mp3"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "mp4a"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    const-class v0, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    const-string v1, "lpcm"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    const-class v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;

    const-string v1, "tmcd"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    const-class v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;

    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "c608"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 87
    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "c708"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "text"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    const-class v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-string v1, "fdsc"

    invoke-virtual {p0, v1, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x6dt
        0x73t
        0x0t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x6dt
        0x73t
        0x0t
        0x31t
    .end array-data
.end method
