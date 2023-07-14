.class public Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SocialIntegrationPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoNetworkDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;)Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->createNoNetworkDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
