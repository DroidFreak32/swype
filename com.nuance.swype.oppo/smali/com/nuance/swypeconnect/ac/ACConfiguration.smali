.class public final Lcom/nuance/swypeconnect/ac/ACConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACConfiguration$1;,
        Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;
    }
.end annotation


# static fields
.field public static final MAX_CONNECTIONS_LIMIT:I = 0xa


# instance fields
.field private config:Lcom/nuance/connect/api/ConfigService;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACConfiguration$ConfigServiceWrapper;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACConfiguration$1;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    return-void
.end method


# virtual methods
.method public final backgroundData(ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6d

    const-string v2, "Roaming cannot be enabled when cellular is disabled"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConfigService;->setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    return-void
.end method

.method public final foregroundData(ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6d

    const-string v2, "Roaming cannot be enabled when cellular is disabled"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConfigService;->setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    return-void
.end method

.method public final getConcurrentConnectionLimit()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getConnectionConcurrentLimit()I

    move-result v0

    return v0
.end method

.method public final getCustomerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getCustomerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDownloadIdleTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDownloadIdleTimeout()I

    move-result v0

    return v0
.end method

.method public final getRefreshInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getRefreshInterval()I

    move-result v0

    return v0
.end method

.method public final setConcurrentConnectionLimit(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x71

    const-string v2, "The max connection limit is 10. You may not set it below 0, or above the limit."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setConnectionConcurrentLimit(I)V

    return-void
.end method

.method public final setCustomerString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setCustomerString(Ljava/lang/String;)V

    return-void
.end method

.method public final setDownloadIdleTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x70

    const-string v2, "The download idle timeout must be either -1 or greater than 10."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setDownloadIdleTimeout(I)V

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setLogLevel(I)V

    return-void
.end method

.method public final setRefreshInterval(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getMinimumRefreshInterval()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x71

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Refresh Interval cannot be less then "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v3}, Lcom/nuance/connect/api/ConfigService;->getMinimumRefreshInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setRefreshInterval(I)V

    return-void
.end method
