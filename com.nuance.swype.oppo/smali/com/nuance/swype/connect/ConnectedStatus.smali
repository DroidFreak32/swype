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
    .locals 1

    .prologue
    .line 14
    const-string v0, "ConnectedStatus"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acManager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/nuance/swype/connect/ConnectedStatus$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectedStatus$1;-><init>(Lcom/nuance/swype/connect/ConnectedStatus;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectionCallback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    .line 99
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "ConnectedStatus()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 100
    iput-object p2, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 101
    invoke-virtual {p2}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    .line 102
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->settings:Lcom/nuance/swype/input/UserPreferences;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/ConnectedStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->stalled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/ConnectedStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    return p1
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectedCellular()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z

    return v0
.end method

.method public isConnectedWifi()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z

    return v0
.end method

.method public isDataConnectionPermitted()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->settings:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    return v0
.end method

.method public isStalled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->stalled:Z

    return v0
.end method

.method public onConnectionChanged(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .prologue
    .line 139
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onConnectionChanged("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public onConnectionStatus(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectionStatus() status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->forId(I)Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onForegroundConnection(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onForegroundConnection("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Initialized"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "register"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 107
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->registered:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectionCallback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->registered:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z

    .line 112
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus;->connectionCallback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->unregisterConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectedStatus;->registered:Z

    .line 117
    return-void
.end method
