.class public final enum Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;
.super Ljava/lang/Enum;
.source "CustomDimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/CustomDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

.field public static final enum HANDSET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

.field public static final enum TABLET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;


# instance fields
.field private final deviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    const-string/jumbo v1, "HANDSET"

    const-string/jumbo v2, "Handset"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->HANDSET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    .line 55
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    const-string/jumbo v1, "TABLET"

    const-string/jumbo v2, "Tablet"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->TABLET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    sget-object v1, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->HANDSET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->TABLET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->$VALUES:[Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->deviceType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->$VALUES:[Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->deviceType:Ljava/lang/String;

    return-object v0
.end method
