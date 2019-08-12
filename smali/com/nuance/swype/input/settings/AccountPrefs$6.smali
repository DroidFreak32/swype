.class Lcom/nuance/swype/input/settings/AccountPrefs$6;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;->createDeleteAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$6;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$6;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$200(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->deleteActiveAccount(Z)V

    .line 373
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$6;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 374
    return-void
.end method
