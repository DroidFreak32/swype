.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerGmail2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACScannerGmailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

.field public static final enum INBOX:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

.field public static final enum SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;


# instance fields
.field private keyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    const-string/jumbo v1, "SENT"

    const-string/jumbo v2, "sent"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    const-string/jumbo v1, "INBOX"

    const-string/jumbo v2, "inbox"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->INBOX:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->INBOX:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->keyName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    return-object v0
.end method
