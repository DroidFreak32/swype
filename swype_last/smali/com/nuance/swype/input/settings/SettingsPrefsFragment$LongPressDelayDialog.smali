.class public Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SettingsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SettingsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongPressDelayDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SettingsPrefs;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;)Lcom/nuance/swype/input/settings/SettingsPrefs;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->createLongPressDurationDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
