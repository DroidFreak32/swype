.class public Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;,
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25413a6c6739ebL


# instance fields
.field private deviceId:Ljava/lang/String;

.field private isThisDevice:Z

.field private lastCheckin:J

.field private name:Ljava/lang/String;

.field private status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

.field private type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    iput-boolean p5, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->isThisDevice:Z

    iput-object p2, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->ACTIVE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-object v0
.end method

.method public getIsThisDevice()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->isThisDevice:Z

    return v0
.end method

.method public getLastCheckin()J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    return-wide v0
.end method

.method public getLastCheckinDaysAgo()I
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLastCheckinDiff()J
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-wide v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    return-wide v0
.end method

.method public getLastCheckinHoursAgo()I
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLastCheckinMinutesAgo()I
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method

.method public isDeleted()Z
    .registers 3

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markAsDeleted()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-void
.end method

.method public setIsThisDevice(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->isThisDevice:Z

    return-void
.end method

.method public setLastCheckin(J)V
    .registers 4

    iput-wide p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AccountDevice [ id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin diff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin days: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDaysAgo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin hours: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinHoursAgo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin minutes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinMinutesAgo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getType()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
