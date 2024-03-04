.class public Lcom/nuance/swype/input/PlatformUtil;
.super Ljava/lang/Object;
.source "PlatformUtil.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/nuance/swype/input/PlatformUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 14
    return-void
.end method


# virtual methods
.method public checkForDataConnection()Z
    .locals 6

    .prologue
    .line 17
    iget-object v4, p0, Lcom/nuance/swype/input/PlatformUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 18
    .local v3, "netInfos":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 19
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v2, v3

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 20
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 21
    const/4 v4, 0x1

    .line 25
    .end local v0    # "arr$":[Landroid/net/NetworkInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :goto_1
    return v4

    .line 19
    .restart local v0    # "arr$":[Landroid/net/NetworkInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "arr$":[Landroid/net/NetworkInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isWifiEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 29
    iget-object v2, p0, Lcom/nuance/swype/input/PlatformUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 30
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
