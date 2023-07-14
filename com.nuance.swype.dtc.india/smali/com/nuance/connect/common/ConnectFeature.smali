.class public final enum Lcom/nuance/connect/common/ConnectFeature;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/common/ConnectFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum CATALOG:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum CHINESE_PREDICTION:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum CONFIG:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum DLM:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum REPORTING:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum SYNC:Lcom/nuance/connect/common/ConnectFeature;

.field public static final enum UPDATE:Lcom/nuance/connect/common/ConnectFeature;


# instance fields
.field private dependencies:[Lcom/nuance/connect/common/ConnectFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "CONFIG"

    new-array v2, v5, [Lcom/nuance/connect/common/ConnectFeature;

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "DOCUMENTS"

    new-array v2, v6, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "LANGUAGE"

    new-array v2, v7, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "ACCOUNT"

    new-array v2, v7, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "DLM"

    new-array v2, v6, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v9, v2}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "SYNC"

    const/4 v2, 0x5

    new-array v3, v9, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v6

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v7

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "CATEGORY"

    const/4 v2, 0x6

    new-array v3, v8, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v6

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "LIVING_LANGUAGE"

    const/4 v2, 0x7

    new-array v3, v7, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "REPORTING"

    const/16 v2, 0x8

    new-array v3, v6, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "UPDATE"

    const/16 v2, 0x9

    new-array v3, v7, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "ADDON_DICTIONARIES"

    const/16 v2, 0xa

    new-array v3, v7, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "CHINESE_PREDICTION"

    const/16 v2, 0xb

    new-array v3, v6, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->CHINESE_PREDICTION:Lcom/nuance/connect/common/ConnectFeature;

    new-instance v0, Lcom/nuance/connect/common/ConnectFeature;

    const-string/jumbo v1, "CATALOG"

    const/16 v2, 0xc

    new-array v3, v7, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/common/ConnectFeature;-><init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATALOG:Lcom/nuance/connect/common/ConnectFeature;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nuance/connect/common/ConnectFeature;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CHINESE_PREDICTION:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CATALOG:Lcom/nuance/connect/common/ConnectFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/common/ConnectFeature;->$VALUES:[Lcom/nuance/connect/common/ConnectFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lcom/nuance/connect/common/ConnectFeature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/nuance/connect/common/ConnectFeature;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/connect/common/ConnectFeature;->dependencies:[Lcom/nuance/connect/common/ConnectFeature;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    const-class v0, Lcom/nuance/connect/common/ConnectFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/common/ConnectFeature;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->$VALUES:[Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, [Lcom/nuance/connect/common/ConnectFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/common/ConnectFeature;

    return-object v0
.end method


# virtual methods
.method public final getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/common/ConnectFeature;->dependencies:[Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, [Lcom/nuance/connect/common/ConnectFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/common/ConnectFeature;

    return-object v0
.end method
