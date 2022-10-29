.class Lcom/facebook/AccessTokenManager$4;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


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

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field final synthetic val$declinedPermissions:Ljava/util/Set;

.field final synthetic val$permissions:Ljava/util/Set;

.field final synthetic val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/AccessTokenManager$RefreshResult;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8

    .prologue
    .line 283
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p6, p0, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 16
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 286
    const/4 v9, 0x0

    .line 288
    .local v9, "newAccessToken":Lcom/facebook/AccessToken;
    :try_start_1
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_3c

    .line 291
    :cond_1f
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_30

    .line 292
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "No current access token to refresh"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_f2

    .line 323
    :cond_30
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v0, v9

    .line 328
    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .local v0, "newAccessToken":Lcom/facebook/AccessToken;
    :cond_3b
    :goto_3b
    return-void

    .line 297
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    if-nez v1, :cond_6d

    .line 300
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_61

    .line 301
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Failed to refresh access token"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_f2

    .line 323
    :cond_61
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v0, v9

    .line 325
    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    goto :goto_3b

    .line 306
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_6d
    :try_start_6d
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    :goto_79
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_dd

    iget-object v4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    :goto_8f
    iget-object v5, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_e4

    iget-object v5, p0, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    :goto_99
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v6}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v7, v7, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    if-eqz v7, :cond_eb

    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v8, v8, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    int-to-long v10, v8

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    :goto_b2
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_ba
    .catchall {:try_start_6d .. :try_end_ba} :catchall_f2

    .line 321
    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    :try_start_ba
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_10a

    .line 323
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_3b

    .line 325
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v1, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    goto/16 :goto_3b

    .line 306
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_d6
    :try_start_d6
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    :cond_dd
    iget-object v4, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    goto :goto_8f

    :cond_e4
    iget-object v5, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v5}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v5

    goto :goto_99

    :cond_eb
    iget-object v7, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v7}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;
    :try_end_f0
    .catchall {:try_start_d6 .. :try_end_f0} :catchall_f2

    move-result-object v7

    goto :goto_b2

    .line 323
    :catchall_f2
    move-exception v1

    move-object v0, v9

    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    :goto_f4
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v2, :cond_109

    if-eqz v0, :cond_109

    .line 325
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v2, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_109
    throw v1

    .line 323
    :catchall_10a
    move-exception v1

    goto :goto_f4
.end method
