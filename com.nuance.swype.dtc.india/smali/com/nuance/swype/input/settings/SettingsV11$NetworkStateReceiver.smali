.class public Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsV11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SettingsV11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsV11;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->access$000(Lcom/nuance/swype/input/settings/SettingsV11;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->showNetworkFailureDialog()Z

    .line 165
    :cond_0
    return-void
.end method
