.class public final enum Lcom/nuance/connect/internal/AppSettings$Key;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/AppSettings$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum API_DEVICE_ID:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum API_SWYPER_ID:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum CONFIGURATION_PROPERTIES:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum CURRENT_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum CUSTOMER_STRING:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum CUSTOM_PROPERTY:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum INITIALIZATION_TIMESTAMP:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum INITIAL_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum LAST_SENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum MINIMUM_SSL_PROTOCOL:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum MOST_RECENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

.field public static final enum REPORTING_ALLOWED:Lcom/nuance/connect/internal/AppSettings$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "CONFIGURATION_CONNECTION_CONCURRENT_LIMIT"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "DOWNLOAD_IDLE_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "CUSTOMER_STRING"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOMER_STRING:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "OEM_LOG_LEVEL"

    invoke-direct {v0, v1, v6}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "CONFIGURATION_REFRESH_INTERVAL"

    invoke-direct {v0, v1, v7}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "API_DEVICE_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->API_DEVICE_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "API_SWYPER_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->API_SWYPER_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "INITIAL_VERSION_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->INITIAL_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "CURRENT_VERSION_NUMBER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CURRENT_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "INITIALIZATION_TIMESTAMP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->INITIALIZATION_TIMESTAMP:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "LAST_SENT_LOCATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->LAST_SENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "MOST_RECENT_LOCATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->MOST_RECENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "REPORTING_ALLOWED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->REPORTING_ALLOWED:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "CONFIGURATION_PROPERTIES"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_PROPERTIES:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "CUSTOM_PROPERTY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOM_PROPERTY:Lcom/nuance/connect/internal/AppSettings$Key;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings$Key;

    const-string/jumbo v1, "MINIMUM_SSL_PROTOCOL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/AppSettings$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->MINIMUM_SSL_PROTOCOL:Lcom/nuance/connect/internal/AppSettings$Key;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/nuance/connect/internal/AppSettings$Key;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOMER_STRING:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->API_DEVICE_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->API_SWYPER_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->INITIAL_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->CURRENT_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->INITIALIZATION_TIMESTAMP:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->LAST_SENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->MOST_RECENT_LOCATION:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->REPORTING_ALLOWED:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_PROPERTIES:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOM_PROPERTY:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->MINIMUM_SSL_PROTOCOL:Lcom/nuance/connect/internal/AppSettings$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->$VALUES:[Lcom/nuance/connect/internal/AppSettings$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/AppSettings$Key;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/AppSettings$Key;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/AppSettings$Key;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->$VALUES:[Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/AppSettings$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/AppSettings$Key;

    return-object v0
.end method
