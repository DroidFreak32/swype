.class public final Lcom/nuance/swype/measure/UsecaseStopwatch;
.super Ljava/lang/Object;
.source "UsecaseStopwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;,
        Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/nuance/swype/measure/UsecaseStopwatch;


# instance fields
.field private final mLogger:Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/nuance/swype/measure/UsecaseLogger;

    invoke-direct {v0}, Lcom/nuance/swype/measure/UsecaseLogger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/measure/UsecaseStopwatch;->mLogger:Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nuance/swype/measure/UsecaseStopwatch;->sInstance:Lcom/nuance/swype/measure/UsecaseStopwatch;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/nuance/swype/measure/UsecaseStopwatch;

    invoke-direct {v0}, Lcom/nuance/swype/measure/UsecaseStopwatch;-><init>()V

    sput-object v0, Lcom/nuance/swype/measure/UsecaseStopwatch;->sInstance:Lcom/nuance/swype/measure/UsecaseStopwatch;

    .line 21
    :cond_0
    sget-object v0, Lcom/nuance/swype/measure/UsecaseStopwatch;->sInstance:Lcom/nuance/swype/measure/UsecaseStopwatch;

    return-object v0
.end method


# virtual methods
.method public final start(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V
    .locals 3
    .param p1, "usecase"    # Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/measure/UsecaseStopwatch;->mLogger:Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Starting ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1072
    iget-object v2, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mName:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;->log(Ljava/lang/String;)V

    .line 2059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mStartTime:J

    .line 28
    return-void
.end method

.method public final stop(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V
    .locals 4
    .param p1, "usecase"    # Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .prologue
    .line 31
    .line 2063
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mEndTime:J

    .line 2064
    iget-wide v0, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mEndTime:J

    iget-wide v2, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mElapsedTime:J

    .line 32
    iget-object v0, p0, Lcom/nuance/swype/measure/UsecaseStopwatch;->mLogger:Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Finished ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2072
    iget-object v2, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mName:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]. Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3068
    iget-wide v2, p1, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mElapsedTime:J

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;->log(Ljava/lang/String;)V

    .line 33
    return-void
.end method
