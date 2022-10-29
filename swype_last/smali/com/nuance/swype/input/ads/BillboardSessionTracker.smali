.class public Lcom/nuance/swype/input/ads/BillboardSessionTracker;
.super Ljava/lang/Object;
.source "BillboardSessionTracker.java"

# interfaces
.implements Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mCurrentDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field private mCurrentOrientation:I

.field private mDayOfYear:I

.field private mIsHandwriting:Z

.field private mIsNetworkConnected:Z

.field private mKeyboardHeight:F

.field private mMaxNumberOfTimes:I

.field private mNumberOfTimesShown:I

.field private mPaused:Z

.field private mSessionCount:J

.field private mStart:I

.field private mStepSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string/jumbo v0, "BillboardSessionTracker"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "stepSize"    # I
    .param p3, "maxNumberOfTimes"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setStart(I)V

    .line 57
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setStepSize(I)V

    .line 58
    invoke-direct {p0, p3}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setMaxNumberOfTimes(I)V

    .line 59
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Setting up with: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStepSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mMaxNumberOfTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetSessionCount()V

    .line 61
    return-void
.end method

.method private canIncrementCounter()Z
    .registers 5

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mPaused:Z

    if-nez v0, :cond_21

    .line 122
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->isDockingModeAllowed()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mIsHandwriting:Z

    if-nez v0, :cond_21

    iget v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mKeyboardHeight:F

    float-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_21

    iget v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private isDockingModeAllowed()Z
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isInSlot()Z
    .registers 5

    .prologue
    .line 189
    iget v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mNumberOfTimesShown:I

    iget v1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mMaxNumberOfTimes:I

    if-ge v0, v1, :cond_2a

    iget-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    iget v2, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStart:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    iget-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    iget v2, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStart:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    iget-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    iget v2, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStart:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStepSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private isNewDay()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 110
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 111
    .local v0, "dayOfYear":I
    iget v3, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mDayOfYear:I

    if-ne v0, v3, :cond_10

    .line 116
    :goto_f
    return v1

    .line 114
    :cond_10
    iput v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mDayOfYear:I

    .line 115
    sget-object v3, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "New day."

    aput-object v5, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v1, v2

    .line 116
    goto :goto_f
.end method

.method private pause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 147
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Tracker is paused"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 148
    iput-boolean v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mPaused:Z

    .line 149
    return-void
.end method

.method private resetNumberOfTimesShown()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mNumberOfTimesShown:I

    .line 141
    return-void
.end method

.method private resetSessionCount()V
    .registers 3

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    .line 137
    return-void
.end method

.method private setMaxNumberOfTimes(I)V
    .registers 2
    .param p1, "maxNumberOfTimes"    # I

    .prologue
    .line 234
    if-gtz p1, :cond_3

    const/4 p1, 0x1

    .line 235
    :cond_3
    iput p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mMaxNumberOfTimes:I

    .line 236
    return-void
.end method

.method private setStart(I)V
    .registers 2
    .param p1, "start"    # I

    .prologue
    .line 224
    if-gtz p1, :cond_3

    const/4 p1, 0x1

    .line 225
    :cond_3
    iput p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStart:I

    .line 226
    return-void
.end method

.method private setStepSize(I)V
    .registers 2
    .param p1, "stepSize"    # I

    .prologue
    .line 229
    if-gtz p1, :cond_3

    const/4 p1, 0x1

    .line 230
    :cond_3
    iput p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStepSize:I

    .line 231
    return-void
.end method


# virtual methods
.method public canShowBillboard()Z
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "canShowBillboard, current state: "

    aput-object v4, v3, v2

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v12, [Ljava/lang/Object;

    const-string/jumbo v4, "\t number of times shown: "

    aput-object v4, v3, v2

    iget v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mNumberOfTimesShown:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, ". max number of times: "

    aput-object v4, v3, v10

    iget v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mMaxNumberOfTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v10, [Ljava/lang/Object;

    const-string/jumbo v4, "\t session count: "

    aput-object v4, v3, v2

    iget-wide v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 164
    sget-object v3, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v0, "\t session count == start? "

    aput-object v0, v4, v2

    iget-wide v6, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    iget v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mStart:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-nez v0, :cond_fe

    move v0, v1

    :goto_59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v10, [Ljava/lang/Object;

    const-string/jumbo v4, "\t step match? "

    aput-object v4, v3, v2

    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->isInSlot()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v10, [Ljava/lang/Object;

    const-string/jumbo v4, "\t orientation: "

    aput-object v4, v3, v2

    iget v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v12, [Ljava/lang/Object;

    const-string/jumbo v4, "\t dock mode: "

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    aput-object v4, v3, v1

    const-string/jumbo v4, " allowed? "

    aput-object v4, v3, v10

    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->isDockingModeAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v10, [Ljava/lang/Object;

    const-string/jumbo v4, "\t connected to network: "

    aput-object v4, v3, v2

    iget-boolean v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mIsNetworkConnected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v10, [Ljava/lang/Object;

    const-string/jumbo v4, "\t height: "

    aput-object v4, v3, v2

    iget v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mKeyboardHeight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 171
    iget v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentOrientation:I

    if-eq v0, v10, :cond_f1

    .line 172
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->isDockingModeAllowed()Z

    move-result v0

    if-eqz v0, :cond_f1

    iget-boolean v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mIsHandwriting:Z

    if-nez v0, :cond_f1

    iget-boolean v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mIsNetworkConnected:Z

    if-eqz v0, :cond_f1

    iget v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mKeyboardHeight:F

    float-to-double v4, v0

    const-wide v6, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_101

    .line 176
    :cond_f1
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot show billboard"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 185
    :goto_fd
    return v2

    :cond_fe
    move v0, v2

    .line 164
    goto/16 :goto_59

    .line 180
    :cond_101
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->isInSlot()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 181
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "Billboard can be shown"

    aput-object v4, v3, v2

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v2, v1

    .line 182
    goto :goto_fd

    .line 184
    :cond_115
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Billboard cannot be shown"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_fd
.end method

.method public requestIncrement()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->isNewDay()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 88
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Resetting the counter"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetSessionCount()V

    .line 90
    iput v4, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mNumberOfTimesShown:I

    .line 93
    :cond_19
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->canIncrementCounter()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 94
    iget-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_32

    iget-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_35

    .line 95
    :cond_32
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetSessionCount()V

    .line 98
    :cond_35
    iget-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    .line 99
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Incremented session count. New count is: "

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mSessionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 102
    :cond_51
    iget-boolean v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mIsNetworkConnected:Z

    if-nez v0, :cond_6a

    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->isInSlot()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 103
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Triggering pause since we something to display, but cannot at this time"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->pause()V

    .line 106
    :cond_6a
    return-void
.end method

.method public resume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 155
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Tracker resumes"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 156
    iput-boolean v3, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mPaused:Z

    .line 157
    return-void
.end method

.method public setHandwriting(Z)V
    .registers 2
    .param p1, "handwriting"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mIsHandwriting:Z

    .line 221
    return-void
.end method

.method public setKeyboardHeight(F)V
    .registers 6
    .param p1, "keyboardHeight"    # F

    .prologue
    .line 215
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Keyboard height is: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 216
    iput p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mKeyboardHeight:F

    .line 217
    return-void
.end method

.method public setKeyboardMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .registers 2
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 207
    return-void
.end method

.method public setNetworkConnected(Z)V
    .registers 6
    .param p1, "isNetworkConnected"    # Z

    .prologue
    .line 210
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Network connected: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 211
    iput-boolean p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mIsNetworkConnected:Z

    .line 212
    return-void
.end method

.method public setScreenOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mCurrentOrientation:I

    .line 203
    return-void
.end method

.method public updateMaxNumberOfTimes(I)V
    .registers 2
    .param p1, "maxNumberOfTimes"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setMaxNumberOfTimes(I)V

    .line 77
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetSessionCount()V

    .line 78
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetNumberOfTimesShown()V

    .line 79
    return-void
.end method

.method public updateStart(I)V
    .registers 2
    .param p1, "start"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setStart(I)V

    .line 65
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetSessionCount()V

    .line 66
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetNumberOfTimesShown()V

    .line 67
    return-void
.end method

.method public updateStepSize(I)V
    .registers 2
    .param p1, "stepSize"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setStepSize(I)V

    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetSessionCount()V

    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resetNumberOfTimesShown()V

    .line 73
    return-void
.end method

.method public wasShown()V
    .registers 5

    .prologue
    .line 196
    sget-object v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Registering that the billboard was shown successfully"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 197
    iget v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mNumberOfTimesShown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->mNumberOfTimesShown:I

    .line 198
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resume()V

    .line 199
    return-void
.end method
