.class Lcom/nuance/swype/input/settings/AccountPrefs$7;
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
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 392
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$200(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v2

    .line 393
    .local v2, "devices":[Lcom/nuance/swypeconnect/ac/ACDevice;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->val$deviceId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 394
    move-object v0, v2

    .local v0, "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 395
    .local v1, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 396
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$200(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->unlinkDevice(Lcom/nuance/swypeconnect/ac/ACDevice;)V

    .line 397
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->val$deviceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v6}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$300(Lcom/nuance/swype/input/settings/AccountPrefs;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 406
    .end local v0    # "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v1    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    :goto_1
    return-void

    .line 400
    .restart local v0    # "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .restart local v1    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v5}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    goto :goto_1

    .line 394
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
