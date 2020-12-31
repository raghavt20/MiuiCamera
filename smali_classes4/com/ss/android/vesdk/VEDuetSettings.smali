.class public final Lcom/ss/android/vesdk/VEDuetSettings;
.super Ljava/lang/Object;
.source "VEDuetSettings.java"


# instance fields
.field private mAlpha:F

.field private mDuetAudioPath:Ljava/lang/String;

.field private mDuetVideoPath:Ljava/lang/String;

.field private mIsFitMode:Z

.field private mXInPercent:F

.field private mYInPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetVideoPath:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetAudioPath:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mXInPercent:F

    .line 5
    iput p4, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mYInPercent:F

    .line 6
    iput p5, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mAlpha:F

    .line 7
    iput-boolean p6, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mIsFitMode:Z

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mAlpha:F

    return p0
.end method

.method public getDuetAudioPath()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDuetVideoPath()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getIsFitMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mIsFitMode:Z

    return p0
.end method

.method public getXInPercent()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mXInPercent:F

    return p0
.end method

.method public getYInPercent()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mYInPercent:F

    return p0
.end method
