.class Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ConfigService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigServiceWrapper"
.end annotation


# instance fields
.field private config:Lcom/nuance/connect/api/ConfigService;

.field private connect:Lcom/nuance/connect/api/ConnectServiceManager;


# direct methods
.method private constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    return-void
.end method


# virtual methods
.method public deleteConfigurationProperty(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->deleteConfigurationProperty(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveLanguages()[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLanguages()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLocale()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigurationProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->getConfigurationProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConcurrentLimit()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getConnectionConcurrentLimit()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomExternalConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->getCustomExternalConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomExternalConfigurationKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getCustomExternalConfigurationKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getCustomerString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadIdleTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDownloadIdleTimeout()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitialVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getInitialVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitializationTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getInitializationTimestamp()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumRefreshInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getMinimumRefreshInterval()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRefreshInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getRefreshInterval()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsageDataState()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getUsageDataState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveLanguages([I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setActiveLanguages([I)V

    :cond_0
    return-void
.end method

.method public setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    :cond_0
    return-void
.end method

.method public setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/api/ConfigService;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setConnectionConcurrentLimit(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setConnectionConcurrentLimit(I)V

    :cond_0
    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setCurrentVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setCustomerString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDownloadIdleTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setDownloadIdleTimeout(I)V

    :cond_0
    return-void
.end method

.method public setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    :cond_0
    return-void
.end method

.method public setInitialVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setInitialVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInitializationTimestamp(Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setInitializationTimestamp(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public setLogLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setLogLevel(I)V

    :cond_0
    return-void
.end method

.method public setMinimumSSLProtocol(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setMinimumSSLProtocol(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setRefreshInterval(I)V

    :cond_0
    return-void
.end method

.method public setUsageDataState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setUsageDataState(Z)V

    :cond_0
    return-void
.end method
