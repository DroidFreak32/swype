.class final Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;
.super Ljava/lang/Object;
.source "TokenRequest.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/auth/oauth2/TokenRequest$1;->initialize(Lcom/google/api/client/http/HttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/client/auth/oauth2/TokenRequest$1;

.field final synthetic val$interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;


# direct methods
.method constructor <init>(Lcom/google/api/client/auth/oauth2/TokenRequest$1;Lcom/google/api/client/http/HttpExecuteInterceptor;)V
    .registers 3

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->this$1:Lcom/google/api/client/auth/oauth2/TokenRequest$1;

    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->val$interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lcom/google/api/client/http/HttpRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->val$interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->val$interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-interface {v0, p1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->this$1:Lcom/google/api/client/auth/oauth2/TokenRequest$1;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->this$0:Lcom/google/api/client/auth/oauth2/TokenRequest;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/TokenRequest;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v0, :cond_1a

    .line 272
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest$1$1;->this$1:Lcom/google/api/client/auth/oauth2/TokenRequest$1;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/TokenRequest$1;->this$0:Lcom/google/api/client/auth/oauth2/TokenRequest;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/TokenRequest;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-interface {v0, p1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 274
    :cond_1a
    return-void
.end method
