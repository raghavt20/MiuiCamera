.class public Lcom/ss/android/ugc/effectmanager/effect/model/net/EffectCheckUpdateResponse;
.super Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;
.source "EffectCheckUpdateResponse.java"


# instance fields
.field private updated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public isUpdated()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/EffectCheckUpdateResponse;->updated:Z

    return p0
.end method

.method public setUpdated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/EffectCheckUpdateResponse;->updated:Z

    return-void
.end method
