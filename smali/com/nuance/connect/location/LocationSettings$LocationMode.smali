.class public final enum Lcom/nuance/connect/location/LocationSettings$LocationMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/location/LocationSettings$LocationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/location/LocationSettings$LocationMode;

.field public static final enum DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

.field public static final enum GET_LOCATION:Lcom/nuance/connect/location/LocationSettings$LocationMode;

.field public static final enum LISTEN_LOCATION:Lcom/nuance/connect/location/LocationSettings$LocationMode;

.field public static final enum PASSIVE:Lcom/nuance/connect/location/LocationSettings$LocationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/location/LocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    new-instance v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;

    const-string v1, "PASSIVE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/location/LocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->PASSIVE:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    new-instance v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;

    const-string v1, "GET_LOCATION"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/location/LocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    new-instance v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;

    const-string v1, "LISTEN_LOCATION"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/location/LocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->LISTEN_LOCATION:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/location/LocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->PASSIVE:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->LISTEN_LOCATION:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->$VALUES:[Lcom/nuance/connect/location/LocationSettings$LocationMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/location/LocationSettings$LocationMode;
    .locals 1

    const-class v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/location/LocationSettings$LocationMode;
    .locals 1

    sget-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->$VALUES:[Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v0}, [Lcom/nuance/connect/location/LocationSettings$LocationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/location/LocationSettings$LocationMode;

    return-object v0
.end method
