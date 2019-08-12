.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerGmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACScannerGmailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

.field public static final enum SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    return-object v0
.end method
