.class public Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;
.super Ljava/lang/Object;
.source "EffectFetcherArguments.java"


# instance fields
.field private mDownloadUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

.field private mEffectDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    .line 3
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->mDownloadUrl:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->mEffectDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->mDownloadUrl:Ljava/util/List;

    return-object p0
.end method

.method public getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->mEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    return-object p0
.end method

.method public getEffectDir()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcherArguments;->mEffectDir:Ljava/lang/String;

    return-object p0
.end method
