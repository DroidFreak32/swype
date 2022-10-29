.class Lcom/nuance/swype/input/settings/AccountPrefs$9;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;->createUnlinkDialog(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 483
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v1

    .line 484
    .local v1, "devices":[Lcom/nuance/swypeconnect/ac/ACDevice;
    if-eqz v1, :cond_63

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->val$deviceId:Ljava/lang/String;

    if-eqz v2, :cond_63

    .line 485
    array-length v4, v1

    move v2, v3

    :goto_17
    if-ge v2, v4, :cond_63

    aget-object v0, v1, v2

    .line 486
    .local v0, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 487
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/Connect$Accounts;->unlinkDevice(Lcom/nuance/swypeconnect/ac/ACDevice;)V

    .line 488
    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "UnlinkDialog...unlink device..."

    aput-object v5, v4, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->val$deviceId:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 489
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->val$deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # invokes: Lcom/nuance/swype/input/settings/AccountPrefs;->getThisDeviceId()Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$500(Lcom/nuance/swype/input/settings/AccountPrefs;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 490
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 498
    .end local v0    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    :cond_63
    :goto_63
    return-void

    .line 492
    .restart local v0    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    :cond_64
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$9;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    goto :goto_63

    .line 485
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method
