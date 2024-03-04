.class Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;
.super Lcom/nuance/swype/input/settings/AccountPrefs;
.source "AccountPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/AccountPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    sget v1, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->ACCOUNT_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->addPreferencesFromResource(I)V

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected showConnectDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->removeDialog(I)V

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->showDialog(I)V

    .line 46
    return-void
.end method

.method protected showDeleteAccountDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->removeDialog(I)V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->showDialog(I)V

    .line 31
    return-void
.end method

.method protected showUnlinkDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->removeDialog(I)V

    .line 38
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefsActivity;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/settings/AccountPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 40
    return-void
.end method
