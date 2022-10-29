.class public Lcom/nuance/connect/util/BuildProperties;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/BuildProps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/BuildProperties$2;
    }
.end annotation


# static fields
.field private static final IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

.field private static final IGNORE_CHANGE_TO_NULL:[Ljava/lang/String;

.field private static final REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;


# instance fields
.field private final DEVICE_PROPERTIES:[Ljava/lang/String;

.field private USER_PROPERTIES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private boolListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/ConnectClient;",
            ">;"
        }
    .end annotation
.end field

.field private final criticalProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final customProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterBlock:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterPreTos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private nuanceId:Lcom/nuance/id/NuanceId;

.field private tosAccepted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->LANGUAGES:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SUPPORTED_LANGUAGES:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MANUFACTURER:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MODEL:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SCREENRESOLUTION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/util/BuildProps$BuildProperty;->IMEI_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SERIAL_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ANDROIDID_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MAC_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/util/BuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->IMEI_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SERIAL_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ANDROIDID_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MAC_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/connect/util/BuildProperties;->IGNORE_CHANGE_TO_NULL:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SCREENRESOLUTION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DEVICE_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPER_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/connect/util/BuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->filterPreTos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->filterBlock:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->criticalProperties:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->customProperties:Ljava/util/Map;

    new-instance v0, Lcom/nuance/connect/util/BuildProperties$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/BuildProperties$1;-><init>(Lcom/nuance/connect/util/BuildProperties;)V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->TOS_ACCEPTED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/util/BuildProperties;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p1, v0, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_PROPERTIES_FILTER_PRE_TOS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_5d
    if-ge v0, v3, :cond_6d

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/nuance/connect/util/BuildProperties;->filterPreTos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6d
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Pre-Filter: "

    iget-object v3, p0, Lcom/nuance/connect/util/BuildProperties;->filterPreTos:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_PROPERTIES_FILTER_BLOCK:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a2

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_88
    if-ge v0, v3, :cond_98

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/nuance/connect/util/BuildProperties;->filterBlock:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    :cond_98
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Block Filter: "

    iget-object v3, p0, Lcom/nuance/connect/util/BuildProperties;->filterBlock:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a2
    invoke-static {}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getCriticalProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;

    iget-object v3, p0, Lcom/nuance/connect/util/BuildProperties;->criticalProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_c0
    invoke-static {}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->values()[Lcom/nuance/connect/util/BuildProps$BuildProperty;

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    move v0, v1

    :goto_ca
    array-length v1, v2

    if-ge v0, v1, :cond_da

    iget-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    :cond_da
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->IMEI_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SERIAL_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ANDROIDID_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MAC_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/util/BuildProperties;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/util/BuildProperties;->tosAccepted:Z

    return p1
.end method

.method private checkUserProperties()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_16

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->COLLECT_USER_PROPERTIES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method protected static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Landroid/os/Build;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method

.method private readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    return-object p2
.end method


# virtual methods
.method public compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/util/BuildProperties;->checkUserProperties()Z

    move-result v3

    if-eqz p2, :cond_e

    array-length v0, p2

    if-nez v0, :cond_12

    :cond_e
    invoke-virtual {p0}, Lcom/nuance/connect/util/BuildProperties;->getAllDeviceProperties()[Ljava/lang/String;

    move-result-object p2

    :cond_12
    new-instance v4, Ljava/util/HashSet;

    sget-object v0, Lcom/nuance/connect/util/BuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    sget-object v0, Lcom/nuance/connect/util/BuildProperties;->IGNORE_CHANGE_TO_NULL:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/nuance/connect/util/BuildProperties;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v6

    if-eqz p1, :cond_8a

    array-length v7, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_31
    if-ge v1, v7, :cond_8a

    aget-object v8, p2, v1

    if-nez v3, :cond_3f

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_3f
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6c

    :cond_57
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_70

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_70
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_86
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_8a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public get(Lcom/nuance/connect/util/BuildProps$BuildProperty;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/util/BuildProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v1, Lcom/nuance/id/NuanceId;

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAllDeviceProperties()[Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->customProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->customProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    :cond_3b
    return-object v2
.end method

.method public getCriticalProperties()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nuance/connect/util/BuildProperties;->criticalProperties:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDeviceProperties()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/util/BuildProperties;->checkUserProperties()Z

    move-result v1

    new-instance v3, Lcom/nuance/id/NuanceId;

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    iget-object v3, p0, Lcom/nuance/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v4, :cond_34

    aget-object v5, v3, v0

    if-nez v1, :cond_2a

    iget-object v6, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    :cond_2a
    invoke-virtual {p0, v5}, Lcom/nuance/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_34
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->customProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_5a
    return-object v2
.end method

.method protected getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/BuildProperties;->getFilteredDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFilteredDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 0
    iget-boolean v0, p0, Lcom/nuance/connect/util/BuildProperties;->tosAccepted:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->filterPreTos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->criticalProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Filtering: "

    const-string/jumbo v3, "; TOS not accepted"

    invoke-interface {v0, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_22
    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Request to filter: "

    const-string/jumbo v3, " denied; property is in critical list."

    invoke-interface {v0, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    :goto_2e
    invoke-static {p1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->from(Ljava/lang/String;)Lcom/nuance/connect/util/BuildProps$BuildProperty;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4ca

    move-object v0, v1

    goto :goto_22

    :cond_3f
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->filterBlock:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->criticalProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Filtering: "

    const-string/jumbo v3, "; property is in block list."

    invoke-interface {v0, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_22

    :cond_5c
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Request to filter: "

    const-string/jumbo v3, " denied; property is in critical list."

    invoke-interface {v0, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2e

    :pswitch_68
    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :pswitch_71
    const-string/jumbo v0, ""

    goto :goto_22

    :pswitch_75
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_22

    :pswitch_78
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_ba
    const-string/jumbo v0, "LANGUAGE_PREINSTALL_LIST"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_c6
    const-string/jumbo v0, "LANGUAGE_SUPPORTED_LIST"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_d2
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SWIB:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_e4
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_f6
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SDK_VERSION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_108
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_11a
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_12c
    const-string/jumbo v0, "DEVICE_ID"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_143
    const-string/jumbo v0, "SWYPER_ID"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_14c
    const-string/jumbo v0, "LANGUAGES_DL"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_155
    move-object v0, v1

    goto/16 :goto_22

    :pswitch_158
    move-object v0, v1

    goto/16 :goto_22

    :pswitch_15b
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_16d
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_18d

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :cond_18d
    const-string/jumbo v0, "0"

    goto/16 :goto_22

    :pswitch_192
    const/16 v1, 0xa0

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4c7

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_1b9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_1bf
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    .line 1000
    invoke-virtual {v0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v1, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iget-object v0, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 0
    :pswitch_1d5
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    .line 2000
    invoke-virtual {v0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v1, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iget-object v0, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 0
    :pswitch_1ec
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    .line 3000
    invoke-virtual {v0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v1, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iget-object v2, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x3

    iget-object v0, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 0
    :pswitch_209
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    .line 4000
    invoke-virtual {v0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    iget-object v1, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iget-object v0, v0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 0
    :pswitch_222
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    .line 5000
    invoke-virtual {v0}, Lcom/nuance/id/NuanceId;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/id/NuanceIdImpl;->sha1hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 0
    :pswitch_22e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_238
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_24a
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_25c
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_26e
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_280
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_292
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_2af
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v4, :cond_4af

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_2d2
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_2ef
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_30c
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_329
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_346
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v4, :cond_4af

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_369
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_379
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_38b
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATALOG_SKU_LIST:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_39d
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_3b3
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->LANGUAGE:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_3c5
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->LLUDA:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_3d7
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->HOTWORDS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_3e9
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->REPORTING:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_3fb
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->CHINESEDICTIONARIES:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_40d
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->CCPS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_41f
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->DLT:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_431
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->BACKUP_SYNC:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_443
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_CALLLOG:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_455
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_CONTACTS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_467
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_FACEBOOK:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_479
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_GMAIL:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_48b
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_SMS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :pswitch_49d
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_4af

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_TWITTER:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getUsedLastForFeature(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :cond_4af
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable to retrieve property: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_22

    :cond_4c7
    move v0, v1

    goto/16 :goto_1b9

    :pswitch_data_4ca
    .packed-switch 0x1
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_71
        :pswitch_75
        :pswitch_78
        :pswitch_ba
        :pswitch_c6
        :pswitch_d2
        :pswitch_e4
        :pswitch_f6
        :pswitch_108
        :pswitch_11a
        :pswitch_12c
        :pswitch_135
        :pswitch_143
        :pswitch_14c
        :pswitch_155
        :pswitch_158
        :pswitch_15b
        :pswitch_16d
        :pswitch_192
        :pswitch_1bf
        :pswitch_1d5
        :pswitch_1ec
        :pswitch_209
        :pswitch_222
        :pswitch_22e
        :pswitch_238
        :pswitch_24a
        :pswitch_25c
        :pswitch_26e
        :pswitch_280
        :pswitch_292
        :pswitch_2af
        :pswitch_2d2
        :pswitch_2ef
        :pswitch_30c
        :pswitch_329
        :pswitch_346
        :pswitch_369
        :pswitch_379
        :pswitch_38b
        :pswitch_39d
        :pswitch_3b3
        :pswitch_3c5
        :pswitch_3d7
        :pswitch_3e9
        :pswitch_3fb
        :pswitch_40d
        :pswitch_41f
        :pswitch_431
        :pswitch_443
        :pswitch_455
        :pswitch_467
        :pswitch_479
        :pswitch_48b
        :pswitch_49d
    .end packed-switch
.end method

.method public hasRequiredDeviceProperties(Ljava/util/HashMap;)[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/nuance/connect/util/BuildProperties;->checkUserProperties()Z

    move-result v2

    sget-object v3, Lcom/nuance/connect/util/BuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_27

    aget-object v5, v3, v0

    if-nez v2, :cond_1b

    iget-object v6, p0, Lcom/nuance/connect/util/BuildProperties;->USER_PROPERTIES:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    :cond_1b
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_27
    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWIB:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->OEM_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWIB:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setCustomProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-static {p1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->isKnownProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "setCustomProperty called with known property name: "

    const-string/jumbo v2, "; ignoring..."

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->customProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->criticalProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/util/BuildProperties;->criticalProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method
