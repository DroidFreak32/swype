.class abstract Lcom/facebook/login/NativeAppLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "NativeAppLoginMethodHandler.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 40
    return-void
.end method

.method private getError(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 124
    const-string/jumbo v1, "error_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_10
    return-object v0
.end method

.method private getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const-string/jumbo v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 132
    const-string/jumbo v1, "error_description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_10
    return-object v0
.end method

.method private handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .registers 8
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 106
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v4, "error_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v4, "CONNECTION_FAILURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 113
    invoke-direct {p0, v3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {p1, v0, v2, v1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    .line 118
    .end local v2    # "errorMessage":Ljava/lang/String;
    :goto_20
    return-object v4

    :cond_21
    invoke-static {p1, v0}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    goto :goto_20
.end method

.method private handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .registers 14
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 77
    .local v5, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v5}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "error":Ljava/lang/String;
    const-string/jumbo v8, "error_code"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "errorCode":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "errorMessage":Ljava/lang/String;
    const-string/jumbo v8, "e2e"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "e2e":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_24

    .line 83
    invoke-virtual {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->logWebLoginCompleted(Ljava/lang/String;)V

    .line 86
    :cond_24
    if-nez v1, :cond_47

    if-nez v2, :cond_47

    if-nez v3, :cond_47

    .line 88
    :try_start_2a
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v5, v9, v10}, Lcom/facebook/login/NativeAppLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v6

    .line 91
    .local v6, "token":Lcom/facebook/AccessToken;
    invoke-static {p1, v6}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;
    :try_end_3b
    .catch Lcom/facebook/FacebookException; {:try_start_2a .. :try_end_3b} :catch_3d

    move-result-object v7

    .line 100
    .end local v6    # "token":Lcom/facebook/AccessToken;
    :cond_3c
    :goto_3c
    return-object v7

    .line 92
    :catch_3d
    move-exception v4

    .line 93
    .local v4, "ex":Lcom/facebook/FacebookException;
    invoke-virtual {v4}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v7

    goto :goto_3c

    .line 95
    .end local v4    # "ex":Lcom/facebook/FacebookException;
    :cond_47
    sget-object v8, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {v8, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 97
    sget-object v8, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {v8, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 98
    invoke-static {p1, v7}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v7

    goto :goto_3c

    .line 100
    :cond_5c
    invoke-static {p1, v1, v3, v2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v7

    goto :goto_3c
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;)Z
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 55
    .local v1, "request":Lcom/facebook/login/LoginClient$Request;
    if-nez p3, :cond_18

    .line 57
    const-string/jumbo v2, "Operation canceled"

    invoke-static {v1, v2}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 67
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    :goto_f
    if-eqz v0, :cond_30

    .line 68
    iget-object v2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 72
    :goto_16
    const/4 v2, 0x1

    return v2

    .line 58
    .end local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_18
    if-nez p2, :cond_1f

    .line 59
    invoke-direct {p0, v1, p3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_f

    .line 60
    .end local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_1f
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2b

    .line 61
    const-string/jumbo v2, "Unexpected resultCode from authorization."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_f

    .line 64
    .end local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_2b
    invoke-direct {p0, v1, p3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_f

    .line 70
    :cond_30
    iget-object v2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    goto :goto_16
.end method

.method abstract tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
.end method

.method protected tryIntent(Landroid/content/Intent;I)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p1, :cond_4

    .line 150
    :goto_3
    return v0

    .line 143
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_d} :catch_f

    .line 150
    const/4 v0, 0x1

    goto :goto_3

    .line 147
    :catch_f
    move-exception v1

    goto :goto_3
.end method
