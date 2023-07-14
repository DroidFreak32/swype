.class public Lcom/nuance/connect/system/Connectivity;
.super Ljava/lang/Object;


# static fields
.field private static final CONECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field protected backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field protected changedBackgroundState:Z

.field protected changedForegroundState:Z

.field protected connectionChangeStableCellularRequirement:I

.field protected connectionChangeStableWifiRequirement:I

.field protected final context:Landroid/content/Context;

.field protected foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field protected lastBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field protected lastForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

.field private networkListeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/system/NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field protected requireStableCellularTime:Z

.field protected requireStableWifiTime:Z

.field private state:Lcom/nuance/connect/system/NetworkState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    iput-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    new-instance v0, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v0}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iput-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    iput-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/connect/system/Connectivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/system/Connectivity$1;-><init>(Lcom/nuance/connect/system/Connectivity;)V

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/nuance/connect/system/Connectivity;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".RefreshConnectData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getStableConnectionRequirement(I)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requireStableConnection(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendStatus()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Connectivity.sendStatus() -- onNetworkAvailable()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v1, v2, [Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/system/NetworkListener;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    invoke-interface {v4}, Lcom/nuance/connect/system/NetworkListener;->onNetworkAvailable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Connectivity.sendStatus() -- onNetworkDisconnect()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v1, v2, [Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/system/NetworkListener;

    array-length v3, v0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    invoke-interface {v4}, Lcom/nuance/connect/system/NetworkListener;->onNetworkDisconnect()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    iput-boolean v2, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    return-void
.end method

.method private sendStatusListener(Lcom/nuance/connect/system/NetworkListener;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Connectivity.sendStatusListener() -- onNetworkAvailable()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/system/NetworkListener;->onNetworkAvailable()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Connectivity.sendStatusListener() -- onNetworkDisconnect()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/system/NetworkListener;->onNetworkDisconnect()V

    goto :goto_0
.end method

.method private setNetworkState(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState;)Lcom/nuance/connect/system/NetworkState;
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/system/Connectivity;->getStableConnectionRequirement(I)I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p2, :cond_0

    int-to-long v4, v3

    sub-long/2addr v0, v4

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v2, p1, v0, v1}, Lcom/nuance/connect/system/NetworkState;-><init>(Landroid/net/NetworkInfo;J)V

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v0}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public checkAvailableNetworkConnections()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "checkAvailableNetworkConnections"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->context:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/system/Connectivity;->setNetworkState(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState;)Lcom/nuance/connect/system/NetworkState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/system/NetworkState;->isSame(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Connectivity FOREGROUND hasConnectivity: "

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Connectivity BACKGROUND hasConnectivity: "

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v3, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/system/Connectivity;->sendStatus()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->lastForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-eq v0, v2, :cond_5

    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->changedForegroundState:Z

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    iget-object v2, p0, Lcom/nuance/connect/system/Connectivity;->lastBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    iput-boolean v3, p0, Lcom/nuance/connect/system/Connectivity;->changedBackgroundState:Z

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getBackgroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    return-object v0
.end method

.method public getForegroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    return-object v0
.end method

.method public getState()Lcom/nuance/connect/system/NetworkState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->state:Lcom/nuance/connect/system/NetworkState;

    return-object v0
.end method

.method public registerNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/nuance/connect/system/Connectivity;->sendStatusListener(Lcom/nuance/connect/system/NetworkListener;)V

    return-void
.end method

.method public setBackgroundConfiguration(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->lastBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-static {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {p0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    return-void
.end method

.method public setForegroundConfiguration(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->lastForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-static {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {p0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    return-void
.end method

.method public setStableCellularTime(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    iput p1, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableCellularTime:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    goto :goto_0
.end method

.method public setStableWifiTime(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    iput p1, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->foregroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->backgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setConnectionStableRequirement(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/system/Connectivity;->requireStableWifiTime:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    goto :goto_0
.end method

.method public unregisterNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity;->networkListeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
