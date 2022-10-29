.class abstract Lcom/facebook/login/WebLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "WebLoginMethodHandler.java"


# static fields
.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"


# instance fields
.field private e2e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 56
    return-void
.end method

.method private static final getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fb"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadCookieToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "TOKEN"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveCookieToken(Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-void
.end method


# virtual methods
.method protected addExtraParameters(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .registers 5
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 106
    const-string/jumbo v0, "redirect_uri"

    invoke-static {}, Lcom/facebook/login/WebLoginMethodHandler;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v0, "client_id"

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v0, "e2e"

    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "response_type"

    const-string/jumbo v1, "token,signed_request"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "return_scopes"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "auth_type"

    const-string/jumbo v1, "rerequest"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getSSODevice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 119
    const-string/jumbo v0, "sso"

    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getSSODevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_49
    return-object p1
.end method

.method protected getParameters(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .registers 9
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v1, "parameters":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 71
    const-string/jumbo v5, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "scope":Ljava/lang/String;
    const-string/jumbo v5, "scope"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v5, "scope"

    invoke-virtual {p0, v5, v4}, Lcom/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .end local v4    # "scope":Ljava/lang/String;
    :cond_26
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    .line 77
    .local v0, "audience":Lcom/facebook/login/DefaultAudience;
    const-string/jumbo v5, "default_audience"

    invoke-virtual {v0}, Lcom/facebook/login/DefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v5, "state"

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/login/WebLoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 83
    .local v2, "previousToken":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "previousTokenString":Ljava/lang/String;
    :goto_4c
    if-eqz v3, :cond_6a

    invoke-direct {p0}, Lcom/facebook/login/WebLoginMethodHandler;->loadCookieToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 86
    const-string/jumbo v5, "access_token"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v5, "access_token"

    const-string/jumbo v6, "1"

    invoke-virtual {p0, v5, v6}, Lcom/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :goto_67
    return-object v1

    .line 83
    .end local v3    # "previousTokenString":Ljava/lang/String;
    :cond_68
    const/4 v3, 0x0

    goto :goto_4c

    .line 96
    .restart local v3    # "previousTokenString":Ljava/lang/String;
    :cond_6a
    iget-object v5, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v5}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 97
    const-string/jumbo v5, "access_token"

    const-string/jumbo v6, "0"

    invoke-virtual {p0, v5, v6}, Lcom/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_67
.end method

.method protected getSSODevice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getTokenSource()Lcom/facebook/AccessTokenSource;
.end method

.method protected onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 16
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "values"    # Landroid/os/Bundle;
    .param p3, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v11, 0x0

    .line 127
    iput-object v11, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 128
    if-eqz p2, :cond_68

    .line 130
    const-string/jumbo v6, "e2e"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 131
    const-string/jumbo v6, "e2e"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 135
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getTokenSource()Lcom/facebook/AccessTokenSource;

    move-result-object v7

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, p2, v7, v8}, Lcom/facebook/login/WebLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v5

    .line 140
    .local v5, "token":Lcom/facebook/AccessToken;
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    .line 147
    .local v3, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v6

    .line 149
    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 150
    invoke-virtual {v5}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/facebook/login/WebLoginMethodHandler;->saveCookieToken(Ljava/lang/String;)V
    :try_end_45
    .catch Lcom/facebook/FacebookException; {:try_start_17 .. :try_end_45} :catch_58

    .line 179
    .end local v5    # "token":Lcom/facebook/AccessToken;
    .end local p3    # "error":Lcom/facebook/FacebookException;
    :goto_45
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 180
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/facebook/login/WebLoginMethodHandler;->logWebLoginCompleted(Ljava/lang/String;)V

    .line 183
    :cond_52
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6, v3}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 184
    return-void

    .line 151
    .end local v3    # "outcome":Lcom/facebook/login/LoginClient$Result;
    .restart local p3    # "error":Lcom/facebook/FacebookException;
    :catch_58
    move-exception v2

    .line 152
    .local v2, "ex":Lcom/facebook/FacebookException;
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v6

    invoke-virtual {v2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v11, v7}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    .line 156
    .restart local v3    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_45

    .line 158
    .end local v2    # "ex":Lcom/facebook/FacebookException;
    .end local v3    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_68
    instance-of v6, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v6, :cond_7a

    .line 159
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v6

    const-string/jumbo v7, "User canceled log in."

    invoke-static {v6, v7}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    .restart local v3    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_45

    .line 164
    .end local v3    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_7a
    iput-object v11, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "errorCode":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "errorMessage":Ljava/lang/String;
    instance-of v6, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v6, :cond_a6

    .line 169
    check-cast p3, Lcom/facebook/FacebookServiceException;

    .end local p3    # "error":Lcom/facebook/FacebookException;
    invoke-virtual {p3}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    .line 171
    .local v4, "requestError":Lcom/facebook/FacebookRequestError;
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .end local v4    # "requestError":Lcom/facebook/FacebookRequestError;
    :cond_a6
    iget-object v6, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v6

    invoke-static {v6, v11, v1, v0}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    .restart local v3    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_45
.end method
