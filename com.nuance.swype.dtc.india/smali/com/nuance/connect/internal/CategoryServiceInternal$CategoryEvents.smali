.class final enum Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CategoryEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

.field public static final enum ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

.field public static final enum ON_CATALOG_PRICES_RESET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

.field public static final enum ON_CATALOG_PRICES_SET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

.field public static final enum ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

.field public static final enum UNKNOWN:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

.field private static values:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    const-string/jumbo v1, "ON_DICTIONARIES_UPDATED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    const-string/jumbo v1, "ON_CATALOGS_CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    const-string/jumbo v1, "ON_CATALOG_PRICES_SET"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_SET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    const-string/jumbo v1, "ON_CATALOG_PRICES_RESET"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_RESET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->UNKNOWN:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_SET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_RESET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->UNKNOWN:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->$VALUES:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->values:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

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

.method public static fromInt(I)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->values:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->values()[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->values:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    :cond_0
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->values:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    array-length v0, v0

    if-le v0, p0, :cond_1

    if-ltz p0, :cond_1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->values:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->UNKNOWN:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->$VALUES:[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    return-object v0
.end method
