.class public abstract Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ACReportingEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;
    }
.end annotation


# instance fields
.field private extra:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "STAT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->id:Ljava/lang/String;

    const-string/jumbo v0, "STAT_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->name:Ljava/lang/String;

    const-string/jumbo v0, "STAT_EXTRA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "STAT_EXTRA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->extra:Ljava/lang/String;

    :goto_27
    const-string/jumbo v0, "STAT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "STAT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->timestamp:J

    :goto_39
    return-void

    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->extra:Ljava/lang/String;

    goto :goto_27

    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->timestamp:J

    goto :goto_39
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/nuance/swypeconnect/ac/ACReportingService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method static from(Landroid/os/Bundle;)Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;
    .registers 4

    const-string/jumbo v0, "STAT_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "STAT_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;-><init>(Landroid/os/Bundle;)V

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;-><init>(Landroid/os/Bundle;)V

    goto :goto_17

    :cond_1e
    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->oemLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not create reporting entry from bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->oemLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v3, "equals this="

    const-string/jumbo v4, ", o="

    invoke-interface {v0, v3, p0, v4, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    if-ne p1, p0, :cond_17

    move v0, v2

    goto :goto_12

    :cond_17
    instance-of v0, p1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;

    if-nez v0, :cond_1d

    move v0, v1

    goto :goto_12

    :cond_1d
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    check-cast p1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eq v0, v5, :cond_3d

    # getter for: Lcom/nuance/swypeconnect/ac/ACReportingService;->oemLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "different key quantities"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_12

    :cond_3d
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_65

    if-nez v7, :cond_63

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_63
    move v0, v1

    goto :goto_12

    :cond_65
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    goto :goto_12

    :cond_6d
    move v0, v2

    goto :goto_12
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->timestamp:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public abstract getType()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;
.end method

.method public hashCode()I
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->id:Ljava/lang/String;

    if-nez v0, :cond_24

    move v0, v1

    :goto_6
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_2b

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->extra:Ljava/lang/String;

    if-nez v2, :cond_32

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->timestamp:J

    iget-wide v4, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->timestamp:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_24
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_2b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_32
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->extra:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->extra:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .registers 4

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->timestamp:J

    :goto_8
    return-void

    :cond_9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->timestamp:J

    goto :goto_8
.end method

.method abstract toBundle()Landroid/os/Bundle;
.end method
