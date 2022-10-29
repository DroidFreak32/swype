.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACScannerApplicationTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

.field public static final enum ALL:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

.field public static final enum NON_SYSTEM:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    const-string/jumbo v1, "NON_SYSTEM"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->NON_SYSTEM:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->NON_SYSTEM:Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerApplications$ACScannerApplicationTypes;

    return-object v0
.end method
