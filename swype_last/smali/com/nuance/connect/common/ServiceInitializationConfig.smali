.class public Lcom/nuance/connect/common/ServiceInitializationConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final anonymousBuild:Z

.field private final apiServerUrl:Ljava/lang/String;

.field private final applicationId:Ljava/lang/String;

.field private final backgroundData:Ljava/lang/String;

.field private final buildPropertiesFilter:Ljava/lang/String;

.field private final buildPropertiesPreTosFilter:Ljava/lang/String;

.field private final collectUserProperties:Z

.field private final connectionLimit:I

.field private final coreVersionAlpha:Ljava/lang/String;

.field private final coreVersionChinese:Ljava/lang/String;

.field private final coreVersionJapanese:Ljava/lang/String;

.field private final coreVersionKorean:Ljava/lang/String;

.field private final customerString:Ljava/lang/String;

.field private final defaultDelay:I

.field private final developerLogEnabled:Z

.field private final foreGroundData:Ljava/lang/String;

.field private final legacySecretKey:Ljava/lang/String;

.field private final locationServerUrl:Ljava/lang/String;

.field private final locationServiceEnabled:Z

.field private final locationServiceLookupInterval:I

.field private final logLevel:I

.field private final minimumSSLProtocol:Ljava/lang/String;

.field private final networkTimeout:I

.field private final oemId:Ljava/lang/String;

.field private final platformUpdateEnabled:Z

.field private final reportingAllowed:Z

.field private final requiredLegalDocuments:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/nuance/connect/common/ServiceInitializationConfig$1;

    invoke-direct {v0}, Lcom/nuance/connect/common/ServiceInitializationConfig$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/common/ServiceInitializationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->oemId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->version:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->apiServerUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServerUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceLookupInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->logLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->developerLogEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->foreGroundData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->backgroundData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->applicationId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->customerString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->anonymousBuild:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->reportingAllowed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesFilter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesPreTosFilter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionAlpha:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionChinese:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionKorean:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionJapanese:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->connectionLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->networkTimeout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->collectUserProperties:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->platformUpdateEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->defaultDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->requiredLegalDocuments:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->minimumSSLProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->legacySecretKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/nuance/connect/common/ServiceInitializationConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->oemId:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$100(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->oemId:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->version:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$200(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->version:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->apiServerUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$300(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->apiServerUrl:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServerUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$400(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServerUrl:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServiceLookupInterval:I
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$500(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceLookupInterval:I

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->locationServiceEnabled:Z
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$600(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceEnabled:Z

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->logLevel:I
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$700(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I

    move-result v0

    if-lez v0, :cond_be

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->logLevel:I
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$700(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I

    move-result v0

    :goto_31
    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->logLevel:I

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->developerLogEnabled:Z
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$800(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->developerLogEnabled:Z

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->applicationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$900(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->applicationId:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->customerString:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1000(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->customerString:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->anonymousBuild:Z
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1100(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->anonymousBuild:Z

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->reportingAllowed:Z
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1200(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->reportingAllowed:Z

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesFilter:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1300(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c1

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesFilter:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1300(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesFilter:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesPreTosFilter:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1400(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c5

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->buildPropertiesPreTosFilter:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1400(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    :goto_67
    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesPreTosFilter:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->foreGroundData:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1500(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->foreGroundData:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->backgroundData:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1600(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->backgroundData:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionAlpha:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1700(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionAlpha:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionChinese:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1800(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionChinese:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionKorean:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$1900(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionKorean:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->coreVersionJapanese:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2000(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionJapanese:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->connectionLimit:I
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2100(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->connectionLimit:I

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->networkTimeout:I
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2200(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->networkTimeout:I

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->collectUserProperties:Z
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2300(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->collectUserProperties:Z

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->platformUpdateEnabled:Z
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2400(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->platformUpdateEnabled:Z

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->defaultDelay:I
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2500(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->defaultDelay:I

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->requiredLegalDocuments:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2600(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->requiredLegalDocuments:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->minimumSSLProtocol:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2700(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->minimumSSLProtocol:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->legacySecretKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;->access$2800(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->legacySecretKey:Ljava/lang/String;

    return-void

    :cond_be
    const/4 v0, 0x6

    goto/16 :goto_31

    :cond_c1
    const-string/jumbo v0, ""

    goto :goto_5b

    :cond_c5
    const-string/jumbo v0, ""

    goto :goto_67
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;Lcom/nuance/connect/common/ServiceInitializationConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;-><init>(Lcom/nuance/connect/common/ServiceInitializationConfig$ServiceInitializationConfigBuilder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/connect/common/ServiceInitializationConfig;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public getApiServerUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->apiServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->backgroundData:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildPropertiesFilter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildPropertiesPreTosFilter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesPreTosFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionLimit()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->connectionLimit:I

    return v0
.end method

.method public getCoreVersionAlpha()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionAlpha:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersionChinese()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionChinese:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersionJapanese()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionJapanese:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersionKorean()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionKorean:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->customerString:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultDelay()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->defaultDelay:I

    return v0
.end method

.method public getForeGroundData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->foreGroundData:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacySecretKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->legacySecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationServerUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationServiceLookupInterval()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceLookupInterval:I

    return v0
.end method

.method public getLogLevel()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->logLevel:I

    return v0
.end method

.method public getMinimumSSLProtocol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->minimumSSLProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTimeout()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->networkTimeout:I

    return v0
.end method

.method public getOemId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->oemId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredLegalDocuments()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->requiredLegalDocuments:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->oemId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->version:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->apiServerUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServerUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceLookupInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->logLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->developerLogEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->foreGroundData:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->backgroundData:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->applicationId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->customerString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->anonymousBuild:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->reportingAllowed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesPreTosFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionAlpha:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionChinese:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionKorean:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionJapanese:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->connectionLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->networkTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->collectUserProperties:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->platformUpdateEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->defaultDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->requiredLegalDocuments:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->minimumSSLProtocol:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->legacySecretKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAnonymousBuild()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->anonymousBuild:Z

    return v0
.end method

.method public isCollectUserProperties()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->collectUserProperties:Z

    return v0
.end method

.method public isDeveloperLogEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->developerLogEnabled:Z

    return v0
.end method

.method public isLocationServiceEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceEnabled:Z

    return v0
.end method

.method public isPlatformUpdateEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->platformUpdateEnabled:Z

    return v0
.end method

.method public isReportingAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->reportingAllowed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceInitializationConfig:  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "oemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->oemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "apiServerUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->apiServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locationServerUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locationServiceLookupInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceLookupInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locationServiceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->logLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "developerLogEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->developerLogEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "foreGroundData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->foreGroundData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "backgroundData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->backgroundData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "applicationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "customerString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->customerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "anonymousBuild: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->anonymousBuild:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportingAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->reportingAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "buildPropertiesFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "buildPropertiesPreTosFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesPreTosFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "coreVersionAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionAlpha:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "coreVersionChinese: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionChinese:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "coreVersionKorean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionKorean:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "coreVersionJapanese: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionJapanese:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "connectionLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->connectionLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "networkTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->networkTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "collectUserProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->collectUserProperties:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "platformUpdateEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->platformUpdateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "defaultDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->defaultDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requiredLegalDocuments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->requiredLegalDocuments:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "minimumSSLProtocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->minimumSSLProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->oemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->apiServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceLookupInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->locationServiceEnabled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->logLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->developerLogEnabled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->foreGroundData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->backgroundData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->customerString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->anonymousBuild:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->reportingAllowed:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->buildPropertiesPreTosFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionAlpha:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionChinese:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionKorean:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->coreVersionJapanese:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->connectionLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->networkTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->collectUserProperties:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->platformUpdateEnabled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->defaultDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->requiredLegalDocuments:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->minimumSSLProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/common/ServiceInitializationConfig;->legacySecretKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
