.class public final enum Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/CatalogService$CatalogItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purchasable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

.field public static final enum FREE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

.field public static final enum PURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

.field public static final enum UNPURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    const-string/jumbo v1, "UNPURCHASABLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->UNPURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    new-instance v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    const-string/jumbo v1, "PURCHASABLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->PURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    new-instance v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    const-string/jumbo v1, "FREE"

    invoke-direct {v0, v1, v4, v4}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->FREE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    sget-object v1, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->UNPURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->PURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->FREE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->$VALUES:[Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;
    .locals 1

    const-class v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;
    .locals 1

    sget-object v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->$VALUES:[Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    invoke-virtual {v0}, [Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    return-object v0
.end method


# virtual methods
.method public final equals(I)Z
    .locals 1

    iget v0, p0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->value:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
