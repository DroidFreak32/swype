.class final Lcom/nuance/swype/startup/AccountRegisterActivity$5;
.super Ljava/lang/Object;
.source "AccountRegisterActivity.java"

# interfaces
.implements Lcom/nuance/swype/startup/StartupActivity$DialogCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/AccountRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$5;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$5;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    new-instance v1, Lcom/nuance/swype/startup/AccountRegisterActivity$5$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity$5$1;-><init>(Lcom/nuance/swype/startup/AccountRegisterActivity$5;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
