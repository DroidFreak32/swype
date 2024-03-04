.class Lcom/nuance/swype/input/settings/Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Settings;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Settings;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Settings$1;->this$0:Lcom/nuance/swype/input/settings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Settings$1;->this$0:Lcom/nuance/swype/input/settings/Settings;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/Settings;->access$000(Lcom/nuance/swype/input/settings/Settings;)V

    .line 45
    return-void
.end method
