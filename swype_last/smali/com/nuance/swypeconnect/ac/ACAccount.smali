.class public final Lcom/nuance/swypeconnect/ac/ACAccount;
.super Ljava/lang/Object;


# instance fields
.field private account:Lcom/nuance/connect/internal/common/ConnectAccount;

.field private devices:[Lcom/nuance/swypeconnect/ac/ACDevice;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/common/ConnectAccount;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACAccount;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDevice;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-direct {v1, v0}, Lcom/nuance/swypeconnect/ac/ACDevice;-><init>(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3d
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACDevice;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDevice;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccount;->devices:[Lcom/nuance/swypeconnect/ac/ACDevice;

    return-void
.end method


# virtual methods
.method public final getCreationDate()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccount;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getCreationTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method final getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccount;->devices:[Lcom/nuance/swypeconnect/ac/ACDevice;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDevice;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccount;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccount;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v0

    return v0
.end method

.method public final isLinked()Z
    .registers 3

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccount;->account:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
