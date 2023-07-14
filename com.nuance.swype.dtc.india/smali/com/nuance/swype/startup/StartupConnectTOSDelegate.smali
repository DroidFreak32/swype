.class public Lcom/nuance/swype/startup/StartupConnectTOSDelegate;
.super Lcom/nuance/swype/startup/ConnectTOSDelegate;
.source "StartupConnectTOSDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;-><init>()V

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/StartupConnectTOSDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    new-instance v0, Lcom/nuance/swype/startup/StartupConnectTOSDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/StartupConnectTOSDelegate;-><init>()V

    .line 14
    .local v0, "f":Lcom/nuance/swype/startup/StartupConnectTOSDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/StartupConnectTOSDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 15
    return-object v0
.end method
