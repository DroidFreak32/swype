.class public final Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;
.super Lcom/google/api/client/auth/oauth2/TokenRequest;
.source "RefreshTokenRequest.java"


# instance fields
.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "refresh_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V
    .locals 1
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "tokenServerUrl"    # Lcom/google/api/client/http/GenericUrl;
    .param p4, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v0, "refresh_token"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 2127
    invoke-static {p4}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1137
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->refreshToken:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;
    .locals 1
    .param p1, "clientAuthentication"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    return-object v0
.end method

.method public final bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    .line 3115
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    .line 80
    return-object v0
.end method

.method public final setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;
    .locals 1
    .param p1, "requestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    return-object v0
.end method

.method public final bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/GenericUrl;

    .prologue
    .line 80
    .line 4105
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    .line 80
    return-object v0
.end method
