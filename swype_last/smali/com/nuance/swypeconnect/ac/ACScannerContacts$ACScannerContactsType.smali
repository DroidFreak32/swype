.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACScannerContactsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

.field public static final enum ALL:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

.field public static final enum CITY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

.field public static final enum COUNTRY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

.field public static final enum DISPLAY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

.field public static final enum FAMILY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

.field public static final enum GIVEN_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

.field public static final enum REGION:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const-string/jumbo v1, "DISPLAY_NAME"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->DISPLAY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const-string/jumbo v1, "FAMILY_NAME"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->FAMILY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const-string/jumbo v1, "GIVEN_NAME"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->GIVEN_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const-string/jumbo v1, "CITY"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->CITY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const-string/jumbo v1, "REGION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->REGION:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const-string/jumbo v1, "COUNTRY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->COUNTRY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->DISPLAY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->FAMILY_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->GIVEN_NAME:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->CITY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->REGION:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->COUNTRY:Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerContacts$ACScannerContactsType;

    return-object v0
.end method
