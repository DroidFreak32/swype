.class public abstract Lcom/nuance/swype/input/AbstractTipTrigger;
.super Ljava/lang/Object;
.source "AbstractTipTrigger.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method protected abstract getDisplayCount()I
.end method

.method protected abstract getMaxDisplayCount()I
.end method

.method protected abstract getTriggerPoint()I
.end method

.method protected abstract incrementAndGetCount()I
.end method

.method protected abstract incrementDisplayCount()V
.end method

.method protected abstract resetCount()V
.end method

.method public final trigger()Z
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractTipTrigger;->getDisplayCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractTipTrigger;->getMaxDisplayCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractTipTrigger;->incrementAndGetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractTipTrigger;->getTriggerPoint()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractTipTrigger;->resetCount()V

    .line 16
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractTipTrigger;->incrementDisplayCount()V

    .line 17
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
