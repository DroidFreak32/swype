.class public abstract Lcom/nuance/swype/connect/ConnectedStatus;
.super Ljava/lang/Object;
.source "ConnectedStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private acManager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private connectedWifi:Z

.field private connectedWireless:Z

.field private final connectionCallback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

.field private initialized:Z

.field private registered:Z

.field private settings:Lcom/nuance/swype/input/UserPreferences;

.field private stalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string/jumbo v0, "ConnectedStatus"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acManager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Lcom/nuance/swype/connect/ConnectedStatus$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/ConnectedStatus$1;-><init>(Lcom/nuance/swype/connect/ConnectedStatus;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectionCallback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    .line 99
    sget-object v1, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ConnectedStatus()"

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 100
    iput-object p2, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 101
    if-nez p2, :cond_29

    :goto_1c
    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    .line 102
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->settings:Lcom/nuance/swype/input/UserPreferences;

    .line 103
    return-void

    .line 101
    :cond_29
    invoke-virtual {p2}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v0

    goto :goto_1c
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/ConnectedStatus;)Lcom/nuance/swypeconnect/ac/ACManager;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->stalled:Z

    return p1
.end method

.method static synthetic access$502(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    return p1
.end method


# virtual methods
.method public isConnected()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isConnectedCellular()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    return v0
.end method

.method public isConnectedWifi()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    return v0
.end method

.method public isDataConnectionPermitted()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->settings:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    return v0
.end method

.method public isStalled()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->stalled:Z

    return v0
.end method

.method public onConnectionChanged(Z)V
    .registers 6
    .param p1, "isConnected"    # Z

    .prologue
    .line 146
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onConnectionChanged("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public onConnectionStatus(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onConnectionStatus() status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->forId(I)Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public onForegroundConnection(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 153
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onForegroundConnection("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public onInitialized()V
    .registers 5

    .prologue
    .line 139
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Initialized"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public register()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 106
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "register"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_13

    .line 115
    :goto_12
    return-void

    .line 110
    :cond_13
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->registered:Z

    if-nez v0, :cond_20

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectionCallback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    .line 112
    iput-boolean v4, p0, Lcom/nuance/swype/connect/ConnectedStatus;->registered:Z

    .line 114
    :cond_20
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    goto :goto_12
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v0, :cond_5

    .line 124
    :goto_4
    return-void

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectionCallback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->unregisterConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->registered:Z

    goto :goto_4
.end method
