.class public final Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;
.super Ljava/lang/Object;
.source "UsageData.java"

# interfaces
.implements Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBasedAnalyticsSessionManager"
.end annotation


# instance fields
.field private mLastOpenedTime:J

.field private mOpened:Z

.field private final mSessionLengthInMs:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mSessionLengthInMs:J

    .line 1207
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;-><init>()V

    return-void
.end method

.method private hasTimeElapsed()Z
    .registers 5

    .prologue
    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mLastOpenedTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mSessionLengthInMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public final canClose()Z
    .registers 2

    .prologue
    .line 1216
    .line 2225
    iget-boolean v0, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mOpened:Z

    .line 1216
    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->hasTimeElapsed()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final canOpen()Z
    .registers 2

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->hasTimeElapsed()Z

    move-result v0

    return v0
.end method

.method public final isOpen()Z
    .registers 2

    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mOpened:Z

    return v0
.end method

.method public final markSessionClosed()V
    .registers 3

    .prologue
    .line 1236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mLastOpenedTime:J

    .line 1237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mOpened:Z

    .line 1238
    return-void
.end method

.method public final markSessionOpened()V
    .registers 3

    .prologue
    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mLastOpenedTime:J

    .line 1231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/usagedata/UsageData$TimeBasedAnalyticsSessionManager;->mOpened:Z

    .line 1232
    return-void
.end method
