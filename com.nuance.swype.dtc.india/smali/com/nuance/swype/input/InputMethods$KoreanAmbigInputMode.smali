.class public Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;
.super Lcom/nuance/swype/input/InputMethods$InputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KoreanAmbigInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 2497
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 2499
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 5

    .prologue
    .line 2510
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 2511
    .local v1, "hwrInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    const/4 v0, 0x0

    .line 2512
    .local v0, "hwrEnabled":Z
    if-eqz v1, :cond_0

    .line 2513
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    .line 2516
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;->mDefaultEnabled:Z

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2517
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;->isAtLeastOneLayoutIsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 2519
    :goto_0
    return v2

    .line 2517
    :cond_2
    const/4 v2, 0x0

    .line 2519
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2525
    if-eqz p1, :cond_0

    .line 2526
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;->ensureAtleastOneLayoutIsEnabled()V

    .line 2529
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 2530
    return-void
.end method
