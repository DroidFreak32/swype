.class public Lcom/nuance/connect/service/configuration/ConnectConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;
    }
.end annotation


# static fields
.field private static final ALLOWED_OEM_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASSET_DATA_FILES_FOLDER:Ljava/lang/String; = ""

.field private static final CONFIGURATION_FILE:Ljava/lang/String; = "connect.dat"

.field private static final CONFIGURATION_FILE_ON_APK:Ljava/lang/String; = "connect.dat"

.field private static final DEFAULT_MANUAL_THROTTLE:J

.field private static final DEFAULT_POLL_INTERVAL:J

.field public static final PROPERTY_DEFAULT_DELAY:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final PROPERTY_DLM_ADD_WORD_FREQUENCY:Ljava/lang/String; = "DLM_ADD_WORD_FREQUENCY"

.field public static final PROPERTY_DLM_SYNC_FREQUENCY:Ljava/lang/String; = "DLM_SYNC_FREQUENCY"

.field public static final PROPERTY_KEY_ACCOUNT:Ljava/lang/String; = "KEY_ACCOUNT"

.field public static final PROPERTY_KEY_BUILD:Ljava/lang/String; = "KEY_BUILD"

.field public static final PROPERTY_KEY_DEVICE:Ljava/lang/String; = "KEY_DEVICE"

.field public static final PROPERTY_MQTT_ENABLED:Ljava/lang/String; = "MQTT_ENABLED"

.field public static final PROPERTY_MQTT_HOSTS:Ljava/lang/String; = "MQTT_HOSTS"

.field public static final PROPERTY_MQTT_KEEPALIVE:Ljava/lang/String; = "MQTT_KEEP_ALIVE"

.field public static final PROPERTY_POLLING_FREQUENCY:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final PROPERTY_REPORTING_AGGREGATE_FREQUENCY:Ljava/lang/String; = "AGGREGATE_FREQUENCY"

.field public static final PROPERTY_REPORTING_STATISTICS_FREQUENCY:Ljava/lang/String; = "REPORTING_FREQUENCY"

.field public static final PROPERTY_RESEARCH_UDB_UPLOAD_FREQUENCY:Ljava/lang/String; = "UDB_UPLOAD_FREQUENCY"

.field public static final TYPE_BOOLEAN:I = 0x4

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_OBJECT:I = 0x1

.field public static final TYPE_STRING:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final VERIFY_NEG_ONE:I = 0x5

.field public static final VERIFY_NON_NEGATIVE:I = 0x4

.field public static final VERIFY_POSITIVE:I = 0x3

.field public static final VERIFY_TYPE:I = 0x1

.field public static final VERIFY_UNKNOWN:I = 0x0

.field public static final VERIFY_URL:I = 0x2


# instance fields
.field private booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/nuance/connect/service/ConnectClient;

.field private integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private longVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyStore:Lcom/nuance/connect/internal/PropertyStore;

.field private stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlVerifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "39124"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "62314"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->ALLOWED_OEM_IDS:Ljava/util/List;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_MANUAL_THROTTLE:J

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/internal/PropertyStore;

    invoke-direct {v0}, Lcom/nuance/connect/internal/PropertyStore;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$1;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$2;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->urlVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$4;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    new-instance v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$5;-><init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->longVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setup()V

    return-void
.end method

.method private createFromDigest([B)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "createFromDigest failed; UnsupportedEncodingException"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAPKFileContents(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->ALLOWED_OEM_IDS:Ljava/util/List;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getAPIKFileContents...quitting"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-static {v2, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->readBytes(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getConfigurationFilenameOnFilesystem()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "connect.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidConfiguration([B)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->createFromDigest([B)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfigurationProperties(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setConfigurationProperties(Ljava/util/Map;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-object v0
.end method

.method private setConfigurationProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v1, v0, v3}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setup()V
    .locals 11

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_ALLOWED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->TOS_ACCEPTED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://api.swypeconnect.com/"

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->urlVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/nuance/connect/service/manager/SessionManager;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/nuance/connect/service/manager/SessionManager;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_SYNC:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_CHINESE_DATABASE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_LIVING_LANGUAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_LANGUAGE_DOWNLOAD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_CATALOG:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_PLATFORM_UPDATE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MANUAL_REFRESH_THROTTLE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_MANUAL_THROTTLE:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$LongProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->QUEUE_RESUME_TIMESTAMP:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->longVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$LongProperty;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_LOADTIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_TIME_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5a

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_MAX_RESULTS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc350

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->AGGREGATE_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_AGGREGATE_TIME_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5a

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->UDB_UPLOAD_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x19

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_CELLULAR_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_WIFI_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->HTTP_ANALYTICS_TIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->HTTP_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0xa00000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_SYNC_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DLM_ADD_WORD_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->KEY_DEVICE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->KEY_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->KEY_ACCOUNT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->ACCOUNT_ACCOUNT_EMAIL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATEGORY_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LANG_AUTO_LIST:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$LongProperty;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LAST_CHECKIN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/nuance/connect/internal/GenericProperty$LongProperty;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/nuance/connect/store/PersistentDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LICENSED_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_PROPERTIES_FILTER_BLOCK:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_PROPERTIES_FILTER_PRE_TOS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_SERVER_URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://lbs.swypeconnect.com/"

    const/4 v4, 0x2

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->urlVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_LOOKUP_INTERVAL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->DEFAULT_POLL_INTERVAL:J

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->booleanVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATALOG_SKU_LIST:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FEATURES_LAST_USED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v4, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVICE_PROPERTIES_UPDATED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->stringVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v4 .. v10}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v0, v4}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    iget-object v7, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATALOG_LIST_REFRESH_MINIMUM_WAIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->integerVerifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->loadOverrides()V

    return-void
.end method

.method private validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p3}, Lcom/nuance/connect/internal/Property;->verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Validation failed while loading override values for "

    const-string/jumbo v3, " : "

    invoke-interface {v1, v2, p1, v3, p2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/PropertyStore;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public final createFromString(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "createFromString failed: "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->context:Lcom/nuance/connect/service/ConnectClient;

    return-void
.end method

.method public getBoolean(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigurationDigest(Z)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationFromFileSystem(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "connect.dat"

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getAPKFileContents(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigurationFromFileSystem(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationFilenameOnFilesystem()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->ALLOWED_OEM_IDS:Ljava/util/List;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v2, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->readBytes(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final isValidConfigurationProperties(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v1, v0, v3}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadOverrides()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfiguration([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfiguration([B)Z

    :cond_0
    return-void
.end method

.method public overrideFromServer(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error overriding configration value "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p2, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error overriding configration value "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public overrideFromServer(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error overriding configration value "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$LongProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/nuance/connect/internal/GenericProperty$LongProperty;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    return-void
.end method

.method public setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    new-instance v1, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/PropertyStore;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v4, v0}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromInitializationConfig(Lcom/nuance/connect/common/ServiceInitializationConfig;)V
    .locals 3

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getApiServerUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getApiServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    :cond_1
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_SERVER_URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getLocationServerUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_SERVER_URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getLocationServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_LOOKUP_INTERVAL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getLocationServiceLookupInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_LOOKUP_INTERVAL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getLocationServiceLookupInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    :cond_3
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->isLocationServiceEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->isLocationServiceEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    :cond_4
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->isDeveloperLogEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->isDeveloperLogEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    :cond_5
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getDefaultDelay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getDefaultDelay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    :cond_6
    return-void
.end method

.method public updateFromString(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->isValidConfigurationProperties(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/internal/PropertyStore;->getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v1, v0, v3}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
