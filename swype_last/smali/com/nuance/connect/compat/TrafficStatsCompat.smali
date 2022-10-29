.class public Lcom/nuance/connect/compat/TrafficStatsCompat;
.super Ljava/lang/Object;


# static fields
.field public static final UNSUPPORTED:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileRxBytes()J
    .registers 2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileRxPackets()J
    .registers 2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileTxBytes()J
    .registers 2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileTxPackets()J
    .registers 2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxBytes()J
    .registers 2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .registers 2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .registers 3

    invoke-static {p0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxPackets(I)J
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v0, Landroid/net/TrafficStats;

    const-string/jumbo v1, "getUidRxPackets"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_28

    const-class v1, Landroid/net/TrafficStats;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_27
    return-wide v0

    :cond_28
    const-wide/16 v0, -0x1

    goto :goto_27
.end method

.method public static getUidTxBytes(I)J
    .registers 3

    invoke-static {p0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxPackets(I)J
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v0, Landroid/net/TrafficStats;

    const-string/jumbo v1, "getUidTxPackets"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_28

    const-class v1, Landroid/net/TrafficStats;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_27
    return-wide v0

    :cond_28
    const-wide/16 v0, -0x1

    goto :goto_27
.end method
