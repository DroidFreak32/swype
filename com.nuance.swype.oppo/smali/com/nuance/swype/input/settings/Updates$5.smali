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
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionChanged(Z)V

    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 149
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->showConnectDialog()V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$5;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    goto :goto_0
.end method

.method public onInitialized()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
