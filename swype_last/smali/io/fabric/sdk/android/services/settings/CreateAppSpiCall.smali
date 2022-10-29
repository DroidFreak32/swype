.class public final Lio/fabric/sdk/android/services/settings/CreateAppSpiCall;
.super Lio/fabric/sdk/android/services/settings/AbstractAppSpiCall;
.source "CreateAppSpiCall.java"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V
    .registers 11
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .prologue
    .line 15
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->POST:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/settings/AbstractAppSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Lio/fabric/sdk/android/services/settings/AppRequestData;)Z
    .registers 3
    .param p1, "x0"    # Lio/fabric/sdk/android/services/settings/AppRequestData;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lio/fabric/sdk/android/services/settings/AbstractAppSpiCall;->invoke(Lio/fabric/sdk/android/services/settings/AppRequestData;)Z

    move-result v0

    return v0
.end method
