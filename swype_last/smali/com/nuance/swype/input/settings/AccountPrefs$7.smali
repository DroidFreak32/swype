.class Lcom/nuance/swype/input/settings/AccountPrefs$7;
.super Landroid/os/AsyncTask;
.source "AccountPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 285
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;Lcom/nuance/swype/input/settings/AccountPrefs$1;)V

    .line 286
    .local v0, "holder":Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->backupEnabled:Z

    .line 287
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->activeAccount:Lcom/nuance/swypeconnect/ac/ACAccount;

    .line 288
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # invokes: Lcom/nuance/swype/input/settings/AccountPrefs;->getThisDeviceId()Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$500(Lcom/nuance/swype/input/settings/AccountPrefs;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->thisDeviceId:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->devices:[Lcom/nuance/swypeconnect/ac/ACDevice;

    .line 290
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Sync;->isAvailable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->isAvailable:Z

    .line 291
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 282
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$7;->doInBackground([Ljava/lang/Void;)Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;)V
    .registers 8
    .param p1, "result"    # Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    iget-boolean v1, p1, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->backupEnabled:Z

    iget-object v2, p1, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->activeAccount:Lcom/nuance/swypeconnect/ac/ACAccount;

    iget-boolean v3, p1, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->isAvailable:Z

    iget-object v4, p1, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->thisDeviceId:Ljava/lang/String;

    iget-object v5, p1, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->devices:[Lcom/nuance/swypeconnect/ac/ACDevice;

    # invokes: Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings(ZLcom/nuance/swypeconnect/ac/ACAccount;ZLjava/lang/String;[Lcom/nuance/swypeconnect/ac/ACDevice;)V
    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$600(Lcom/nuance/swype/input/settings/AccountPrefs;ZLcom/nuance/swypeconnect/ac/ACAccount;ZLjava/lang/String;[Lcom/nuance/swypeconnect/ac/ACDevice;)V

    .line 297
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/settings/AccountPrefs;->currentBuildingSettingAsync:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$702(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 298
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 282
    check-cast p1, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$7;->onPostExecute(Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;)V

    return-void
.end method
