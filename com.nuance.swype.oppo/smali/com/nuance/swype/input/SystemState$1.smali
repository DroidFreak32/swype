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
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/swype/input/SystemState$1;->this$0:Lcom/nuance/swype/input/SystemState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState$1;->this$0:Lcom/nuance/swype/input/SystemState;

    invoke-static {v1}, Lcom/nuance/swype/input/SystemState;->access$000(Lcom/nuance/swype/input/SystemState;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState$1;->this$0:Lcom/nuance/swype/input/SystemState;

    invoke-static {v1}, Lcom/nuance/swype/input/SystemState;->access$100(Lcom/nuance/swype/input/SystemState;)V

    goto :goto_0
.end method
