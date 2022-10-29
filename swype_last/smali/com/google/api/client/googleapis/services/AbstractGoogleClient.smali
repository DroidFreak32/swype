.class public abstract Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
.super Ljava/lang/Object;
.source "AbstractGoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

.field private final objectParser:Lcom/google/api/client/util/ObjectParser;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final rootUrl:Ljava/lang/String;

.field private final servicePath:Ljava/lang/String;

.field private suppressPatternChecks:Z

.field private suppressRequiredParameterChecks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    .line 78
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->rootUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->rootUrl:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->servicePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->servicePath:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->applicationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 81
    sget-object v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v1, "Application name is not set. Call Builder#setApplicationName."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 83
    :cond_27
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->applicationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->applicationName:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    if-nez v0, :cond_44

    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_35
    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 87
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->objectParser:Lcom/google/api/client/util/ObjectParser;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->objectParser:Lcom/google/api/client/util/ObjectParser;

    .line 88
    iget-boolean v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->suppressPatternChecks:Z

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressPatternChecks:Z

    .line 89
    iget-boolean v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->suppressRequiredParameterChecks:Z

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressRequiredParameterChecks:Z

    .line 90
    return-void

    .line 84
    :cond_44
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v1, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_35
.end method

.method static normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "rootUrl"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string/jumbo v0, "root URL cannot be null."

    invoke-static {p0, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    :cond_23
    return-object p0
.end method

.method static normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "servicePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 264
    const-string/jumbo v0, "service path cannot be null"

    invoke-static {p0, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 266
    const-string/jumbo v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "service path must equal \"/\" if it is of length 1."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 268
    const-string/jumbo p0, ""

    .line 277
    :cond_1d
    :goto_1d
    return-object p0

    .line 269
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 270
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    :cond_41
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 274
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d
.end method


# virtual methods
.method public final batch()Lcom/google/api/client/googleapis/batch/BatchRequest;
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batch(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public final batch(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .registers 6
    .param p1, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 230
    new-instance v0, Lcom/google/api/client/googleapis/batch/BatchRequest;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/googleapis/batch/BatchRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 232
    .local v0, "batch":Lcom/google/api/client/googleapis/batch/BatchRequest;
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRootUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "batch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 1144
    iput-object v1, v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    .line 233
    return-object v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->servicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    return-object v0
.end method

.method public getObjectParser()Lcom/google/api/client/util/ObjectParser;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object v0
.end method

.method public final getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->rootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getServicePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->servicePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuppressPatternChecks()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressPatternChecks:Z

    return v0
.end method

.method public final getSuppressRequiredParameterChecks()Z
    .registers 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressRequiredParameterChecks:Z

    return v0
.end method

.method public initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "httpClientRequest":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<*>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 187
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 189
    :cond_d
    return-void
.end method
