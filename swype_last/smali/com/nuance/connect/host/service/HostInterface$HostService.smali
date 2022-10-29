.class public final enum Lcom/nuance/connect/host/service/HostInterface$HostService;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/host/service/HostInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HostService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/host/service/HostInterface$HostService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/host/service/HostInterface$HostService;

.field public static final enum HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

.field public static final enum HOST_SETTINGS_MANAGER:Lcom/nuance/connect/host/service/HostInterface$HostService;

.field public static final enum HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/host/service/HostInterface$HostService;

    const-string/jumbo v1, "HOST_BUILD_SETTINGS"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/host/service/HostInterface$HostService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    new-instance v0, Lcom/nuance/connect/host/service/HostInterface$HostService;

    const-string/jumbo v1, "HOST_SETTINGS_MANAGER"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/host/service/HostInterface$HostService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SETTINGS_MANAGER:Lcom/nuance/connect/host/service/HostInterface$HostService;

    new-instance v0, Lcom/nuance/connect/host/service/HostInterface$HostService;

    const-string/jumbo v1, "HOST_SYSTEM_DATA"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/host/service/HostInterface$HostService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/host/service/HostInterface$HostService;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SETTINGS_MANAGER:Lcom/nuance/connect/host/service/HostInterface$HostService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->$VALUES:[Lcom/nuance/connect/host/service/HostInterface$HostService;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/host/service/HostInterface$HostService;
    .registers 2

    const-class v0, Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/HostInterface$HostService;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/host/service/HostInterface$HostService;
    .registers 1

    sget-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->$VALUES:[Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0}, [Lcom/nuance/connect/host/service/HostInterface$HostService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/host/service/HostInterface$HostService;

    return-object v0
.end method
