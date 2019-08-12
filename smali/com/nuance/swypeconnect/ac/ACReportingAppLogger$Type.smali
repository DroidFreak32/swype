.class final enum Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

.field public static final enum APP_LOGGING_INSTALLED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

.field public static final enum APP_LOGGING_LIST:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

.field public static final enum APP_LOGGING_REMOVED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

.field public static final enum SDK_SHUTDOWN:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

.field public static final enum SDK_STARTUP:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    const-string v1, "APP_LOGGING_LIST"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_LIST:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    const-string v1, "APP_LOGGING_INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_INSTALLED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    const-string v1, "APP_LOGGING_REMOVED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_REMOVED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    const-string v1, "SDK_STARTUP"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->SDK_STARTUP:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    const-string v1, "SDK_SHUTDOWN"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->SDK_SHUTDOWN:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_LIST:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_INSTALLED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_REMOVED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->SDK_STARTUP:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->SDK_SHUTDOWN:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    return-object v0
.end method
