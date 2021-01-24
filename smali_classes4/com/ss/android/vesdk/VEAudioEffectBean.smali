.class public Lcom/ss/android/vesdk/VEAudioEffectBean;
.super Ljava/lang/Object;
.source "VEAudioEffectBean.java"


# instance fields
.field public blockSize:I

.field public centtone:F

.field public formatShiftOn:Z

.field public octative:F

.field public phaseAdjustMethod:I

.field public phaseResetMode:I

.field public pitchTunerMode:I

.field public processChMode:I

.field public semiton:F

.field public smoothOn:Z

.field public speedRatio:F

.field public transientDetectMode:I

.field public type:I

.field public windowMode:I


# direct methods
.method public constructor <init>(IZZIIIIIIIFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->type:I

    .line 3
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->formatShiftOn:Z

    .line 4
    iput-boolean p3, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->smoothOn:Z

    .line 5
    iput p4, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->processChMode:I

    .line 6
    iput p5, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->transientDetectMode:I

    .line 7
    iput p6, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->phaseResetMode:I

    .line 8
    iput p7, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->phaseAdjustMethod:I

    .line 9
    iput p8, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->windowMode:I

    .line 10
    iput p9, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->pitchTunerMode:I

    .line 11
    iput p10, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->blockSize:I

    .line 12
    iput p11, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->centtone:F

    .line 13
    iput p12, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->semiton:F

    .line 14
    iput p13, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->octative:F

    .line 15
    iput p14, p0, Lcom/ss/android/vesdk/VEAudioEffectBean;->speedRatio:F

    return-void
.end method
