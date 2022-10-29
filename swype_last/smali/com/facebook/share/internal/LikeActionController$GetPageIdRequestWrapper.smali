.class Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPageIdRequestWrapper"
.end annotation


# instance fields
.field objectIsPage:Z

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field verifiedObjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 9
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1345
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1348
    .local v0, "pageIdRequestParams":Landroid/os/Bundle;
    const-string/jumbo v1, "fields"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string/jumbo v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    new-instance v1, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string/jumbo v3, ""

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1356
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1371
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1377
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1360
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1363
    .local v0, "results":Lorg/json/JSONObject;
    if-eqz v0, :cond_20

    .line 1364
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    .line 1365
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    :goto_1e
    iput-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectIsPage:Z

    .line 1367
    :cond_20
    return-void

    .line 1365
    :cond_21
    const/4 v1, 0x0

    goto :goto_1e
.end method
