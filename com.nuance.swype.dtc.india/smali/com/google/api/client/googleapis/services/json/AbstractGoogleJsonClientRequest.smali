.class public abstract Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
.super Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
.source "AbstractGoogleJsonClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final jsonContent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .param p1, "abstractGoogleJsonClient"    # Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "uriTemplate"    # Ljava/lang/String;
    .param p4, "jsonContent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    .local p5, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 57
    if-nez p4, :cond_0

    move-object v4, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;-><init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;Ljava/lang/Class;)V

    .line 61
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->jsonContent:Ljava/lang/Object;

    .line 62
    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/google/api/client/http/json/JsonHttpContent;

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/json/JsonObjectParser;->getWrapperKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/json/JsonHttpContent;->setWrapperKey(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpContent;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "data"

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;

    move-result-object v0

    return-object v0
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-super {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;

    return-object v0
.end method

.method public getJsonContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->jsonContent:Ljava/lang/Object;

    return-object v0
.end method

.method protected newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .locals 1
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 113
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 40
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v0

    return-object v0
.end method

.method public final queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;)V
    .locals 1
    .param p1, "batchRequest"    # Lcom/google/api/client/googleapis/batch/BatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;",
            "Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    .local p2, "callback":Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;, "Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback<TT;>;"
    const-class v0, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-super {p0, p1, v0, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)V

    .line 109
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 40
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1
    .param p1, "disableGZipContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    return-object v0
.end method

.method public bridge synthetic setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 40
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpHeaders;",
            ")",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<TT;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    return-object v0
.end method
