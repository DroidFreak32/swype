.class public Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AccountPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnlinkDeviceDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    iget-object v0, v2, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    .line 106
    .local v0, "delegate":Lcom/nuance/swype/input/settings/AccountPrefs;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$UnlinkDeviceDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->createUnlinkDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method
