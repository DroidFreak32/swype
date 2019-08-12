.class public Lcom/nuance/swype/input/settings/UpdatesDispatch;
.super Lcom/nuance/swype/input/settings/SettingsDispatch;
.source "UpdatesDispatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showUpdates()V

    .line 14
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/UpdatesDispatch;->finish()V

    .line 15
    return-void
.end method
