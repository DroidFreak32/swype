.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$000(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "localeReceiver.onReceive()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->setActiveLocale(Ljava/util/Locale;)V

    return-void
.end method
