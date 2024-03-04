.class Lcom/nuance/swype/input/settings/LanguageOptions$5;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->createKeyboardDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

.field final synthetic val$currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

.field final synthetic val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

.field final synthetic val$language:Lcom/nuance/swype/input/InputMethods$Language;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/preference/KeyboardListAdapter;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    iput-object p4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 284
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    invoke-virtual {v3, p2}, Lcom/nuance/swype/preference/KeyboardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 285
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->setCurrent()V

    .line 287
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 289
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v3, "handwriting_full_screen"

    iget-object v4, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 299
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 300
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_1

    .line 301
    const-string v3, "Languages"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Keyboard:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    :cond_1
    return-void

    .line 293
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_2
    const-string v3, "handwriting_half_screen"

    iget-object v4, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
