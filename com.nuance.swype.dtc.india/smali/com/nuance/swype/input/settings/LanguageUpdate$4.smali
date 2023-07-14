.class Lcom/nuance/swype/input/settings/LanguageUpdate$4;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .prologue
    .line 169
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onConnectionChanged("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->onConnectionChanged()V

    .line 173
    :cond_0
    return-void
.end method

.method public onConnectionStatus(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onConnectionStatus() status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->forId(I)Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 187
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$600(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$600(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->createConnectDialogForLanguage()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$602(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 192
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$600(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onInitialized()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-super {p0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    :cond_0
    return-void
.end method
