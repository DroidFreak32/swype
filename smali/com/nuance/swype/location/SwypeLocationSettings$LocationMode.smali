.class public final enum Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
.super Ljava/lang/Enum;
.source "SwypeLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/location/SwypeLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

.field public static final enum DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

.field public static final enum GET_LOCATION:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

.field public static final enum LISTEN_LOCATION:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

.field public static final enum PASSIVE:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 9
    new-instance v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    const-string v1, "PASSIVE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->PASSIVE:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 10
    new-instance v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    const-string v1, "GET_LOCATION"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 11
    new-instance v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    const-string v1, "LISTEN_LOCATION"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->LISTEN_LOCATION:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->PASSIVE:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->LISTEN_LOCATION:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->$VALUES:[Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->$VALUES:[Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v0}, [Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    return-object v0
.end method
