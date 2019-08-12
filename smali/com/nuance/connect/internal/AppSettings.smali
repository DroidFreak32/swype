.class public final Lcom/nuance/connect/internal/AppSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AppSettings$Key;
    }
.end annotation


# instance fields
.field private connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentVersion:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customerString:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadIdleTimeout:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialVersion:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initializationTimestamp:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastSentLocation:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mostRecentLocation:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oemLogLevel:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private propertyStore:Lcom/nuance/connect/internal/PropertyStore;

.field private refreshInterval:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reportingAllowed:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private swyperId:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/connect/internal/PropertyStore;

    invoke-direct {v0}, Lcom/nuance/connect/internal/PropertyStore;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iput-object p1, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct {p0}, Lcom/nuance/connect/internal/AppSettings;->loadStoredSettings()V

    return-void
.end method

.method private loadStoredSettings()V
    .locals 14

    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOMER_STRING:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v7, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v7, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->API_DEVICE_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->API_SWYPER_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->INITIAL_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CURRENT_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$LongProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->INITIALIZATION_TIMESTAMP:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$LongProperty;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->LAST_SENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->lastSentLocation:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->lastSentLocation:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->MOST_RECENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->mostRecentLocation:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->mostRecentLocation:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->REPORTING_ALLOWED:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    return-void
.end method


# virtual methods
.method public final getConnectionConcurrentLimit()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getCurrentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadIdleTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getInitialVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getInitializationTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final getLastSentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->lastSentLocation:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLogLevel()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMostRecentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->mostRecentLocation:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSwyperId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isReportingAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/AppSettings$Key;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nuance/connect/internal/PropertyStore;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public final registerSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/PropertyStore;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public final setConnectionConcurrentLimit(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setCurrentVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setCustomerString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setDownloadIdleTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setInitialVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setInitializationTimestamp(Ljava/lang/Long;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setLastSentLocation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->lastSentLocation:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setMostRecentLocation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->mostRecentLocation:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setRefreshInterval(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setReportingAllowed(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setSwyperId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method
