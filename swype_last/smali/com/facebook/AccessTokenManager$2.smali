.class Lcom/facebook/AccessTokenManager$2;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$declinedPermissions:Ljava/util/Set;

.field final synthetic val$permissions:Ljava/util/Set;

.field final synthetic val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5

    .prologue
    .line 237
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$2;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$2;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$2;->val$permissions:Ljava/util/Set;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$2;->val$declinedPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 11
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 241
    .local v4, "result":Lorg/json/JSONObject;
    if-nez v4, :cond_7

    .line 268
    :cond_6
    return-void

    .line 244
    :cond_7
    const-string/jumbo v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 245
    .local v3, "permissionsArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_6

    .line 248
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 250
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 251
    .local v2, "permissionEntry":Lorg/json/JSONObject;
    if-eqz v2, :cond_51

    .line 254
    const-string/jumbo v6, "permission"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "permission":Ljava/lang/String;
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "status":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_51

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 258
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 259
    const-string/jumbo v6, "granted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 260
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$permissions:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v1    # "permission":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 261
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_54
    const-string/jumbo v6, "declined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 262
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$declinedPermissions:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 264
    :cond_63
    const-string/jumbo v6, "AccessTokenManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unexpected status: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method
