.class Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;
.super Ljava/lang/Object;
.source "ShowFirstTimeStartupMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->checkAndShowTrialExpired(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;->this$0:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 71
    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;->this$0:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-static {v2}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->access$000(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->getPaidVersionUrl()I

    move-result v1

    .line 72
    .local v1, "urlId":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;->this$0:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 73
    invoke-static {v3}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->access$000(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/IMEApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .local v0, "marketIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;->this$0:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-static {v2}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->access$000(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IMEApplication;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
