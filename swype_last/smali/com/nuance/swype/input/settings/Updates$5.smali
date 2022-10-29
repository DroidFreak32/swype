.class Lcom/nuance/swype/input/settings/Updates$5;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "Updates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Updates;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Updates;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .registers 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionChanged(Z)V

    .line 149
    if-nez p1, :cond_10

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$100(Lcom/nuance/swype/input/settings/Updates;)V

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->showConnectDialog()V

    .line 155
    :goto_f
    return-void

    .line 153
    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$100(Lcom/nuance/swype/input/settings/Updates;)V

    goto :goto_f
.end method

.method public onInitialized()V
    .registers 1

    .prologue
    .line 144
    return-void
.end method
