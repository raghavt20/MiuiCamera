.class public Lcom/ss/android/ttve/common/TEEncodeParams;
.super Ljava/lang/Object;
.source "TEEncodeParams.java"


# static fields
.field public static final ENCODE_LEVEL_FAST:I = 0x4

.field public static final ENCODE_LEVEL_FASTER:I = 0x3

.field public static final ENCODE_LEVEL_MEDIUM:I = 0x5

.field public static final ENCODE_LEVEL_PLACEBO:I = 0x9

.field public static final ENCODE_LEVEL_SLOW:I = 0x6

.field public static final ENCODE_LEVEL_SLOWER:I = 0x7

.field public static final ENCODE_LEVEL_SUPERFAST:I = 0x1

.field public static final ENCODE_LEVEL_ULTRAFAST:I = 0x0

.field public static final ENCODE_LEVEL_VERYFAST:I = 0x2

.field public static final ENCODE_LEVEL_VERYSLOW:I = 0x8

.field public static final MUSIC_LOOP_ALWAYS:I = 0x1

.field public static final MUSIC_LOOP_ONLY_ONCE:I


# instance fields
.field public audioBitrate:I

.field public encodeLevel:I

.field public fps:I

.field public gopSize:I

.field public hasBFrame:Z

.field public musicLoopType:I

.field public outputSize:Lcom/ss/android/ttve/common/TESizei;

.field public speed:F

.field public strAudioFilePath:Ljava/lang/String;

.field public strVideoFilePath:Ljava/lang/String;

.field public useHWEncoder:Z

.field public videoBitrate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/ttve/common/TESizei;FZIII)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->musicLoopType:I

    .line 16
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->videoBitrate:I

    .line 17
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->audioBitrate:I

    const/16 v1, 0x1e

    .line 18
    iput v1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->fps:I

    .line 19
    iput v1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->gopSize:I

    .line 20
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->encodeLevel:I

    .line 21
    iput-boolean v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->hasBFrame:Z

    .line 22
    iput-object p1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->strVideoFilePath:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->outputSize:Lcom/ss/android/ttve/common/TESizei;

    .line 24
    iput p3, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->speed:F

    .line 25
    iput-boolean p4, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->useHWEncoder:Z

    .line 26
    iput p5, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->musicLoopType:I

    .line 27
    iput p6, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->fps:I

    .line 28
    iput p7, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->gopSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/ttve/common/TESizei;FZIIIIIIZ)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->musicLoopType:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->videoBitrate:I

    .line 32
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->audioBitrate:I

    const/16 v1, 0x1e

    .line 33
    iput v1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->fps:I

    .line 34
    iput v1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->gopSize:I

    .line 35
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->encodeLevel:I

    .line 36
    iput-boolean v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->hasBFrame:Z

    .line 37
    iput-object p1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->strVideoFilePath:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->outputSize:Lcom/ss/android/ttve/common/TESizei;

    .line 39
    iput p3, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->speed:F

    .line 40
    iput-boolean p4, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->useHWEncoder:Z

    .line 41
    iput p5, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->musicLoopType:I

    .line 42
    iput p6, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->fps:I

    .line 43
    iput p7, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->gopSize:I

    .line 44
    iput p8, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->videoBitrate:I

    .line 45
    iput p9, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->audioBitrate:I

    .line 46
    iput p10, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->encodeLevel:I

    .line 47
    iput-boolean p11, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->hasBFrame:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/common/TESizei;FZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->musicLoopType:I

    .line 3
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->videoBitrate:I

    .line 4
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->audioBitrate:I

    const/16 v1, 0x1e

    .line 5
    iput v1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->fps:I

    .line 6
    iput v1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->gopSize:I

    .line 7
    iput v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->encodeLevel:I

    .line 8
    iput-boolean v0, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->hasBFrame:Z

    .line 9
    iput-object p1, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->strVideoFilePath:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->strAudioFilePath:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->outputSize:Lcom/ss/android/ttve/common/TESizei;

    .line 12
    iput p4, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->speed:F

    .line 13
    iput-boolean p5, p0, Lcom/ss/android/ttve/common/TEEncodeParams;->useHWEncoder:Z

    return-void
.end method
