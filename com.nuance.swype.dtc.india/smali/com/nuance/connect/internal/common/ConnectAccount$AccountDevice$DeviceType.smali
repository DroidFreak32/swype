.class public final enum Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

.field public static final enum PHABLET:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

.field public static final enum PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

.field public static final enum TABLET:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

.field public static final enum TV:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

.field private static typeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private serverType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    const-string/jumbo v2, "PHONE"

    invoke-direct {v1, v2, v0, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    new-instance v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    const-string/jumbo v2, "TABLET"

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->TABLET:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    new-instance v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    const-string/jumbo v2, "TV"

    invoke-direct {v1, v2, v4, v5}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->TV:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    new-instance v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    const-string/jumbo v2, "PHABLET"

    invoke-direct {v1, v2, v5, v6}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHABLET:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    new-array v1, v6, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    aput-object v2, v1, v0

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->TABLET:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->TV:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHABLET:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    aput-object v2, v1, v5

    sput-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->typeMap:Landroid/util/SparseArray;

    invoke-static {}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->values()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->typeMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->getServerType()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->serverType:I

    return-void
.end method

.method public static from(I)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .locals 2

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->typeMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getServerType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->serverType:I

    return v0
.end method
