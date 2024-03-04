.class final Lcom/nuance/swype/startup/AccountRegisterActivity$4;
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
.field private synthetic this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$4;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity$4;->this$0:Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->access$000(Lcom/nuance/swype/startup/AccountRegisterActivity;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
