.class Lcom/nuance/connect/system/Connectivity$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/system/Connectivity;


# direct methods
.method constructor <init>(Lcom/nuance/connect/system/Connectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/system/Connectivity$1;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/system/Connectivity$1;->this$0:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    return-void
.end method
