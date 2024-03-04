.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$9;
.super Ljava/lang/Object;
.source "ChooseLanguageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;->timeoutDialog()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x2

    .line 259
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$400(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$300(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$500(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Z

    goto :goto_0
.end method
