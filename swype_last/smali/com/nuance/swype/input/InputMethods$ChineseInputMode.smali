.class public Lcom/nuance/swype/input/InputMethods$ChineseInputMode;
.super Lcom/nuance/swype/input/InputMethods$InputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 2560
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 2561
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;->mDefaultEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;->isAtLeastOneLayoutIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2571
    if-eqz p1, :cond_5

    .line 2572
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;->ensureAtleastOneLayoutIsEnabled()V

    .line 2575
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2576
    return-void
.end method
