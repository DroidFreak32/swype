.class public Lcom/nuance/swype/input/LVLLicenseManager;
.super Ljava/lang/Object;
.source "LVLLicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;
    }
.end annotation


# instance fields
.field private mIme:Lcom/nuance/swype/input/IME;

.field private mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

.field private mLicenseChecked:Lcom/nuance/swype/input/LVLLicense;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mIme:Lcom/nuance/swype/input/IME;

    .line 11
    return-void
.end method

.method private getCurrentLVLLicense()Lcom/nuance/swype/input/LVLLicense;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseChecked:Lcom/nuance/swype/input/LVLLicense;

    return-object v0
.end method

.method private validatingLVLLicense(Lcom/nuance/swype/input/LVLLicense;)Z
    .locals 2
    .param p1, "license"    # Lcom/nuance/swype/input/LVLLicense;

    .prologue
    const/4 v1, 0x1

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/LVLLicense;->isLicensedUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showNonLVLLicenseAppDialog()V

    .line 68
    :cond_0
    return v1
.end method


# virtual methods
.method public isLVLLicenseValid()Z
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/LVLLicenseManager;->getCurrentLVLLicense()Lcom/nuance/swype/input/LVLLicense;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LVLLicenseManager;->validatingLVLLicense(Lcom/nuance/swype/input/LVLLicense;)Z

    move-result v0

    return v0
.end method

.method public runLVLLicenseCheck()V
    .locals 4

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/nuance/swype/input/LVLLicense;

    iget-object v1, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/LVLLicense;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    iget-object v1, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;

    iget-object v3, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    invoke-direct {v2, v3, p0}, Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;-><init>(Lcom/nuance/swype/input/LVLLicense;Lcom/nuance/swype/input/LVLLicenseManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/LVLLicense;->setHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    invoke-virtual {v0}, Lcom/nuance/swype/input/LVLLicense;->runCheck()V

    .line 25
    :cond_0
    return-void
.end method

.method setLVLLicense(Lcom/nuance/swype/input/LVLLicense;)V
    .locals 2
    .param p1, "license"    # Lcom/nuance/swype/input/LVLLicense;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v1, v1}, Lcom/nuance/swype/input/LVLLicense;->setHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {p1}, Lcom/nuance/swype/input/LVLLicense;->onDestroy()V

    .line 46
    invoke-virtual {p1}, Lcom/nuance/swype/input/LVLLicense;->isConnectionTimeout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseChecked:Lcom/nuance/swype/input/LVLLicense;

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseChecked:Lcom/nuance/swype/input/LVLLicense;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LVLLicenseManager;->validatingLVLLicense(Lcom/nuance/swype/input/LVLLicense;)Z

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/LVLLicenseManager;->runLVLLicenseCheck()V

    goto :goto_0
.end method

.method public stopLVLLicenseCheck()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseChecked:Lcom/nuance/swype/input/LVLLicense;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    invoke-virtual {v0}, Lcom/nuance/swype/input/LVLLicense;->onDestroy()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    invoke-virtual {v0, v1, v1}, Lcom/nuance/swype/input/LVLLicense;->setHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 37
    :cond_1
    iput-object v1, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseCheckInprogress:Lcom/nuance/swype/input/LVLLicense;

    .line 38
    iput-object v1, p0, Lcom/nuance/swype/input/LVLLicenseManager;->mLicenseChecked:Lcom/nuance/swype/input/LVLLicense;

    .line 39
    return-void
.end method
