.class final Lcom/nuance/swypeconnect/ac/ACBuildConfig;
.super Ljava/lang/Object;


# instance fields
.field final anonymousBuild:Z

.field final appKeyStarts:Ljava/lang/String;

.field final buildExpiration:Ljava/lang/String;

.field final buildPropertiesFilterBlock:Ljava/lang/String;

.field final buildPropertiesFilterPreTos:Ljava/lang/String;

.field final buildTimestamp:Ljava/lang/String;

.field final collectUserProperties:Z

.field final defaultDelay:I

.field final defaultLogLevel:Ljava/lang/String;

.field final developerLogEnabled:Ljava/lang/String;

.field final languageDownloadServiceClass:Ljava/lang/String;

.field final legalDocumentsClass:Ljava/lang/String;

.field final livingLanguageMaxEvents:I

.field final locationDelay:I

.field final locationDistance:I

.field final locationLevel:Ljava/lang/String;

.field final minimumRefreshInterval:I

.field final oemId:Ljava/lang/String;

.field final packageUpdateEnabled:Z

.field final reportingLogHelperClass:Ljava/lang/String;

.field final url:Ljava/lang/String;

.field final version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3.3.0.33933"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->version:Ljava/lang/String;

    const-string v0, "62314"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->oemId:Ljava/lang/String;

    const-string v0, "https://api-swype.swypeconnect.com/"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->url:Ljava/lang/String;

    const-string v0, "20150130.081647"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildTimestamp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildExpiration:Ljava/lang/String;

    const-string v0, "SWYPE"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->appKeyStarts:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationLevel:Ljava/lang/String;

    const/16 v0, 0x64a

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDistance:I

    const v0, 0x1b7740

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationDelay:I

    const-string v0, "false"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->developerLogEnabled:Ljava/lang/String;

    const-string v0, "6"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultLogLevel:Ljava/lang/String;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultDelay:I

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->collectUserProperties:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->livingLanguageMaxEvents:I

    const/16 v0, 0xe10

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->minimumRefreshInterval:I

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->packageUpdateEnabled:Z

    const-string v0, "com.nuance.swypeconnect.ac.oem_62314.ACLegalDocumentsNuance"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->legalDocumentsClass:Ljava/lang/String;

    const-string v0, "com.nuance.swypeconnect.ac.oem_62314.ACLanguageDownloadServiceNuance"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->languageDownloadServiceClass:Ljava/lang/String;

    const-string v0, "com.nuance.swypeconnect.ac.oem_62314.ACReportingLogHelperNuance"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->reportingLogHelperClass:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->anonymousBuild:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterBlock:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildPropertiesFilterPreTos:Ljava/lang/String;

    return-void
.end method
