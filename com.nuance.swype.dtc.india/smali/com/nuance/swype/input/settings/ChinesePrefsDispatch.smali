.class public Lcom/nuance/swype/input/settings/ChinesePrefsDispatch;
.super Lcom/nuance/swype/input/settings/SettingsDispatch;
.source "ChinesePrefsDispatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showChineseSettings()V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsDispatch;->finish()V

    .line 16
    return-void
.end method
