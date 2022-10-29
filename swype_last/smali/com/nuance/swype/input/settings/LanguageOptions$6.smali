.class Lcom/nuance/swype/input/settings/LanguageOptions$6;
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
    .registers 5
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    iput-object p4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 285
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    invoke-virtual {v3, p2}, Lcom/nuance/swype/preference/KeyboardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 286
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->setCurrent()V

    .line 287
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 288
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isHindiLanguage()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "hindiTransliteration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 289
    const-string/jumbo v3, "pref_hindi_input_mode"

    iget-object v4, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_2e
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 293
    const-string/jumbo v3, "handwriting_full_screen"

    iget-object v4, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 296
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 294
    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 303
    :cond_61
    :goto_61
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 304
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_87

    .line 305
    const-string/jumbo v3, "Languages"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Keyboard:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    :cond_87
    return-void

    .line 297
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_88
    const-string/jumbo v3, "handwriting_half_screen"

    iget-object v4, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 300
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_61
.end method
