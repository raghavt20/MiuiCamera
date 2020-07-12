.class public Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
.super Ljava/lang/Object;
.source "MP4Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/utils/MP4Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MP4VideoInfo"
.end annotation


# instance fields
.field public audioBitRate:I

.field public audioMediaName:Ljava/lang/String;

.field public frameRate:D

.field public height:I

.field public keyFrameInterval:I

.field public samplingRate:I

.field public videoBitRate:I

.field public videoMediaName:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IDIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->videoMediaName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->audioMediaName:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->keyFrameInterval:I

    .line 5
    iput-wide p4, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->frameRate:D

    .line 6
    iput p6, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->samplingRate:I

    .line 7
    iput p7, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->videoBitRate:I

    .line 8
    iput p8, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->audioBitRate:I

    .line 9
    iput p9, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->width:I

    .line 10
    iput p10, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->height:I

    return-void
.end method
