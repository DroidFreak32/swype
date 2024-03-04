.class Lcom/nuance/swype/input/settings/LanguageOptions$6;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

.field final synthetic val$curLanguage:Lcom/nuance/swype/input/InputMethods$Language;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$curLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->onKeyboardClicked(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 374
    return-void
.end method

.method public onLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 4
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 356
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 363
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 364
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_1

    .line 365
    const-string v1, "Recent Languages"

    iget-object v2, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->val$curLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$6;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->refresh()V

    goto :goto_0
.end method
