.class public Lcom/nuance/swype/input/PlatformUtil;
.super Ljava/lang/Object;
.source "PlatformUtil.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "connectivity"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/nuance/swype/input/PlatformUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 14
    return-void
.end method


# virtual methods
.method public checkForDataConnection()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 17
    iget-object v2, p0, Lcom/nuance/swype/input/PlatformUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 18
    .local v0, "netInfos":[Landroid/net/NetworkInfo;
    if-eqz v0, :cond_18

    .line 19
    array-length v3, v0

    move v2, v1

    :goto_b
    if-ge v2, v3, :cond_18

    aget-object v4, v0, v2

    .line 20
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_19

    .line 21
    const/4 v1, 0x1

    .line 25
    :cond_18
    return v1

    .line 19
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method public isMobileEnabled()Z
    .registers 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/nuance/swype/input/PlatformUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 37
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_16

    .line 38
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 39
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isWifiEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 29
    iget-object v2, p0, Lcom/nuance/swype/input/PlatformUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 30
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_16

    .line 31
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_16

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method
