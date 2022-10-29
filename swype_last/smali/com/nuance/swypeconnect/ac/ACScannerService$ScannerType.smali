.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScannerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum APPLICATION:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum CALL_LOG:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum CONTACTS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum FACEBOOK:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum GMAIL2:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum LIST:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum SMS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum TWITTER:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field public static final enum YAHOO_MAIL:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->SMS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "GMAIL2"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->GMAIL2:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "YAHOO_MAIL"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->YAHOO_MAIL:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "FACEBOOK"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->FACEBOOK:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "TWITTER"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->TWITTER:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "CALL_LOG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->CALL_LOG:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "APPLICATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->APPLICATION:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "CONTACTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->CONTACTS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const-string/jumbo v1, "LIST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->LIST:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->SMS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->GMAIL2:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->YAHOO_MAIL:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->FACEBOOK:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->TWITTER:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->CALL_LOG:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->APPLICATION:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->CONTACTS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->LIST:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method
