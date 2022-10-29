.class public abstract Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
.super Lcom/google/api/client/util/GenericData;
.source "AbstractGoogleClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/util/GenericData;"
    }
.end annotation


# static fields
.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-API-Java-Client"


# instance fields
.field private final abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

.field private disableGZipContent:Z

.field private downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

.field private final httpContent:Lcom/google/api/client/http/HttpContent;

.field private lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private lastStatusCode:I

.field private lastStatusMessage:Ljava/lang/String;

.field private requestHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private final requestMethod:Ljava/lang/String;

.field private responseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;Ljava/lang/Class;)V
    .registers 10
    .param p1, "abstractGoogleClient"    # Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "uriTemplate"    # Ljava/lang/String;
    .param p4, "httpContent"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpContent;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    .local p5, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 75
    new-instance v1, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v1}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    .line 1127
    invoke-static {p5}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    check-cast v1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    .line 3127
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    .line 4127
    invoke-static {p3}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 116
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "applicationName":Ljava/lang/String;
    if-eqz v0, :cond_4f

    .line 118
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Google-API-Java-Client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 122
    :goto_4e
    return-void

    .line 120
    :cond_4f
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    const-string/jumbo v2, "Google-API-Java-Client"

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    goto :goto_4e
.end method

.method private buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 9
    .param p1, "usingHead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v3, :cond_94

    move v3, v4

    .line 6037
    :goto_7
    invoke-static {v3}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 298
    if-eqz p1, :cond_17

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string/jumbo v6, "GET"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    move v5, v4

    .line 7037
    :cond_18
    invoke-static {v5}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 299
    if-eqz p1, :cond_97

    const-string/jumbo v1, "HEAD"

    .line 300
    .local v1, "requestMethodToUse":Ljava/lang/String;
    :goto_20
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 302
    .local v0, "httpRequest":Lcom/google/api/client/http/HttpRequest;
    new-instance v3, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v3}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 303
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getObjectParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 305
    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    if-nez v3, :cond_72

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string/jumbo v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string/jumbo v4, "PUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string/jumbo v4, "PATCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 307
    :cond_6a
    new-instance v3, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v3}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 309
    :cond_72
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 310
    iget-boolean v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    if-nez v3, :cond_87

    .line 311
    new-instance v3, Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {v3}, Lcom/google/api/client/http/GZipEncoding;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;

    .line 313
    :cond_87
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getResponseInterceptor()Lcom/google/api/client/http/HttpResponseInterceptor;

    move-result-object v2

    .line 314
    .local v2, "responseInterceptor":Lcom/google/api/client/http/HttpResponseInterceptor;
    new-instance v3, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$1;-><init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;Lcom/google/api/client/http/HttpResponseInterceptor;Lcom/google/api/client/http/HttpRequest;)V

    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setResponseInterceptor(Lcom/google/api/client/http/HttpResponseInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 325
    return-object v0

    .end local v0    # "httpRequest":Lcom/google/api/client/http/HttpRequest;
    .end local v1    # "requestMethodToUse":Ljava/lang/String;
    .end local v2    # "responseInterceptor":Lcom/google/api/client/http/HttpResponseInterceptor;
    :cond_94
    move v3, v5

    .line 297
    goto/16 :goto_7

    .line 299
    :cond_97
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    goto :goto_20
.end method

.method private executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;
    .registers 8
    .param p1, "usingHead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v3, :cond_1f

    .line 419
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 436
    .local v1, "response":Lcom/google/api/client/http/HttpResponse;
    :cond_c
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 437
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    .line 438
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusMessage:Ljava/lang/String;

    .line 439
    return-object v1

    .line 422
    .end local v1    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    .line 423
    .local v0, "httpRequestUrl":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v3, v4, v0, v5}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->getThrowExceptionOnExecuteError()Z

    move-result v2

    .line 427
    .local v2, "throwExceptionOnExecuteError":Z
    iget-object v4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 8882
    iput-object v3, v4, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 427
    iget-boolean v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    .line 9826
    iput-boolean v3, v4, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->disableGZipContent:Z

    .line 10331
    iget-object v3, v4, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    sget-object v5, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    if-ne v3, v5, :cond_6f

    const/4 v3, 0x1

    .line 11037
    :goto_48
    invoke-static {v3}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 10333
    iget-boolean v3, v4, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    if-eqz v3, :cond_71

    .line 10334
    invoke-virtual {v4, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 429
    .restart local v1    # "response":Lcom/google/api/client/http/HttpResponse;
    :goto_53
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getObjectParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 431
    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 432
    invoke-virtual {p0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 10331
    .end local v1    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_6f
    const/4 v3, 0x0

    goto :goto_48

    .line 10336
    :cond_71
    invoke-virtual {v4, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->resumableUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    goto :goto_53
.end method


# virtual methods
.method public buildHttpRequest()Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;
    .registers 5

    .prologue
    .line 265
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getSuppressRequiredParameterChecks()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p1, :cond_18

    :cond_c
    move v0, v2

    :goto_d
    const-string/jumbo v3, "Required parameter %s must be specified"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 609
    return-void

    :cond_18
    move v0, v1

    .line 606
    goto :goto_d
.end method

.method public execute()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeAndDownloadTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpResponse;->download(Ljava/io/OutputStream;)V

    .line 542
    return-void
.end method

.method public executeAsInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected executeMedia()Lcom/google/api/client/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const-string/jumbo v0, "alt"

    const-string/jumbo v1, "media"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    .line 380
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executeMediaAndDownloadTo(Ljava/io/OutputStream;)V
    .registers 12
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    if-nez v0, :cond_c

    .line 560
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeMedia()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpResponse;->download(Ljava/io/OutputStream;)V

    .line 11210
    :goto_b
    return-void

    .line 562
    :cond_c
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 11178
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    sget-object v2, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    if-ne v0, v2, :cond_4d

    const/4 v0, 0x1

    .line 12037
    :goto_1b
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 11179
    const-string/jumbo v0, "alt"

    const-string/jumbo v2, "media"

    invoke-virtual {v4, v0, v2}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11181
    iget-boolean v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->directDownloadEnabled:Z

    if-eqz v0, :cond_55

    .line 11182
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 12420
    iput-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 11183
    iget-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->lastBytePos:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->executeCurrentRequest(JLcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpHeaders;Ljava/io/OutputStream;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 11186
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    .line 11187
    iget-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    iput-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    .line 11188
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 13420
    iput-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    goto :goto_b

    .line 11178
    :cond_4d
    const/4 v0, 0x0

    goto :goto_1b

    .line 11213
    :cond_4f
    iput-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    .line 11214
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 15420
    iput-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 11194
    :cond_55
    iget-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    iget v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->chunkSize:I

    int-to-long v6, v0

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    .line 11195
    iget-wide v6, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->lastBytePos:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_6c

    .line 11197
    iget-wide v6, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->lastBytePos:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_6c
    move-object v6, p1

    .line 11199
    invoke-virtual/range {v1 .. v6}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->executeCurrentRequest(JLcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpHeaders;Ljava/io/OutputStream;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 11202
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->getContentRange()Ljava/lang/String;

    move-result-object v0

    .line 14263
    if-nez v0, :cond_a9

    .line 14264
    const-wide/16 v2, 0x0

    .line 14322
    :goto_7d
    if-eqz v0, :cond_99

    .line 14325
    iget-wide v6, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_99

    .line 14326
    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    .line 11206
    :cond_99
    iget-wide v6, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    cmp-long v0, v6, v2

    if-gtz v0, :cond_4f

    .line 11208
    iget-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->mediaContentLength:J

    iput-wide v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->bytesDownloaded:J

    .line 11209
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 14420
    iput-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->downloadState:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    goto/16 :goto_b

    .line 14266
    :cond_a9
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_7d
.end method

.method protected executeMediaAsInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeMedia()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v2, 0x1

    .line 405
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v1, :cond_11

    move v1, v2

    .line 8037
    :goto_6
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 406
    invoke-direct {p0, v2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 407
    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 408
    return-object v0

    .line 405
    .end local v0    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_11
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .registers 2

    .prologue
    .line 170
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    return-object v0
.end method

.method public final getDisableGZipContent()Z
    .registers 2

    .prologue
    .line 126
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    return v0
.end method

.method public final getHttpContent()Lcom/google/api/client/http/HttpContent;
    .registers 2

    .prologue
    .line 158
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public final getLastResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 200
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getLastStatusCode()I
    .registers 2

    .prologue
    .line 207
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    return v0
.end method

.method public final getLastStatusMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaHttpDownloader()Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .registers 2

    .prologue
    .line 245
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    return-object v0
.end method

.method public final getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 2

    .prologue
    .line 225
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 175
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getUriTemplate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method protected final initializeMediaDownload()V
    .registers 5

    .prologue
    .line 250
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 251
    .local v0, "requestFactory":Lcom/google/api/client/http/HttpRequestFactory;
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 253
    return-void
.end method

.method public final initializeMediaUpload(Lcom/google/api/client/http/AbstractInputStreamContent;)V
    .registers 6
    .param p1, "mediaContent"    # Lcom/google/api/client/http/AbstractInputStreamContent;

    .prologue
    .line 234
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 235
    .local v0, "requestFactory":Lcom/google/api/client/http/HttpRequestFactory;
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;-><init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 237
    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    .line 4873
    const-string/jumbo v1, "POST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string/jumbo v1, "PUT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string/jumbo v1, "PATCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    :cond_34
    const/4 v1, 0x1

    .line 5037
    :goto_35
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 4876
    iput-object v3, v2, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    if-eqz v1, :cond_44

    .line 239
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 5708
    iput-object v2, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    .line 241
    :cond_44
    return-void

    .line 4873
    :cond_45
    const/4 v1, 0x0

    goto :goto_35
.end method

.method public newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;
    .registers 3
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 456
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    return-object v0
.end method

.method public final queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)V
    .registers 8
    .param p1, "batchRequest"    # Lcom/google/api/client/googleapis/batch/BatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/api/client/googleapis/batch/BatchCallback",
            "<TT;TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    .local p2, "errorClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "callback":Lcom/google/api/client/googleapis/batch/BatchCallback;, "Lcom/google/api/client/googleapis/batch/BatchCallback<TT;TE;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Batching media requests is not supported"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getResponseClass()Ljava/lang/Class;

    move-result-object v1

    .line 17127
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18127
    invoke-static {p3}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19127
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20127
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16195
    iget-object v2, p1, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    new-instance v3, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    invoke-direct {v3, p3, v1, p2, v0}, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;-><init>(Lcom/google/api/client/googleapis/batch/BatchCallback;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/http/HttpRequest;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    return-void

    .line 581
    :cond_2a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 2
    .param p1, "disableGZipContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    .line 143
    return-object p0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 2
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpHeaders;",
            ")",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 193
    return-object p0
.end method
