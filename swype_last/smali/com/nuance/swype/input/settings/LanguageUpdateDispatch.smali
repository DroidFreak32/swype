.class public Lcom/nuance/swype/input/settings/LanguageUpdateDispatch;
.super Lcom/nuance/swype/input/settings/SettingsDispatch;
.source "LanguageUpdateDispatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_10

    .line 14
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showLanguageDownloads()V

    .line 16
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdateDispatch;->finish()V

    .line 17
    return-void
.end method
