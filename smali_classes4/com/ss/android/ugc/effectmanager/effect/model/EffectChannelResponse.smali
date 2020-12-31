.class public Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;
.super Ljava/lang/Object;
.source "EffectChannelResponse.java"


# instance fields
.field private allCategoryEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private categoryResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private frontEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

.field private panel:Ljava/lang/String;

.field private panelModel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

.field private rearEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

.field private urlPrefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->allCategoryEffects:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->categoryResponseList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panel:Ljava/lang/String;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->allCategoryEffects:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->categoryResponseList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->version:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->allCategoryEffects:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->categoryResponseList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllCategoryEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->allCategoryEffects:Ljava/util/List;

    return-object p0
.end method

.method public getCategoryResponseList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->categoryResponseList:Ljava/util/List;

    return-object p0
.end method

.method public getCollections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->collections:Ljava/util/List;

    return-object p0
.end method

.method public getFrontEffect()Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->frontEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    return-object p0
.end method

.method public getPanel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panel:Ljava/lang/String;

    return-object p0
.end method

.method public getPanelModel()Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panelModel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    invoke-direct {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panelModel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panelModel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;->setId(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panelModel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    return-object p0
.end method

.method public getRearEffect()Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->rearEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    return-object p0
.end method

.method public getUrlPrefix()Ljava/util/List;
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
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->urlPrefix:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setAllCategoryEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->allCategoryEffects:Ljava/util/List;

    return-void
.end method

.method public setCategoryResponseList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->categoryResponseList:Ljava/util/List;

    return-void
.end method

.method public setCollections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->collections:Ljava/util/List;

    return-void
.end method

.method public setFrontEffect(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->frontEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    return-void
.end method

.method public setPanel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panel:Ljava/lang/String;

    return-void
.end method

.method public setPanelModel(Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    invoke-direct {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;-><init>()V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->panelModel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    return-void
.end method

.method public setRearEffect(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->rearEffect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    return-void
.end method

.method public setUrlPrefix(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->urlPrefix:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->version:Ljava/lang/String;

    return-void
.end method
