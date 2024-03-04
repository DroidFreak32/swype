.class Lcom/nuance/swype/input/settings/LanguageOptions$4;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->createLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

.field final synthetic val$firstLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field final synthetic val$isAdditionalLanguage:Z

.field final synthetic val$languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

.field final synthetic val$originalLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field final synthetic val$secondaryLanguage:Lcom/nuance/swype/input/InputMethods$Language;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/LanguageListAdapter;Lcom/nuance/swype/input/InputMethods$Language;ZLcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$firstLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iput-boolean p4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$isAdditionalLanguage:Z

    iput-object p5, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$originalLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iput-object p6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$secondaryLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 201
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v6, v6, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 207
    .local v2, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    invoke-virtual {v6, p2}, Lcom/nuance/swype/input/LanguageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .line 208
    .local v3, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v3, :cond_3

    .line 210
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$firstLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "languageId":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$firstLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 231
    :goto_1
    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 232
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v6}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 234
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v6, v6, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 235
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isRecentLanguageTipAlreadyShown()Z

    move-result v6

    if-nez v6, :cond_2

    .line 236
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setRecentLanguageTipShown()V

    .line 237
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v6, v6, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v7, v7, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    sget v8, Lcom/nuance/swype/input/R$string;->tips_bilingual_languageswitchtoast:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 241
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "language"

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v7, v7, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showAlmAvailableDialog(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 245
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v6, v6, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v5

    .line 246
    .local v5, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v5, :cond_0

    .line 247
    iget-boolean v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$isAdditionalLanguage:Z

    if-eqz v6, :cond_7

    .line 248
    const-string v7, "additional_language"

    iget-object v8, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$secondaryLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$secondaryLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, v6, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    :goto_2
    invoke-interface {v5, v7, v8, v6}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "languageId":Ljava/lang/String;
    .end local v5    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_3
    iget-boolean v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$isAdditionalLanguage:Z

    if-eqz v6, :cond_4

    .line 218
    new-instance v6, Lcom/nuance/swype/input/BilingualLanguage;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$originalLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {v6, v7, v3}, Lcom/nuance/swype/input/BilingualLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 226
    :cond_4
    iget-boolean v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$isAdditionalLanguage:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$originalLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v6, v3}, Lcom/nuance/swype/input/BilingualLanguage;->getLanguageId(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "languageId":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v4    # "languageId":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 248
    .restart local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v4    # "languageId":Ljava/lang/String;
    .restart local v5    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_6
    const-string v6, "None"

    goto :goto_2

    .line 252
    :cond_7
    const-string v6, "language"

    iget-object v7, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$firstLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v8, v8, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
