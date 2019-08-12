.class public Lcom/nuance/connect/internal/UserSettings;
.super Ljava/lang/Object;


# static fields
.field public static final BACKGROUND_DATA_STATE:Ljava/lang/String; = "BACKGROUND_DATA_STATE"

.field public static final EULA_ACCEPTED:Ljava/lang/String; = "CONFIGURATION_EULA_ACCEPTED"

.field public static final FOREGROUND_DATA_STATE:Ljava/lang/String; = "FOREGROUND_DATA_STATE"

.field public static final LIVING_LANGUAGE_MAX_EVENTS:Ljava/lang/String; = "LIVING_LANGUAGE_MAX_EVENTS"

.field public static final TOS_ACCEPTED:Ljava/lang/String; = "CONFIGURATION_TOS_ACCEPTED"

.field public static final TOS_SHOWN:Ljava/lang/String; = "CONFIGURATION_TOS_SHOWN"

.field public static final USER_ALLOW_DATA_COLLECTION:Ljava/lang/String; = "USER_ALLOW_USAGE_COLLECTION"

.field public static final USER_ALLOW_STATISTICS_COLLECTION:Ljava/lang/String; = "USER_ALLOW_STATISTICS_COLLECTION"

.field public static final USER_DLM_SYNC_ACCOUNT_ENABLED:Ljava/lang/String; = "USER_DLM_SYNC_ACCOUNT_ENABLED"

.field public static final USER_DLM_SYNC_ENABLED:Ljava/lang/String; = "USER_DLM_SYNC_ENABLED"

.field public static final USER_LIVING_LANGUAGE_ENABLED:Ljava/lang/String; = "USER_LIVING_LANGUAGE_ENABLED"


# instance fields
.field private backgroundNetworkState:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataCollection:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private dlmSyncAccountEnabled:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private dlmSyncEnabled:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private eulaAccepted:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundNetworkState:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private livingLanguageEnabled:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private livingLanguageMaxEvents:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyStore:Lcom/nuance/connect/internal/PropertyStore;

.field private statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;
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

.field private tosAccepted:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tosShown:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/store/PersistentDataStore;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/connect/internal/PropertyStore;

    invoke-direct {v0}, Lcom/nuance/connect/internal/PropertyStore;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iput-object p1, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/UserSettings;->loadStoredSettings(ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private loadStoredSettings(ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "CONFIGURATION_TOS_ACCEPTED"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosAccepted:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->tosAccepted:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "CONFIGURATION_TOS_SHOWN"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosShown:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->tosShown:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_ALLOW_USAGE_COLLECTION"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "CONFIGURATION_EULA_ACCEPTED"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->eulaAccepted:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->eulaAccepted:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_ALLOW_STATISTICS_COLLECTION"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_DLM_SYNC_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncEnabled:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncEnabled:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_DLM_SYNC_ACCOUNT_ENABLED"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncAccountEnabled:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncAccountEnabled:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_LIVING_LANGUAGE_ENABLED"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageEnabled:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageEnabled:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    const-string v1, "FOREGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    const-string v1, "BACKGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    const-string v1, "LIVING_LANGUAGE_MAX_EVENTS"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageMaxEvents:Lcom/nuance/connect/internal/Property;

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageMaxEvents:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    return-void
.end method


# virtual methods
.method public acceptEula()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->eulaAccepted:Lcom/nuance/connect/internal/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumberOfEvents()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageMaxEvents:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasIntegratorShownTOS()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosShown:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public integratorHasShownTOS()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosShown:Lcom/nuance/connect/internal/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public isDataCollectionAccepted()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDlmSyncAccountEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncAccountEnabled:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDlmSyncEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncEnabled:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEulaAccepted()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->eulaAccepted:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageEnabled:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isStatisticsCollectionAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTOSAccepted()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosAccepted:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/PropertyStore;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setDataCollectionAccepted(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setDlmSyncAccountEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncAccountEnabled:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setDlmSyncEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncEnabled:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setLivingLanguageEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageEnabled:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setMaxNumberOfEvents(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageMaxEvents:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setStatisticsCollectionAllowed(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public userHasAcceptedTOS()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosAccepted:Lcom/nuance/connect/internal/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method
