.class Lcom/nuance/swype/input/SystemState$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/SystemState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/SystemState;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/SystemState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/SystemState;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/swype/input/SystemState$1;->this$0:Lcom/nuance/swype/input/SystemState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 68
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState$1;->this$0:Lcom/nuance/swype/input/SystemState;

    # invokes: Lcom/nuance/swype/input/SystemState;->updateRingerMode()V
    invoke-static {v1}, Lcom/nuance/swype/input/SystemState;->access$000(Lcom/nuance/swype/input/SystemState;)V

    .line 73
    :cond_12
    :goto_12
    return-void

    .line 69
    :cond_13
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState$1;->this$0:Lcom/nuance/swype/input/SystemState;

    # invokes: Lcom/nuance/swype/input/SystemState;->updateNetworkState()V
    invoke-static {v1}, Lcom/nuance/swype/input/SystemState;->access$100(Lcom/nuance/swype/input/SystemState;)V

    goto :goto_12
.end method
