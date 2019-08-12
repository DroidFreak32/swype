.class Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;
.super Ljava/lang/Object;
.source "LVLLicenseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/LVLLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReceiveLVLLicenseResult"
.end annotation


# instance fields
.field mLicense:Lcom/nuance/swype/input/LVLLicense;

.field mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/LVLLicense;Lcom/nuance/swype/input/LVLLicenseManager;)V
    .locals 0
    .param p1, "license"    # Lcom/nuance/swype/input/LVLLicense;
    .param p2, "licenseManager"    # Lcom/nuance/swype/input/LVLLicenseManager;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;->mLicense:Lcom/nuance/swype/input/LVLLicense;

    .line 78
    iput-object p2, p0, Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    .line 79
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    iget-object v1, p0, Lcom/nuance/swype/input/LVLLicenseManager$ReceiveLVLLicenseResult;->mLicense:Lcom/nuance/swype/input/LVLLicense;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/LVLLicenseManager;->setLVLLicense(Lcom/nuance/swype/input/LVLLicense;)V

    .line 85
    :cond_0
    return-void
.end method
