.class public Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/system/NetworkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkConfiguration"
.end annotation


# static fields
.field private static final delimiter:Ljava/lang/String; = "-"


# instance fields
.field private cellularEnabled:Z

.field private connectionStableRequirement:I

.field private roamingEnabled:Z

.field private wifiEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->setNetworkState(ZZZ)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_7} :catch_29

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_28

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    :cond_28
    return-object v0

    :catch_29
    move-exception v1

    move-object v1, v0

    goto :goto_8
.end method


# virtual methods
.method public getConnectionStableRequirement()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    return v0
.end method

.method public isCellularEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    return v0
.end method

.method public isRoamingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    return v0
.end method

.method public isWifiEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    return v0
.end method

.method public requiresStableConnection()Z
    .registers 2

    iget v0, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setConnectionStableRequirement(I)V
    .registers 2

    iput p1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->connectionStableRequirement:I

    return-void
.end method

.method public setNetworkState(ZZZ)V
    .registers 4

    iput-boolean p1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    iput-boolean p2, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    iput-boolean p3, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    return-void
.end method

.method public toReadableString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cellular("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "roaming("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->wifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->cellularEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->roamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
