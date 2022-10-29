.class public final Lcom/nuance/connect/internal/AppSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AppSettings$Key;
    }
.end annotation


# static fields
.field private static final SETTING_PREFIX:Ljava/lang/String; = "CUSTOMER_"


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

.field private customProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property;",
            ">;"
        }
    .end annotation
.end field

.field private customPropertyString:Lcom/nuance/connect/internal/Property;
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

.field private minimumSSLProtocol:Lcom/nuance/connect/internal/Property;
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

.field private service:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

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
.method public constructor <init>(Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/connect/internal/PropertyStore;

    invoke-direct {v0}, Lcom/nuance/connect/internal/PropertyStore;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    iput-object p1, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p2, p0, Lcom/nuance/connect/internal/AppSettings;->service:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/AppSettings;->loadStoredSettings()V

    return-void
.end method

.method private loadCustomProperties()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customPropertyString:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/connect/internal/AppSettings;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_17

    :cond_33
    return-void
.end method

.method private loadStoredSettings()V
    .registers 10

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const/4 v4, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v4, v7

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

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOMER_STRING:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->API_DEVICE_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->API_SWYPER_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v4, v7

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

    move v4, v7

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

    move v4, v7

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

    move v4, v7

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

    move v4, v7

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

    move v4, v7

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

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOM_PROPERTY:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customPropertyString:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->customPropertyString:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->MINIMUM_SSL_PROTOCOL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    move-object v3, v6

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->minimumSSLProtocol:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->minimumSSLProtocol:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/AppSettings;->loadCustomProperties()V

    return-void
.end method

.method private writeCustomProperties()V
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_2b
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customPropertyString:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method


# virtual methods
.method public final deleteConfigurationProperty(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "CUSTOMER_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CUSTOMER_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_19
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unknown Configuration"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nuance/connect/internal/AppSettings;->writeCustomProperties()V

    return-void
.end method

.method public final getConfigurationProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "CUSTOMER_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CUSTOMER_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_19
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unknown Configuration"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionConcurrentLimit()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getCurrentVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadIdleTimeout()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getInitialVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getInitializationTimestamp()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final getLastSentLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->lastSentLocation:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLogLevel()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMinimumSSLProtocol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->minimumSSLProtocol:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMostRecentLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->mostRecentLocation:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshInterval()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSwyperId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isReportingAllowed()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .registers 5
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
    .registers 4
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

.method public final sendCustomProperties()V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property;

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->service:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendCustomProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_35
    return-void
.end method

.method public final setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-string/jumbo v0, "CUSTOMER_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CUSTOMER_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->service:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendCustomProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_43
    invoke-direct {p0}, Lcom/nuance/connect/internal/AppSettings;->writeCustomProperties()V

    return-void

    :cond_47
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p2, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/AppSettings;->customProperties:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->service:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendCustomProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_43

    :cond_69
    move-object v1, p1

    goto :goto_19
.end method

.method public final setConnectionConcurrentLimit(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setCurrentVersion(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setCustomerString(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setDownloadIdleTimeout(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setInitialVersion(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setInitializationTimestamp(Ljava/lang/Long;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setLastSentLocation(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->lastSentLocation:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setLogLevel(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setMinimumSSLProtocol(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->minimumSSLProtocol:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setMostRecentLocation(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->mostRecentLocation:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setRefreshInterval(I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setReportingAllowed(Z)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->reportingAllowed:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public final setSwyperId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method
