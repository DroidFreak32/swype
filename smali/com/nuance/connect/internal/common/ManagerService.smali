.class public final enum Lcom/nuance/connect/internal/common/ManagerService;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/ManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum SESSION:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum SYNC:Lcom/nuance/connect/internal/common/ManagerService;

.field public static final enum UPDATE:Lcom/nuance/connect/internal/common/ManagerService;


# instance fields
.field managerDependencies:[Lcom/nuance/connect/internal/common/ManagerService;

.field managerName:Ljava/lang/String;

.field service:Lcom/nuance/connect/common/ConnectFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v1, "CONFIG"

    const-string v3, "swypeconfig"

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    new-array v5, v2, [Lcom/nuance/connect/internal/common/ManagerService;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "DEVICE"

    const-string v6, "device"

    const/4 v7, 0x0

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "SESSION"

    const-string v6, "session"

    const/4 v7, 0x0

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "RESOURCES"

    const-string v6, "internal_resources"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "DOCUMENTS"

    const-string v6, "docs"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "LANGUAGE"

    const/4 v5, 0x5

    const-string v6, "language"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "ACCOUNT"

    const/4 v5, 0x6

    const-string v6, "account"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "SYNC"

    const/4 v5, 0x7

    const-string v6, "dlm"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "CATEGORY"

    const/16 v5, 0x8

    const-string v6, "cdb"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "REPORTING"

    const/16 v5, 0x9

    const-string v6, "report"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v9, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

    new-instance v3, Lcom/nuance/connect/internal/common/ManagerService;

    const-string v4, "UPDATE"

    const/16 v5, 0xa

    const-string v6, "upgrade"

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    new-array v8, v10, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v2

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v0, v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/common/ManagerService;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V

    sput-object v3, Lcom/nuance/connect/internal/common/ManagerService;->UPDATE:Lcom/nuance/connect/internal/common/ManagerService;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nuance/connect/internal/common/ManagerService;

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->DEVICE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->SESSION:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v10

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->RESOURCES:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v11

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->LANGUAGE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->ACCOUNT:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->SYNC:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->CATEGORY:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/ManagerService;->UPDATE:Lcom/nuance/connect/internal/common/ManagerService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/common/ManagerService;->$VALUES:[Lcom/nuance/connect/internal/common/ManagerService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/connect/common/ConnectFeature;[Lcom/nuance/connect/internal/common/ManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/common/ConnectFeature;",
            "[",
            "Lcom/nuance/connect/internal/common/ManagerService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerName:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerDependencies:[Lcom/nuance/connect/internal/common/ManagerService;

    iput-object p4, p0, Lcom/nuance/connect/internal/common/ManagerService;->service:Lcom/nuance/connect/common/ConnectFeature;

    return-void
.end method

.method public static managerForService(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/nuance/connect/internal/common/ManagerService;->values()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/nuance/connect/internal/common/ManagerService;->service:Lcom/nuance/connect/common/ConnectFeature;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/nuance/connect/internal/common/ManagerService;->service:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v4}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v3, Lcom/nuance/connect/internal/common/ManagerService;->managerName:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ManagerService;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/common/ManagerService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ManagerService;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/ManagerService;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->$VALUES:[Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/common/ManagerService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ManagerService;

    return-object v0
.end method


# virtual methods
.method public final getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerDependencies:[Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/common/ManagerService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ManagerService;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ManagerService;->managerName:Ljava/lang/String;

    return-object v0
.end method
