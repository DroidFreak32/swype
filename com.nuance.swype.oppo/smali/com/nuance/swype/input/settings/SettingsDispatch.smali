.class public Lcom/nuance/swype/input/settings/SettingsDispatch;
.super Landroid/app/Activity;
.source "SettingsDispatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 23
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-static {v0}, Lcom/nuance/swype/startup/StartupActivity;->targetClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    .line 25
    .local v1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/nuance/swype/startup/GettingStartedActivity;

    if-eq v1, v2, :cond_1

    .line 26
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsDispatch;->startActivity(Landroid/content/Intent;)V

    .line 34
    .end local v0    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;->finish()V

    .line 35
    return-void

    .line 28
    .restart local v0    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .restart local v1    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->showSettings()V

    goto :goto_0

    .line 31
    .end local v1    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->showSettings()V

    goto :goto_0
.end method
