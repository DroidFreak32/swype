.class public final enum Lcom/nuance/swype/input/BuildInfo$BuildType;
.super Ljava/lang/Enum;
.source "BuildInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BuildInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuildType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/BuildInfo$BuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/BuildInfo$BuildType;

.field public static final enum AMAZONSTORE:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field public static final enum AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field public static final enum DEMO:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field public static final enum DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field public static final enum GOOGLEPLAY:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field public static final enum GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

.field public static final enum PRODUCTION:Lcom/nuance/swype/input/BuildInfo$BuildType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    const-string v1, "PRODUCTION"

    const-string v2, "Production"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/input/BuildInfo$BuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->PRODUCTION:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 33
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    const-string v1, "DEVELOPMENT"

    const-string v2, "Dev"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/input/BuildInfo$BuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 34
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    const-string v1, "DEMO"

    const-string v2, "Demo"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/input/BuildInfo$BuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEMO:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 35
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    const-string v1, "GOOGLEPLAY"

    const-string v2, "google_play"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/input/BuildInfo$BuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 36
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    const-string v1, "GOOGLEPLAY_TRIAL"

    const-string v2, "google_play_trial"

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/input/BuildInfo$BuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 37
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    const-string v1, "AMAZONSTORE"

    const/4 v2, 0x5

    const-string v3, "amazon_store"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/BuildInfo$BuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 38
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    const-string v1, "AMAZONSTORE_TRIAL"

    const/4 v2, 0x6

    const-string v3, "amazon_store_trial"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/BuildInfo$BuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swype/input/BuildInfo$BuildType;

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->PRODUCTION:Lcom/nuance/swype/input/BuildInfo$BuildType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEMO:Lcom/nuance/swype/input/BuildInfo$BuildType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY:Lcom/nuance/swype/input/BuildInfo$BuildType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE:Lcom/nuance/swype/input/BuildInfo$BuildType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->$VALUES:[Lcom/nuance/swype/input/BuildInfo$BuildType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/nuance/swype/input/BuildInfo$BuildType;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static parseFromConfig(Ljava/lang/String;)Lcom/nuance/swype/input/BuildInfo$BuildType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/nuance/swype/input/BuildInfo$BuildType;->values()[Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/swype/input/BuildInfo$BuildType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 48
    .local v1, "b":Lcom/nuance/swype/input/BuildInfo$BuildType;
    iget-object v4, v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    .end local v1    # "b":Lcom/nuance/swype/input/BuildInfo$BuildType;
    :goto_1
    return-object v1

    .line 47
    .restart local v1    # "b":Lcom/nuance/swype/input/BuildInfo$BuildType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "b":Lcom/nuance/swype/input/BuildInfo$BuildType;
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->PRODUCTION:Lcom/nuance/swype/input/BuildInfo$BuildType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/BuildInfo$BuildType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/BuildInfo$BuildType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/BuildInfo$BuildType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->$VALUES:[Lcom/nuance/swype/input/BuildInfo$BuildType;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/BuildInfo$BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/BuildInfo$BuildType;

    return-object v0
.end method


# virtual methods
.method public final isAmazonBuild()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDTCbuild()Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDevBuild()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEVELOPMENT:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGooglePlayBuild()Z
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGoogleTrialBuild()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLicensingOn()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->PRODUCTION:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShowEulaOn()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEMO:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTrialBuild()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->DEMO:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->GOOGLEPLAY_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/BuildInfo$BuildType;->AMAZONSTORE_TRIAL:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/BuildInfo$BuildType;->name:Ljava/lang/String;

    return-object v0
.end method
