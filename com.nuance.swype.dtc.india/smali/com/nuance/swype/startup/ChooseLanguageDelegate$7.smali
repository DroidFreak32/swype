.class final Lcom/nuance/swype/startup/ChooseLanguageDelegate$7;
.super Ljava/lang/Object;
.source "ChooseLanguageDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageDelegate;->timeoutDialog()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$7;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onClick connectedStatus is:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$7;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-static {v3}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$100(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$7;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$400(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    .line 222
    return-void
.end method
