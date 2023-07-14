.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerGmail2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACScannerGmailContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

.field public static final enum BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

.field public static final enum CC:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

.field public static final enum FROM:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

.field public static final enum SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

.field public static final enum TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;


# instance fields
.field private keyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    const-string/jumbo v1, "SUBJECT"

    const-string/jumbo v2, "Subject"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    const-string/jumbo v1, "BODY"

    const-string/jumbo v2, "Body"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    const-string/jumbo v1, "TO"

    const-string/jumbo v2, "To"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    const-string/jumbo v1, "CC"

    const-string/jumbo v2, "Cc"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->CC:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    const-string/jumbo v1, "FROM"

    const-string/jumbo v2, "From"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->FROM:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->CC:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->FROM:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->keyName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    return-object v0
.end method
