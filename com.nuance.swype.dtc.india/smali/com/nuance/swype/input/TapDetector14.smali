.class public Lcom/nuance/swype/input/TapDetector14;
.super Lcom/nuance/swype/input/AbstractTapDetector;
.source "TapDetector14.java"


# direct methods
.method public constructor <init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V
    .locals 0
    .param p1, "tapHandlers"    # [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AbstractTapDetector;-><init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onViewClicked(Z)V
    .locals 0
    .param p1, "focusChanged"    # Z

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/nuance/swype/input/TapDetector14;->onTap()Z

    .line 23
    :cond_0
    return-void
.end method
