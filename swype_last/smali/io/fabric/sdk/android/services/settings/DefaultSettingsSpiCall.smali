.class final Lio/fabric/sdk/android/services/settings/DefaultSettingsSpiCall;
.super Lio/fabric/sdk/android/services/common/AbstractSpiCall;
.source "DefaultSettingsSpiCall.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/SettingsSpiCall;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V
    .registers 11
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .prologue
    .line 41
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->GET:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/settings/DefaultSettingsSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .registers 6
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;
    .param p5, "method"    # Lio/fabric/sdk/android/services/network/HttpMethod;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/common/AbstractSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final invoke(Lio/fabric/sdk/android/services/settings/SettingsRequest;)Lorg/json/JSONObject;
    .registers 12
    .param p1, "requestData"    # Lio/fabric/sdk/android/services/settings/SettingsRequest;

    .prologue
    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, "toReturn":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 1085
    .local v1, "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1086
    const-string/jumbo v6, "build_version"

    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->buildVersion:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string/jumbo v6, "display_version"

    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->displayVersion:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string/jumbo v6, "source"

    iget v7, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->source:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->iconHash:Ljava/lang/String;

    if-eqz v6, :cond_2f

    .line 1091
    const-string/jumbo v6, "icon_hash"

    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->iconHash:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    :cond_2f
    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 1095
    invoke-static {v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 1096
    const-string/jumbo v7, "instance"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .local v3, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3d
    invoke-virtual {p0, v3}, Lio/fabric/sdk/android/services/settings/DefaultSettingsSpiCall;->getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    .line 1103
    const-string/jumbo v6, "X-CRASHLYTICS-API-KEY"

    iget-object v7, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->apiKey:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v6

    const-string/jumbo v7, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v8, "android"

    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v6

    const-string/jumbo v7, "X-CRASHLYTICS-D"

    iget-object v8, p1, Lio/fabric/sdk/android/services/settings/SettingsRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v6

    const-string/jumbo v7, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v8, p0, Lio/fabric/sdk/android/services/settings/DefaultSettingsSpiCall;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v8}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v6

    const-string/jumbo v7, "Accept"

    const-string/jumbo v8, "application/json"

    invoke-virtual {v6, v7, v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    .line 63
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Requesting settings from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2085
    iget-object v7, p0, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->url:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Settings query params were: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    .line 67
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 69
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->body()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "httpRequestBody":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a1} :catch_ba
    .catchall {:try_start_2 .. :try_end_a1} :catchall_f2

    .line 75
    .end local v4    # "toReturn":Lorg/json/JSONObject;
    .local v5, "toReturn":Lorg/json/JSONObject;
    if-eqz v1, :cond_10b

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Settings request ID: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "X-REQUEST-ID"

    invoke-virtual {v1, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v5

    .line 81
    .end local v2    # "httpRequestBody":Ljava/lang/String;
    .end local v3    # "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "toReturn":Lorg/json/JSONObject;
    .restart local v4    # "toReturn":Lorg/json/JSONObject;
    :cond_b9
    :goto_b9
    return-object v4

    .line 71
    :catch_ba
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :try_start_bb
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string/jumbo v7, "Fabric"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Failed to retrieve settings from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3085
    iget-object v9, p0, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->url:Ljava/lang/String;

    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_da
    .catchall {:try_start_bb .. :try_end_da} :catchall_f2

    .line 75
    if-eqz v1, :cond_b9

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Settings request ID: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "X-REQUEST-ID"

    invoke-virtual {v1, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_f2
    move-exception v6

    if-eqz v1, :cond_10a

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Settings request ID: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "X-REQUEST-ID"

    invoke-virtual {v1, v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10a
    throw v6

    .end local v4    # "toReturn":Lorg/json/JSONObject;
    .restart local v2    # "httpRequestBody":Ljava/lang/String;
    .restart local v3    # "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "toReturn":Lorg/json/JSONObject;
    :cond_10b
    move-object v4, v5

    .end local v5    # "toReturn":Lorg/json/JSONObject;
    .restart local v4    # "toReturn":Lorg/json/JSONObject;
    goto :goto_b9
.end method
