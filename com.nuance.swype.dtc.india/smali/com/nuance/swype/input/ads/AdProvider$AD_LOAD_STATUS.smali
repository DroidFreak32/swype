.class public final enum Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
.super Ljava/lang/Enum;
.source "AdProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ads/AdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_LOAD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

.field public static final enum FAILED_INTERNAL_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

.field public static final enum FAILED_INVALID_REQUEST:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

.field public static final enum FAILED_NETWORK_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

.field public static final enum FAILED_NO_FILL:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

.field public static final enum FAILED_UNKNOWN:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

.field public static final enum SUCCESS:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->SUCCESS:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .line 34
    new-instance v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    const-string/jumbo v1, "FAILED_NO_FILL"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_NO_FILL:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .line 35
    new-instance v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    const-string/jumbo v1, "FAILED_INVALID_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_INVALID_REQUEST:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .line 36
    new-instance v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    const-string/jumbo v1, "FAILED_INTERNAL_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_INTERNAL_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .line 37
    new-instance v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    const-string/jumbo v1, "FAILED_NETWORK_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_NETWORK_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .line 38
    new-instance v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    const-string/jumbo v1, "FAILED_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_UNKNOWN:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    sget-object v1, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->SUCCESS:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_NO_FILL:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_INVALID_REQUEST:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_INTERNAL_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_NETWORK_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_UNKNOWN:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->$VALUES:[Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->$VALUES:[Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    return-object v0
.end method
