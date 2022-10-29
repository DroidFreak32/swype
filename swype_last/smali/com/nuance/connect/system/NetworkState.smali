.class public Lcom/nuance/connect/system/NetworkState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    }
.end annotation


# static fields
.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DISCONNECTED:I = -0x1

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private final connectionType:I

.field private final connectionTypeName:Ljava/lang/String;

.field private final hasConnectivity:Z

.field private final isFailover:Z

.field private final isRoaming:Z

.field private final lastConnectionChange:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    iput-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;J)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_a
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    :goto_12
    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :goto_1a
    iput v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    :cond_2a
    iput-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    iput-wide p2, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    return-void

    :cond_2f
    move v0, v1

    goto :goto_a

    :cond_31
    move v0, v1

    goto :goto_12

    :cond_33
    const/4 v0, -0x1

    goto :goto_1a

    :cond_35
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private static isValidConnection(IZLcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    packed-switch p0, :pswitch_data_28

    :cond_7
    :goto_7
    :pswitch_7
    return v0

    :pswitch_8
    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isWifiEnabled()Z

    move-result v0

    goto :goto_7

    :pswitch_d
    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isCellularEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez p1, :cond_17

    move v0, v1

    goto :goto_7

    :cond_17
    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isCellularEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    move v0, v1

    goto :goto_7

    nop

    :pswitch_data_28
    .packed-switch -0x1
        :pswitch_7
        :pswitch_d
        :pswitch_8
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static isValidConnection(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(IZLcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    :cond_11
    return v0
.end method


# virtual methods
.method public getConnectionType()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    return v0
.end method

.method public getConnectionTypeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectionChange()J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    return-wide v0
.end method

.method public hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    invoke-static {v0, v1, p1}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(IZLcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isFailover()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    return v0
.end method

.method public isRoaming()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    return v0
.end method

.method public isSame(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/nuance/connect/system/NetworkState;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/nuance/connect/system/NetworkState;

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    iget-boolean v2, p1, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    iget-boolean v2, p1, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    iget v2, p1, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-nez v1, :cond_22

    iget-object v1, p1, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-eqz v1, :cond_30

    :cond_22
    iget-object v1, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_30
    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    iget-boolean v2, p1, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isStableConnection(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .registers 8

    invoke-virtual {p0, p1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->getConnectionStableRequirement()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    sub-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->getConnectionStableRequirement()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return v0
.end method

.method public isWifi()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasConnectivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nisFailover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nconnectionType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nconnectionTypeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nisRoaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nlastConnectionChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
