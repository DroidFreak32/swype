.class public Lcom/nuance/swype/input/settings/LanguageDispatch;
.super Lcom/nuance/swype/input/settings/SettingsDispatch;
.source "LanguageDispatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageDispatch;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 17
    .local v0, "data":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 18
    .local v1, "langId":I
    if-eqz v0, :cond_0

    .line 19
    const-string/jumbo v2, "select_installed_language"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguageById(I)V

    .line 26
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->showLanguages()V

    .line 28
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "langId":I
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageDispatch;->finish()V

    .line 29
    return-void
.end method
