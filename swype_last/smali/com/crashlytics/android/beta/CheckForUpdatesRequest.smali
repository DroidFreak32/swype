.class final Lcom/crashlytics/android/beta/CheckForUpdatesRequest;
.super Lio/fabric/sdk/android/services/common/AbstractSpiCall;
.source "CheckForUpdatesRequest.java"


# instance fields
.field private final responseTransform:Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;)V
    .registers 12
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;
    .param p5, "responseTransform"    # Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;

    .prologue
    .line 29
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->GET:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/common/AbstractSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 30
    iput-object p5, p0, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;->responseTransform:Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;

    .line 31
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/beta/BuildProperties;)Lcom/crashlytics/android/beta/CheckForUpdatesResponse;
    .registers 16
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "idHeaderValue"    # Ljava/lang/String;
    .param p3, "buildProps"    # Lcom/crashlytics/android/beta/BuildProperties;

    .prologue
    const/4 v10, 0x0

    .line 35
    const/4 v8, 0x0

    .line 2079
    .local v8, "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_start_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2081
    const-string/jumbo v0, "build_version"

    iget-object v1, p3, Lcom/crashlytics/android/beta/BuildProperties;->versionCode:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    const-string/jumbo v0, "display_version"

    iget-object v1, p3, Lcom/crashlytics/android/beta/BuildProperties;->versionName:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    const-string/jumbo v0, "instance"

    iget-object v1, p3, Lcom/crashlytics/android/beta/BuildProperties;->buildId:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "3"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .local v9, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v9}, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;->getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v8

    .line 3066
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "application/json"

    invoke-virtual {v8, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Crashlytics Android SDK/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string/jumbo v2, "bca6990fc3c15a8105800c0673517a4b579634a1"

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {v0, v1, p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-D"

    invoke-virtual {v0, v1, p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v8

    .line 42
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Checking for updates from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3085
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->url:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Checking for updates query params are: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3415
    const/16 v0, 0xc8

    invoke-virtual {v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_f8

    const/4 v0, 0x1

    .line 45
    :goto_a9
    if-eqz v0, :cond_fa

    .line 46
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->body()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4024
    const-string/jumbo v1, "url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4025
    const-string/jumbo v2, "version_string"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4026
    const-string/jumbo v3, "build_version"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4027
    const-string/jumbo v3, "display_version"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4028
    const-string/jumbo v5, "identifier"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4029
    const-string/jumbo v6, "instance_identifier"

    const/4 v11, 0x0

    invoke-virtual {v0, v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4031
    new-instance v0, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ec} :catch_125
    .catchall {:try_start_2 .. :try_end_ec} :catchall_14e

    .line 56
    if-eqz v8, :cond_f7

    .line 57
    const-string/jumbo v1, "X-REQUEST-ID"

    invoke-virtual {v8, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 62
    .end local v9    # "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f7
    :goto_f7
    return-object v0

    .line 3415
    .restart local v9    # "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f8
    const/4 v0, 0x0

    goto :goto_a9

    .line 50
    :cond_fa
    :try_start_fa
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Checking for updates failed. Response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_118} :catch_125
    .catchall {:try_start_fa .. :try_end_118} :catchall_14e

    .line 56
    if-eqz v8, :cond_123

    .line 57
    const-string/jumbo v0, "X-REQUEST-ID"

    invoke-virtual {v8, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .end local v9    # "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_123
    :goto_123
    move-object v0, v10

    .line 62
    goto :goto_f7

    .line 53
    :catch_125
    move-exception v7

    .line 54
    .local v7, "e":Ljava/lang/Exception;
    :try_start_126
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error while checking for updates from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4085
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/AbstractSpiCall;->url:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v7}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_142
    .catchall {:try_start_126 .. :try_end_142} :catchall_14e

    .line 56
    if-eqz v8, :cond_123

    .line 57
    const-string/jumbo v0, "X-REQUEST-ID"

    invoke-virtual {v8, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_123

    .line 56
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_14e
    move-exception v0

    if-eqz v8, :cond_15a

    .line 57
    const-string/jumbo v1, "X-REQUEST-ID"

    invoke-virtual {v8, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 59
    :cond_15a
    throw v0
.end method
