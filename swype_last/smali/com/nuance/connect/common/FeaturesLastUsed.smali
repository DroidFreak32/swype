.class public Lcom/nuance/connect/common/FeaturesLastUsed;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/common/FeaturesLastUsed$Feature;
    }
.end annotation


# instance fields
.field private final featuresMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/common/FeaturesLastUsed;->featuresMap:Ljava/util/Map;

    if-nez p1, :cond_f

    const-string/jumbo p1, ""

    :cond_f
    invoke-virtual {p0, p1}, Lcom/nuance/connect/common/FeaturesLastUsed;->updateWithString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/common/FeaturesLastUsed;->featuresMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V
    .registers 8

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/nuance/connect/common/FeaturesLastUsed;->featuresMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/nuance/connect/common/FeaturesLastUsed;->featuresMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWithString(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->isFeatureKnown(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/nuance/connect/common/FeaturesLastUsed;->featuresMap:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_9

    :catch_25
    move-exception v0

    :cond_26
    return-void
.end method
