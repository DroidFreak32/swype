.class final Lcom/facebook/GraphRequest$3;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V
    .registers 2

    .prologue
    .line 420
    iput-object p1, p0, Lcom/facebook/GraphRequest$3;->val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 423
    iget-object v2, p0, Lcom/facebook/GraphRequest$3;->val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    if-eqz v2, :cond_16

    .line 424
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 425
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_17

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 426
    .local v0, "data":Lorg/json/JSONArray;
    :goto_11
    iget-object v2, p0, Lcom/facebook/GraphRequest$3;->val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    invoke-interface {v2, v0, p1}, Lcom/facebook/GraphRequest$GraphJSONArrayCallback;->onCompleted(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V

    .line 428
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v1    # "result":Lorg/json/JSONObject;
    :cond_16
    return-void

    .line 425
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method
