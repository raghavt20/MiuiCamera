.class Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/videocodec/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Frame"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public buflen:I

.field public frameType:I

.field public height:I

.field public ntp_timestapUs:J

.field final synthetic this$0:Lorg/webrtc/videocodec/MediaCodecVideoDecoder;

.field public timestampUs:J

.field public width:I


# direct methods
.method constructor <init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Ljava/nio/ByteBuffer;IJJIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    iput p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->buflen:I

    .line 4
    iput-wide p4, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->timestampUs:J

    .line 5
    iput-wide p6, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->ntp_timestapUs:J

    .line 6
    iput p8, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->width:I

    .line 7
    iput p9, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->height:I

    .line 8
    iput p10, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->frameType:I

    .line 9
    invoke-static {p1}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->access$000(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
