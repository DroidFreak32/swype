.class public Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/common/ServiceInitializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInitializationConfigBuilder"
.end annotation


# instance fields
.field private anonymousBuild:Z

.field private apiServerUrl:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private backgroundData:Ljava/lang/String;

.field private buildPropertiesFilter:Ljava/lang/String;

.field private buildPropertiesPreTosFilter:Ljava/lang/String;

.field private collectUserProperties:Z

.field private connectionLimit:I

.field private coreVersionAlpha:Ljava/lang/String;

.field private coreVersionChinese:Ljava/lang/String;

.field private coreVersionJapanese:Ljava/lang/String;

.field private coreVersionKorean:Ljava/lang/String;

.field private customerString:Ljava/lang/String;

.field private defaultDelay:I

.field private developerLogEnabled:Z

.field private foreGroundData:Ljava/lang/String;

.field private legacySecretKey:Ljava/lang/String;

.field private locationServerUrl:Ljava/lang/String;

.field private locationServiceEnabled:Z

.field private locationServiceLookupInterval:I

.field private logLevel:I

.field private minimumSSLProtocol:Ljava/lang/String;

.field private networkTimeout:I

.field private oemId:Ljava/lang/String;

.field private platformUpdateEnabled:Z

.field private reportingAllowed:Z

.field private requiredLegalDocuments:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->oemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->customerString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->anonymousBuild:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->reportingAllowed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesPreTosFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->foreGroundData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->backgroundData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionAlpha:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionChinese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionKorean:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionJapanese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->connectionLimit:I

    return v0
.end method

.method static synthetic access$2200(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->networkTimeout:I

    return v0
.end method

.method static synthetic access$2300(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->collectUserProperties:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->platformUpdateEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->defaultDelay:I

    return v0
.end method

.method static synthetic access$2600(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->requiredLegalDocuments:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->minimumSSLProtocol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->legacySecretKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->apiServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServiceLookupInterval:I

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServiceEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->logLevel:I

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->developerLogEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->applicationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/nuance/connect/common/ServiceInitializationConfig;
    .locals 2

    new-instance v0, Lcom/nuance/connect/common/ServiceInitializationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/common/ServiceInitializationConfig;-><init>(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;Lcom/nuance/connect/common/ServiceInitializationConfig$1;)V

    return-object v0
.end method

.method public setAnonymousBuild(Z)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->anonymousBuild:Z

    return-object p0
.end method

.method public setApiServerUrl(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->apiServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method public setBackgroundData(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->backgroundData:Ljava/lang/String;

    return-object p0
.end method

.method public setBuildPropertiesFilter(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesFilter:Ljava/lang/String;

    return-object p0
.end method

.method public setBuildPropertiesPreTosFilter(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesPreTosFilter:Ljava/lang/String;

    return-object p0
.end method

.method public setCollectUserProperties(Z)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->collectUserProperties:Z

    return-object p0
.end method

.method public setConnectionLimit(I)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->connectionLimit:I

    return-object p0
.end method

.method public setCoreVersionAlpha(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionAlpha:Ljava/lang/String;

    return-object p0
.end method

.method public setCoreVersionChinese(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionChinese:Ljava/lang/String;

    return-object p0
.end method

.method public setCoreVersionJapanese(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionJapanese:Ljava/lang/String;

    return-object p0
.end method

.method public setCoreVersionKorean(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionKorean:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomerString(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->customerString:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultDelay(I)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->defaultDelay:I

    return-object p0
.end method

.method public setDeveloperLogEnabled(Z)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->developerLogEnabled:Z

    return-object p0
.end method

.method public setForeGroundData(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->foreGroundData:Ljava/lang/String;

    return-object p0
.end method

.method public setLegacySecretKey(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->legacySecretKey:Ljava/lang/String;

    return-object p0
.end method

.method public setLocationServerUrl(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setLocationServiceEnabled(Z)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServiceEnabled:Z

    return-object p0
.end method

.method public setLocationServiceLookupInterval(I)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServiceLookupInterval:I

    return-object p0
.end method

.method public setLogLevel(I)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->logLevel:I

    return-object p0
.end method

.method public setMinimumSSLProtocol(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->minimumSSLProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public setNetworkTimeout(I)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->networkTimeout:I

    return-object p0
.end method

.method public setOemId(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->oemId:Ljava/lang/String;

    return-object p0
.end method

.method public setPlatformUpdateEnabled(Z)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->platformUpdateEnabled:Z

    return-object p0
.end method

.method public setReportingAllowed(Z)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->reportingAllowed:Z

    return-object p0
.end method

.method public setRequiredLegalDocuments(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->requiredLegalDocuments:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->version:Ljava/lang/String;

    return-object p0
.end method
