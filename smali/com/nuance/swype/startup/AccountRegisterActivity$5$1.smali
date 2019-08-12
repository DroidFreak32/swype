.class final Lcom/nuance/swype/startup/AccountRegisterActivity$5$1;
.super Ljava/lang/Object;
.source "AccountRegisterActivity.java"

# interfaces
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/AccountRegisterActivity$5;->doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/nuance/swype/startup/AccountRegisterActivity$5;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/AccountRegisterActivity$5;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$5$1;->this$1:Lcom/nuance/swype/startup/AccountRegisterActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public final onPositiveButtonClick()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$5$1;->this$1:Lcom/nuance/swype/startup/AccountRegisterActivity$5;

    iget-object v0, v0, Lcom/nuance/swype/startup/AccountRegisterActivity$5;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->access$100(Lcom/nuance/swype/startup/AccountRegisterActivity;)V

    .line 134
    const/4 v0, 0x0

    return v0
.end method
