.class public Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;
.super Landroid/app/DialogFragment;
.source "SettingsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SettingsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionSpeedDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;)Lcom/nuance/swype/input/settings/SettingsPrefs;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->createRecognitionSpeedDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
