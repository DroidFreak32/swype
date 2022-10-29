.class public Lcom/nuance/connect/util/Alarm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/Alarm$1;,
        Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;,
        Lcom/nuance/connect/util/Alarm$Builder;
    }
.end annotation


# static fields
.field public static final ALARM_CLASS:Ljava/lang/String; = "ALARM_CLASS"

.field public static final ALARM_TYPE:Ljava/lang/String; = "ALARM_TYPE"


# instance fields
.field private final alarmId:I

.field private final alarmType:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final extras:Landroid/os/Bundle;

.field private final flags:I

.field private final handlingClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final repeating:Z

.field private final requestingClassName:Ljava/lang/String;

.field private track:Z

.field private final tracker:Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;

.field private final triggerTime:J

.field private final uid:Ljava/lang/String;

.field private final wakeType:I


# direct methods
.method private constructor <init>(Lcom/nuance/connect/util/Alarm$Builder;)V
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->extras:Landroid/os/Bundle;

    iput-boolean v4, p0, Lcom/nuance/connect/util/Alarm;->track:Z

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$100(Lcom/nuance/connect/util/Alarm$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->context:Landroid/content/Context;

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$200(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$300(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->uid:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$400(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->uid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/util/Alarm;->generateAlarmId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/Alarm;->alarmId:I

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$500(Lcom/nuance/connect/util/Alarm$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6c

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerDays:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$600(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/connect/util/TimeConversion;->convertDaysToMillis(I)J

    move-result-wide v0

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerHours:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$700(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/connect/util/TimeConversion;->convertHoursToMillis(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMinutes:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$800(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/connect/util/TimeConversion;->convertMinutesToMillis(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerSeconds:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$900(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->relativeTriggerMillis:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1000(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    # setter for: Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1, v0, v1}, Lcom/nuance/connect/util/Alarm$Builder;->access$502(Lcom/nuance/connect/util/Alarm$Builder;J)J

    :cond_6c
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$500(Lcom/nuance/connect/util/Alarm$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1100(Lcom/nuance/connect/util/Alarm$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->extras:Landroid/os/Bundle;

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1100(Lcom/nuance/connect/util/Alarm$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_81
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->wakeDevice:Z
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1200(Lcom/nuance/connect/util/Alarm$Builder;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/util/Alarm;->wakeType:I

    :goto_8a
    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->flags:I
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1300(Lcom/nuance/connect/util/Alarm$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/Alarm;->flags:I

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->repeating:Z
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1400(Lcom/nuance/connect/util/Alarm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/util/Alarm;->repeating:Z

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->track:Z
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1500(Lcom/nuance/connect/util/Alarm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/util/Alarm;->track:Z

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->tracker:Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1600(Lcom/nuance/connect/util/Alarm$Builder;)Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->tracker:Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;

    # getter for: Lcom/nuance/connect/util/Alarm$Builder;->handlingClass:Ljava/lang/Class;
    invoke-static {p1}, Lcom/nuance/connect/util/Alarm$Builder;->access$1700(Lcom/nuance/connect/util/Alarm$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/Alarm;->handlingClass:Ljava/lang/Class;

    return-void

    :cond_a9
    iput v4, p0, Lcom/nuance/connect/util/Alarm;->wakeType:I

    goto :goto_8a
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/util/Alarm$Builder;Lcom/nuance/connect/util/Alarm$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/util/Alarm;-><init>(Lcom/nuance/connect/util/Alarm$Builder;)V

    return-void
.end method

.method private generateAlarmId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/16 v1, 0x17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_2e

    aget-byte v4, v2, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_2e
    return v1
.end method

.method private generateIntent()Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/util/Alarm;->handlingClass:Ljava/lang/Class;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/nuance/connect/util/Alarm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->handlingClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_10
    const-string/jumbo v1, "ALARM_CLASS"

    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ALARM_TYPE"

    iget-object v2, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/connect/util/Alarm;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/connect/util/Alarm;->context:Landroid/content/Context;

    iget v2, p0, Lcom/nuance/connect/util/Alarm;->alarmId:I

    iget v3, p0, Lcom/nuance/connect/util/Alarm;->flags:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/util/Alarm;->generateIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->context:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public set()V
    .registers 7

    invoke-direct {p0}, Lcom/nuance/connect/util/Alarm;->generateIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->context:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget v2, p0, Lcom/nuance/connect/util/Alarm;->wakeType:I

    iget-wide v4, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/nuance/connect/util/Alarm;->track:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->tracker:Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/util/Alarm;->tracker:Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;

    iget-wide v2, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;->addAlarm(J)V

    :cond_25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd/yyyy hh:mm:ss:SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Alarm ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "alarmId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/connect/util/Alarm;->alarmId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alarm type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "executes at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/nuance/connect/util/Alarm;->triggerTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
