.class public Lcom/nuance/swype/input/ads/BillboardManager;
.super Ljava/lang/Object;
.source "BillboardManager.java"


# instance fields
.field private final mBillboard:Lcom/nuance/swype/input/ads/Billboard;

.field private mDisplayStrategy:Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/nuance/swype/input/ads/Billboard;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/ads/Billboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mBillboard:Lcom/nuance/swype/input/ads/Billboard;

    .line 20
    return-void
.end method


# virtual methods
.method public canShowBillboard()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mDisplayStrategy:Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mDisplayStrategy:Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;->canShowBillboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBillboard()Lcom/nuance/swype/input/ads/Billboard;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mBillboard:Lcom/nuance/swype/input/ads/Billboard;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mBillboard:Lcom/nuance/swype/input/ads/Billboard;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/Billboard;->requestHide()V

    .line 43
    return-void
.end method

.method public setBillboardDisplayStrategy(Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;)V
    .locals 0
    .param p1, "displayStrategy"    # Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mDisplayStrategy:Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;

    .line 24
    return-void
.end method

.method public showView()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mDisplayStrategy:Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;->canShowBillboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/ads/BillboardManager;->mBillboard:Lcom/nuance/swype/input/ads/Billboard;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/Billboard;->show()V

    .line 49
    :cond_0
    return-void
.end method
