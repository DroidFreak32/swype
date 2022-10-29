.class Lcom/facebook/share/ShareApi$2;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;

.field final synthetic val$parameters:Landroid/os/Bundle;

.field final synthetic val$requestCallback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/FacebookCallback;)V
    .registers 6

    .prologue
    .line 242
    iput-object p1, p0, Lcom/facebook/share/ShareApi$2;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$2;->val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$2;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 8

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    # invokes: Lcom/facebook/share/ShareApi;->handleImagesOnAction(Landroid/os/Bundle;)V
    invoke-static {v0}, Lcom/facebook/share/ShareApi;->access$000(Landroid/os/Bundle;)V

    .line 248
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/ShareApi$2;->this$0:Lcom/facebook/share/ShareApi;

    iget-object v3, p0, Lcom/facebook/share/ShareApi$2;->val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/facebook/share/ShareApi;->access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/facebook/share/ShareApi$2;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 258
    :goto_2a
    return-void

    .line 255
    :catch_2b
    move-exception v6

    .line 256
    .local v6, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, v6}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_2a
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 263
    return-void
.end method
