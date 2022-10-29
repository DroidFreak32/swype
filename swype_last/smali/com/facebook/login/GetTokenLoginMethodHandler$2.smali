.class Lcom/facebook/login/GetTokenLoginMethodHandler$2;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/GetTokenLoginMethodHandler;->complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

.field final synthetic val$request:Lcom/facebook/login/LoginClient$Request;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)V
    .registers 4

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v0, v0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v1, v1, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const-string/jumbo v2, "Caught exception"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 163
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    :try_start_0
    const-string/jumbo v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    const-string/jumbo v3, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v3, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$request:Lcom/facebook/login/LoginClient$Request;

    iget-object v4, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/GetTokenLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    .line 155
    .end local v1    # "userId":Ljava/lang/String;
    :goto_18
    return-void

    .line 149
    :catch_19
    move-exception v0

    .line 150
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v2, v2, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    iget-object v3, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v3, v3, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v3

    const-string/jumbo v4, "Caught exception"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_18
.end method
