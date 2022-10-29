.class public Lcom/nuance/swype/input/AbstractTapDetector;
.super Ljava/lang/Object;
.source "AbstractTapDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;,
        Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    }
.end annotation


# static fields
.field private static final MAX_DOUBLE_TAP_TIME:I = 0x29b

.field private static final MSG_CURSOR_UPDATE_PENDING:I = 0x3

.field private static final MSG_DOUBLE_TAP:I = 0x2

.field private static final MSG_SINGLE_TAP:I = 0x1

.field private static final TAP_DELAY:I = 0x64

.field private static final WAIT_TIME_AFTER_DOUBLE_TAP:I = 0x64

.field private static final WAIT_TIME_AFTER_SINGLE_TAP:I = 0x32


# instance fields
.field private final handler:Landroid/os/Handler;

.field private lastTimestamp:J

.field private nextAllowedTap:J


# direct methods
.method protected constructor <init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V
    .registers 3
    .param p1, "tapHandlers"    # [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;-><init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    .line 91
    return-void
.end method


# virtual methods
.method public onExtractedTextClicked()V
    .registers 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractTapDetector;->onTap()Z

    .line 98
    return-void
.end method

.method public onInitializeInterface()V
    .registers 1

    .prologue
    .line 131
    return-void
.end method

.method public onShowInputRequested(IZ)V
    .registers 3
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    .line 109
    return-void
.end method

.method public onStartInput()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method protected onTap()Z
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x1

    const-wide/16 v8, 0x64

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 144
    .local v0, "currentTimestamp":J
    iget-wide v4, p0, Lcom/nuance/swype/input/AbstractTapDetector;->nextAllowedTap:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_29

    move v2, v3

    .line 145
    .local v2, "send":Z
    :goto_f
    if-eqz v2, :cond_26

    .line 150
    iget-wide v4, p0, Lcom/nuance/swype/input/AbstractTapDetector;->lastTimestamp:J

    sub-long v4, v0, v4

    .line 151
    const-wide/16 v6, 0x29b

    cmp-long v4, v4, v6

    if-gez v4, :cond_2b

    .line 152
    iget-object v3, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    add-long v4, v0, v8

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/AbstractTapDetector;->setNextAllowedTapTime(J)V

    .line 161
    :cond_26
    :goto_26
    iput-wide v0, p0, Lcom/nuance/swype/input/AbstractTapDetector;->lastTimestamp:J

    .line 162
    return v2

    .line 144
    .end local v2    # "send":Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_f

    .line 155
    .restart local v2    # "send":Z
    :cond_2b
    iget-object v4, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    iget-object v3, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v3, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    const-wide/16 v4, 0x32

    add-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/AbstractTapDetector;->setNextAllowedTapTime(J)V

    goto :goto_26
.end method

.method public onViewClicked(Z)V
    .registers 2
    .param p1, "focusChanged"    # Z

    .prologue
    .line 118
    return-void
.end method

.method protected setNextAllowedTapTime(J)V
    .registers 6
    .param p1, "nextAllowed"    # J

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/nuance/swype/input/AbstractTapDetector;->nextAllowedTap:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/AbstractTapDetector;->nextAllowedTap:J

    .line 173
    return-void
.end method

.method protected singleTapDetected()Z
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public tapDetected()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 219
    iget-object v1, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v1, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/nuance/swype/input/AbstractTapDetector;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
