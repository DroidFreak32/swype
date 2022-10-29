.class final Lcom/crashlytics/android/DefaultCreateReportSpiCall;
.super Lio/fabric/sdk/android/services/common/AbstractSpiCall;
.source "DefaultCreateReportSpiCall.java"

# interfaces
.implements Lcom/crashlytics/android/CreateReportSpiCall;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V
    .registers 11
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .prologue
    .line 37
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->POST:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/common/AbstractSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final invoke(Lcom/crashlytics/android/CreateReportRequest;)Z
    .registers 10
    .param p1, "requestData"    # Lcom/crashlytics/android/CreateReportRequest;

    .prologue
    .line 58
    .line 3102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v2

    .line 4074
    const-string/jumbo v3, "X-CRASHLYTICS-API-KEY"

    iget-object v4, p1, Lcom/crashlytics/android/CreateReportRequest;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v2

    const-string/jumbo v3, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v2

    const-string/jumbo v3, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v2

    .line 4079
    iget-object v3, p1, Lcom/crashlytics/android/CreateReportRequest;->report:Lcom/crashlytics/android/Report;

    invoke-interface {v3}, Lcom/crashlytics/android/Report;->getCustomHeaders()Ljava/util/Map;

    move-result-object v3

    .line 4081
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v2

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4901
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v2

    move-object v4, v2

    .line 4083
    goto :goto_39

    .line 5088
    :cond_57
    iget-object v2, p1, Lcom/crashlytics/android/CreateReportRequest;->report:Lcom/crashlytics/android/Report;

    .line 5090
    const-string/jumbo v3, "report[file]"

    invoke-interface {v2}, Lcom/crashlytics/android/Report;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "application/octet-stream"

    invoke-interface {v2}, Lcom/crashlytics/android/Report;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v4, v3, v5, v6, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string/jumbo v4, "report[identifier]"

    invoke-interface {v2}, Lcom/crashlytics/android/Report;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 5563
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 62
    .local v0, "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sending report to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6085
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->url:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    .line 66
    .local v1, "statusCode":I
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create report request ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "X-REQUEST-ID"

    invoke-virtual {v0, v3}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 70
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/ResponseParser;->parse(I)I

    move-result v2

    if-nez v2, :cond_ab

    const/4 v2, 0x1

    :goto_aa
    return v2

    :cond_ab
    const/4 v2, 0x0

    goto :goto_aa
.end method
