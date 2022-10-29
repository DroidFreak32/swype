.class public Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;
.super Lcom/nuance/swype/startup/LegalDocsSplashDelegate;
.source "LegalDocsSplashOemDelegate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;-><init>()V

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;
    .registers 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 8
    new-instance v0, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;-><init>()V

    .line 9
    .local v0, "f":Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method protected final showChangedNotice()Z
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosChanged()Z

    move-result v0

    return v0
.end method

.method protected final showEulaLink()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method protected final showTosLink()Z
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 24
    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->wasTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
