.class final Lcom/nuance/swype/startup/ConnectTOSActivity$2;
.super Ljava/lang/Object;
.source "ConnectTOSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ConnectTOSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ConnectTOSActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ConnectTOSActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity$2;->this$0:Lcom/nuance/swype/startup/ConnectTOSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity$2;->this$0:Lcom/nuance/swype/startup/ConnectTOSActivity;

    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->acceptTos()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity$2;->this$0:Lcom/nuance/swype/startup/ConnectTOSActivity;

    iget v1, v1, Lcom/nuance/swype/startup/ConnectTOSActivity;->startFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSActivity$2;->this$0:Lcom/nuance/swype/startup/ConnectTOSActivity;

    iget-object v2, v2, Lcom/nuance/swype/startup/ConnectTOSActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity$2;->this$0:Lcom/nuance/swype/startup/ConnectTOSActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity$2;->this$0:Lcom/nuance/swype/startup/ConnectTOSActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/ConnectTOSActivity;->startNextActivity()V

    .line 94
    return-void

    .line 84
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method
