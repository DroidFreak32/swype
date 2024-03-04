.class final Lcom/nuance/swype/startup/CustomWebviewActivity$2;
.super Ljava/lang/Object;
.source "CustomWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/CustomWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/CustomWebviewActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/CustomWebviewActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nuance/swype/startup/CustomWebviewActivity$2;->this$0:Lcom/nuance/swype/startup/CustomWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/nuance/swype/startup/CustomWebviewActivity$2;->this$0:Lcom/nuance/swype/startup/CustomWebviewActivity;

    iget v1, v1, Lcom/nuance/swype/startup/CustomWebviewActivity;->startFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/CustomWebviewActivity$2;->this$0:Lcom/nuance/swype/startup/CustomWebviewActivity;

    iget-object v2, v2, Lcom/nuance/swype/startup/CustomWebviewActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/nuance/swype/startup/CustomWebviewActivity$2;->this$0:Lcom/nuance/swype/startup/CustomWebviewActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/startup/CustomWebviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 65
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/startup/CustomWebviewActivity$2;->this$0:Lcom/nuance/swype/startup/CustomWebviewActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/CustomWebviewActivity;->finish()V

    .line 66
    return-void
.end method
