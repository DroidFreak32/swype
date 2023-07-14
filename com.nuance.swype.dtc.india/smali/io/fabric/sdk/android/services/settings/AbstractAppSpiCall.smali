.class abstract Lio/fabric/sdk/android/services/settings/AbstractAppSpiCall;
.super Lio/fabric/sdk/android/services/common/AbstractSpiCall;
.source "AbstractAppSpiCall.java"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .locals 0
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;
    .param p5, "method"    # Lio/fabric/sdk/android/services/network/HttpMethod;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/common/AbstractSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 47
    return-void
.end method

.method private applyMultipartDataTo(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/AppRequestData;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 10
    .param p1, "request"    # Lio/fabric/sdk/android/services/network/HttpRequest;
    .param p2, "requestData"    # Lio/fabric/sdk/android/services/settings/AppRequestData;

    .prologue
    const/4 v9, 0x0

    .line 85
    const-string/jumbo v5, "app[identifier]"

    iget-object v6, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->appId:Ljava/lang/String;

    .line 5563
    invoke-virtual {p1, v5, v9, v6}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "app[name]"

    iget-object v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->name:Ljava/lang/String;

    .line 6563
    invoke-virtual {v5, v6, v9, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "app[display_version]"

    iget-object v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->displayVersion:Ljava/lang/String;

    .line 7563
    invoke-virtual {v5, v6, v9, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "app[build_version]"

    iget-object v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->buildVersion:Ljava/lang/String;

    .line 8563
    invoke-virtual {v5, v6, v9, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "app[source]"

    iget v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->source:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    const-string/jumbo v6, "app[minimum_sdk_version]"

    iget-object v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->minSdkVersion:Ljava/lang/String;

    .line 9563
    invoke-virtual {v5, v6, v9, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "app[built_sdk_version]"

    iget-object v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->builtSdkVersion:Ljava/lang/String;

    .line 10563
    invoke-virtual {v5, v6, v9, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    .line 93
    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    invoke-static {v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    const-string/jumbo v5, "app[instance_identifier]"

    iget-object v6, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    .line 11563
    invoke-virtual {p1, v5, v9, v6}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 97
    :cond_0
    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    if-eqz v5, :cond_1

    .line 98
    const/4 v2, 0x0

    .line 101
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lio/fabric/sdk/android/services/settings/AbstractAppSpiCall;->kit:Lio/fabric/sdk/android/Kit;

    .line 12094
    iget-object v5, v5, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget v6, v6, Lio/fabric/sdk/android/services/settings/IconRequest;->iconResourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 104
    const-string/jumbo v5, "app[icon][hash]"

    iget-object v6, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget-object v6, v6, Lio/fabric/sdk/android/services/settings/IconRequest;->hash:Ljava/lang/String;

    .line 12563
    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7, v6}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    .line 104
    const-string/jumbo v6, "app[icon][data]"

    const-string/jumbo v7, "icon.png"

    const-string/jumbo v8, "application/octet-stream"

    invoke-virtual {v5, v6, v7, v8, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    const-string/jumbo v6, "app[icon][width]"

    iget-object v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget v7, v7, Lio/fabric/sdk/android/services/settings/IconRequest;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v5

    const-string/jumbo v6, "app[icon][height]"

    iget-object v7, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget v7, v7, Lio/fabric/sdk/android/services/settings/IconRequest;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->part(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const-string/jumbo v5, "Failed to close app icon InputStream."

    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 117
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->sdkKits:Ljava/util/Collection;

    if-eqz v5, :cond_4

    .line 118
    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->sdkKits:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/Kit;

    .line 119
    .local v3, "kit":Lio/fabric/sdk/android/Kit;
    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v4, ""

    .line 13128
    .local v4, "version":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v5, ""

    .line 13129
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "app[build][libraries]["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13563
    invoke-virtual {p1, v5, v9, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->part$d4ee95d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    goto :goto_1

    .line 108
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "kit":Lio/fabric/sdk/android/Kit;
    .end local v4    # "version":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to find app icon with resource ID: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p2, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget v8, v8, Lio/fabric/sdk/android/services/settings/IconRequest;->iconResourceId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const-string/jumbo v5, "Failed to close app icon InputStream."

    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v5

    const-string/jumbo v6, "Failed to close app icon InputStream."

    invoke-static {v2, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v5

    .line 119
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "kit":Lio/fabric/sdk/android/Kit;
    :cond_2
    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 13128
    .restart local v4    # "version":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 124
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "kit":Lio/fabric/sdk/android/Kit;
    .end local v4    # "version":Ljava/lang/String;
    :cond_4
    return-object p1
.end method


# virtual methods
.method public invoke(Lio/fabric/sdk/android/services/settings/AppRequestData;)Z
    .locals 6
    .param p1, "requestData"    # Lio/fabric/sdk/android/services/settings/AppRequestData;

    .prologue
    .line 51
    .line 3102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 4075
    .local v0, "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    const-string/jumbo v3, "X-CRASHLYTICS-API-KEY"

    iget-object v4, p1, Lio/fabric/sdk/android/services/settings/AppRequestData;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string/jumbo v4, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v5, "android"

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string/jumbo v4, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v5, p0, Lio/fabric/sdk/android/services/settings/AbstractAppSpiCall;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v5}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0, p1}, Lio/fabric/sdk/android/services/settings/AbstractAppSpiCall;->applyMultipartDataTo(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/AppRequestData;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending app info to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4085
    iget-object v4, p0, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->url:Ljava/lang/String;

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    if-eqz v3, :cond_0

    .line 57
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "App icon hash is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget-object v4, v4, Lio/fabric/sdk/android/services/settings/IconRequest;->hash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "App icon size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget v4, v4, Lio/fabric/sdk/android/services/settings/IconRequest;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iget v4, v4, Lio/fabric/sdk/android/services/settings/IconRequest;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v2

    .line 64
    .local v2, "statusCode":I
    const-string/jumbo v3, "POST"

    .line 4971
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "Create"

    .line 67
    .local v1, "kind":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " app request ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "X-REQUEST-ID"

    invoke-virtual {v0, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 71
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/ResponseParser;->parse(I)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 64
    .end local v1    # "kind":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "Update"

    goto :goto_0

    .line 71
    .restart local v1    # "kind":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
