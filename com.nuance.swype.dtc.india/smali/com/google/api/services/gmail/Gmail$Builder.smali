.class public final Lcom/google/api/services/gmail/Gmail$Builder;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 7

    .prologue
    .line 8128
    const-string/jumbo v3, "https://www.googleapis.com/"

    const-string/jumbo v4, "gmail/v1/users/"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;Z)V

    .line 8135
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0}, Lcom/google/api/services/gmail/Gmail$Builder;->build()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0}, Lcom/google/api/services/gmail/Gmail$Builder;->build()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/google/api/services/gmail/Gmail;
    .locals 1

    .prologue
    .line 8140
    new-instance v0, Lcom/google/api/services/gmail/Gmail;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail;-><init>(Lcom/google/api/services/gmail/Gmail$Builder;)V

    return-object v0
.end method

.method public final bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setApplicationName(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8160
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final setGmailRequestInitializer(Lcom/google/api/services/gmail/GmailRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8185
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8191
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8155
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setRootUrl(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8145
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setServicePath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8150
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setSuppressAllChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8175
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setSuppressPatternChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8165
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method

.method public final bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 1

    .prologue
    .line 8102
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 1

    .prologue
    .line 8170
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object v0
.end method
