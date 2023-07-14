.class final Lcom/google/api/client/auth/oauth2/TokenRequest$1;
.super Ljava/lang/Object;
.source "TokenRequest.java"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/auth/oauth2/TokenRequest;


# direct methods
.method constructor <init>(Lcom/google/api/client/auth/oauth2/TokenRequest;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->this$0:Lcom/google/api/client/auth/oauth2/TokenRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->this$0:Lcom/google/api/client/auth/oauth2/TokenRequest;

    iget-object v1, v1, Lcom/google/api/client/auth/oauth2/TokenRequest;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->this$0:Lcom/google/api/client/auth/oauth2/TokenRequest;

    iget-object v1, v1, Lcom/google/api/client/auth/oauth2/TokenRequest;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-interface {v1, p1}, Lcom/google/api/client/http/HttpRequestInitializer;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-result-object v0

    .line 266
    .local v0, "interceptor":Lcom/google/api/client/http/HttpExecuteInterceptor;
    new-instance v1, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;-><init>(Lcom/google/api/client/auth/oauth2/TokenRequest$1;Lcom/google/api/client/http/HttpExecuteInterceptor;)V

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 276
    return-void
.end method
