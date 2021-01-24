.class Lcom/android/camera/Thumbnail$Media;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final height:I

.field public final id:J

.field public final orientation:I

.field public final path:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final width:I


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/camera/Thumbnail$Media;->id:J

    .line 3
    iput p3, p0, Lcom/android/camera/Thumbnail$Media;->orientation:I

    .line 4
    iput-wide p4, p0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    .line 5
    iput-object p6, p0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 6
    iput-object p7, p0, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    .line 7
    iput p8, p0, Lcom/android/camera/Thumbnail$Media;->width:I

    .line 8
    iput p9, p0, Lcom/android/camera/Thumbnail$Media;->height:I

    return-void
.end method
