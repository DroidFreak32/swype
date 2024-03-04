.class public Lcom/nuance/swype/input/settings/SettingsV11Launcher;
.super Ljava/lang/Object;
.source "SettingsV11Launcher.java"

# interfaces
.implements Lcom/nuance/swype/input/settings/ShowSettings;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final HELP_URL:Ljava/lang/String; = "help_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method protected createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:show_fragment"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected createSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->getSettingsClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const-class v0, Lcom/nuance/swype/input/settings/SettingsV11;

    return-object v0
.end method

.method public showAccount(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-class v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public showAddonDictionaries(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    const-class v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 98
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntentForIntent(Landroid/content/Intent;Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "start":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showChineseSettings(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-class v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public showFunctionBar(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v0, Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public showGestures(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v2, Lcom/nuance/swype/input/settings/TutorialFragment;

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "help_url"

    sget v3, Lcom/nuance/swype/input/R$string;->fullhelp_gestures_file:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, ":android:show_fragment_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public showLanguageDownloads(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public showLanguages(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public showMain(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public showMyWordsPrefs(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public showThemes(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v0, :cond_0

    .line 81
    const-class v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const-class v0, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showTutorial(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-class v0, Lcom/nuance/swype/input/settings/TutorialFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public showUpdates(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-class v0, Lcom/nuance/swype/input/settings/UpdatesFragment;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsV11Launcher;->createFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
