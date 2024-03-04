.class public Lcom/nuance/connect/util/Alarm$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actualTriggerTime:J

.field private final alarmType:Ljava/lang/String;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private extras:Landroid/os/Bundle;

.field private flags:I

.field private relativeTriggerDays:I

.field private relativeTriggerHours:I

.field private relativeTriggerMillis:I

.field private relativeTriggerMinutes:I

.field private relativeTriggerSeconds:I

.field private repeating:Z

.field private final requestingClassName:Ljava/lang/String;

.field private track:Z

.field private wakeDevice:Z


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/service/ConnectClient;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I

    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I

    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    iput v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->flags:I

    iput-boolean v2, p0, Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->track:Z

    iput-object p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/util/Alarm$Builder;)Lcom/nuance/connect/service/ConnectClient;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->client:Lcom/nuance/connect/service/ConnectClient;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/util/Alarm$Builder;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/util/Alarm$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->flags:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/util/Alarm$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/util/Alarm$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->track:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/util/Alarm$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/util/Alarm$Builder;J)J
    .locals 1

    iput-wide p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/util/Alarm$Builder;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    return v0
.end method


# virtual methods
.method public build()Lcom/nuance/connect/util/Alarm;
    .locals 2

    new-instance v0, Lcom/nuance/connect/util/Alarm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/util/Alarm;-><init>(Lcom/nuance/connect/util/Alarm$Builder;Lcom/nuance/connect/util/Alarm$1;)V

    return-object v0
.end method

.method public days(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I

    return-object p0
.end method

.method public extras(Landroid/os/Bundle;)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public extras(Ljava/util/Map;)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nuance/connect/util/Alarm$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public flags(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->flags:I

    return-object p0
.end method

.method public hours(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I

    return-object p0
.end method

.method public millis(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    return-object p0
.end method

.method public minutes(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    return-object p0
.end method

.method public repeating(Z)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z

    return-object p0
.end method

.method public seconds(I)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    return-object p0
.end method

.method public track(Z)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->track:Z

    return-object p0
.end method

.method public triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J

    return-object p0
.end method

.method public wakeDevice(Z)Lcom/nuance/connect/util/Alarm$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice:Z

    return-object p0
.end method
