.class Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/host/service/BuildSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectBuildSettings"
.end annotation


# instance fields
.field private final acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

.field private final applicationId:Ljava/lang/String;

.field private final buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

.field private final coreVersions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locationServiceEnabled:Z

.field private final properties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;Lcom/nuance/swypeconnect/ac/ACBuildConfig;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->coreVersions:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->applicationId:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->locationServiceEnabled:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->oemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->ANALYTICS_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_DISTANCE:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDistance:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_DELAY:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDelay:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->APPLICATION_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_TIMESTAMP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->APP_KEY_STARTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->appKeyStarts:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_EXPIRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildExpiration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->DEFAULT_DELAY:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultDelay:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->COLLECT_USER_PROPERTIES:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-boolean v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->collectUserProperties:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->livingLanguageMaxEvents:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->MINIMUM_REFRESH_INTERVAL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->minimumRefreshInterval:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->ANONYMOUS_BUILD:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-boolean v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->anonymousBuild:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_PROPERTIES_FILTER_PRE_TOS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterPreTos:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_PROPERTIES_FILTER_BLOCK:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterBlock:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-boolean v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->packageUpdateEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LIVING_LANGUAGE_ENABLED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-boolean v2, p1, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;->livingLanguageEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->CCP_SERVER_URL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->ccpServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LBS_SERVER_URL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LBS_ENABLED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-boolean v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LBS_LOOKUP_INTERVAL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceLookupInterval:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->REQUIRED_LEGAL_DOCUMENTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->requiredLegalDocuments:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->CUSTOM_DATAPOINT_SIZES:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-object v2, p2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->customDatapointSizes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public collectUserProperties()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->collectUserProperties:Z

    return v0
.end method

.method public getAnalyticsLevel()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->ANALYTICS_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAppKeyStarts()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->APP_KEY_STARTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundNetworkDefault()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    invoke-virtual {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildExpiration()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_EXPIRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBuildPropertiesFilterBlock()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterBlock:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildPropertiesFilterPreTos()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterPreTos:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildTimestamp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_TIMESTAMP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCCPServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->ccpServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersions()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->coreVersions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCustomDatapointSizes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->customDatapointSizes:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultDelay()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultDelay:I

    return v0
.end method

.method public getDlmSyncDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundNetworkDefault()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    invoke-virtual {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegacySecretKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LEGACY_SECRET_KEY:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLivingLanguageMaxEventsDefault()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->livingLanguageMaxEvents:I

    return v0
.end method

.method public getLocationDelay()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDelay:I

    return v0
.end method

.method public getLocationDistance()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDistance:I

    return v0
.end method

.method public getLocationLevel()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLocationServiceLookupInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceLookupInterval:I

    return v0
.end method

.method public getLocationServiceServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 2

    const/4 v0, 0x6

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v1, v1, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultLogLevel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMinimumRefreshIntervalDefault()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->minimumRefreshInterval:I

    return v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredLegalDocuments()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->requiredLegalDocuments:Ljava/lang/String;

    return-object v0
.end method

.method public getUdbAnonymousUpload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUpdateLivingLanguageByDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAnonymousBuild()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->anonymousBuild:Z

    return v0
.end method

.method public isChineseCategoryEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;->chineseCategoryEnabled:Z

    return v0
.end method

.method public isDeveloperLogEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->developerLogEnabled:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDlmSyncEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;->livingLanguageEnabled:Z

    return v0
.end method

.method public isLocationServiceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->locationServiceEnabled:Z

    return v0
.end method

.method public isPlatformUpdateEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->packageUpdateEnabled:Z

    return v0
.end method

.method setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->coreVersions:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->coreVersions:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->coreVersions:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->coreVersions:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setLegacySecretKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LEGACY_SECRET_KEY:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setLocationServiceEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->locationServiceEnabled:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LBS_ENABLED:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->ordinal()I

    move-result v1

    iget-boolean v2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->locationServiceEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
