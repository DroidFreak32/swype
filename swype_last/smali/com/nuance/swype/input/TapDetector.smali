.class public Lcom/nuance/swype/input/TapDetector;
.super Lcom/nuance/swype/input/AbstractTapDetector;
.source "TapDetector.java"


# static fields
.field private static final WAIT_TIME_AFTER_ROTATION_STARTINPUT:I = 0x3e8


# direct methods
.method public constructor <init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V
    .registers 2
    .param p1, "tapHandlers"    # [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AbstractTapDetector;-><init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onInitializeInterface()V
    .registers 5

    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/TapDetector;->setNextAllowedTapTime(J)V

    .line 55
    return-void
.end method

.method public onShowInputRequested(IZ)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    .line 31
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    .line 32
    .local v0, "userRequested":Z
    :goto_5
    if-nez p2, :cond_c

    if-eqz v0, :cond_c

    .line 33
    invoke-virtual {p0}, Lcom/nuance/swype/input/TapDetector;->onTap()Z

    .line 35
    :cond_c
    return-void

    .line 31
    .end local v0    # "userRequested":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStartInput()V
    .registers 5

    .prologue
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/TapDetector;->setNextAllowedTapTime(J)V

    .line 45
    return-void
.end method
