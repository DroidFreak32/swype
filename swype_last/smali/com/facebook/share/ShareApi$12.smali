.class Lcom/facebook/share/ShareApi$12;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$photo:Lcom/facebook/share/model/SharePhoto;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V
    .registers 4

    .prologue
    .line 680
    iput-object p1, p0, Lcom/facebook/share/ShareApi$12;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$12;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 10
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 683
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 684
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_1a

    .line 685
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_f

    .line 687
    const-string/jumbo v2, "Error staging photo."

    .line 689
    :cond_f
    iget-object v5, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v6, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v6, p1, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 719
    .end local v2    # "message":Ljava/lang/String;
    :goto_19
    return-void

    .line 693
    :cond_1a
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 694
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_2e

    .line 695
    iget-object v5, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v6, Lcom/facebook/FacebookException;

    const-string/jumbo v7, "Error staging photo."

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_19

    .line 699
    :cond_2e
    const-string/jumbo v5, "uri"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "stagedImageUri":Ljava/lang/String;
    if-nez v3, :cond_45

    .line 701
    iget-object v5, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v6, Lcom/facebook/FacebookException;

    const-string/jumbo v7, "Error staging photo."

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_19

    .line 706
    :cond_45
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 708
    .local v4, "stagedObject":Lorg/json/JSONObject;
    :try_start_4a
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    const-string/jumbo v5, "user_generated"

    iget-object v6, p0, Lcom/facebook/share/ShareApi$12;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v6}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_5c} :catch_62

    .line 718
    iget-object v5, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v5, v4}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_19

    .line 711
    :catch_62
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 712
    .restart local v2    # "message":Ljava/lang/String;
    if-nez v2, :cond_6c

    .line 713
    const-string/jumbo v2, "Error staging photo."

    .line 715
    :cond_6c
    iget-object v5, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v6, Lcom/facebook/FacebookException;

    invoke-direct {v6, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_19
.end method
