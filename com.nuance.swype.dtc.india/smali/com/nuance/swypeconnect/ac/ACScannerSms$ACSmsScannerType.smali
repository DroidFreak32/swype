.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACSmsScannerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

.field public static final enum ALL:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

.field public static final enum INBOX:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

.field public static final enum SENT:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    const-string/jumbo v1, "INBOX"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->INBOX:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    const-string/jumbo v1, "SENT"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->INBOX:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerSms$ACSmsScannerType;

    return-object v0
.end method
