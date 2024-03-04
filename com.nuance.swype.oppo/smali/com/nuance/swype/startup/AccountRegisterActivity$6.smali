.class final Lcom/nuance/swype/startup/AccountRegisterActivity$6;
.super Ljava/lang/Object;
.source "AccountRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/AccountRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->access$200(Lcom/nuance/swype/startup/AccountRegisterActivity;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/AccountRegisterActivity;->doShowDialog(I)V

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/AccountRegisterActivity;->doShowDialog(I)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->access$100(Lcom/nuance/swype/startup/AccountRegisterActivity;)V

    goto :goto_0
.end method
