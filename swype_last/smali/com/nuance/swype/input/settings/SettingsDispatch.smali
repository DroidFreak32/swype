.class public Lcom/nuance/swype/input/settings/SettingsDispatch;
.super Landroid/app/Activity;
.source "SettingsDispatch.java"


# static fields
.field private static final REQUEST_CODE_TOS:I = 0x1


# instance fields
.field private mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    packed-switch p1, :pswitch_data_12

    .line 61
    :goto_6
    return-void

    .line 56
    :pswitch_7
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;->finish()V

    goto :goto_6

    .line 54
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_57

    .line 24
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 25
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 26
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->postUserUnlock()V

    .line 29
    :cond_1e
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 30
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 31
    const-string/jumbo v2, "fromNotification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 33
    if-eqz v1, :cond_3e

    .line 34
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->SYSTEM_NOTIFICATION:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v1}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 38
    :cond_3e
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsDispatch;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-nez v1, :cond_4c

    .line 39
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartupMessages()Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SettingsDispatch;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 41
    :cond_4c
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsDispatch;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {v1, v3, v3, v4, v4}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showStartup(ZZLandroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 42
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    .line 45
    .end local v0    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_57
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;->finish()V

    .line 46
    return-void
.end method
