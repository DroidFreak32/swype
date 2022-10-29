.class Lcom/nuance/connect/service/manager/DocumentManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DocumentManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DocumentManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DocumentManager$1;->this$0:Lcom/nuance/connect/service/manager/DocumentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager$1;->this$0:Lcom/nuance/connect/service/manager/DocumentManager;

    # getter for: Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DocumentManager;->access$000(Lcom/nuance/connect/service/manager/DocumentManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onLanguageUpdate"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager$1;->this$0:Lcom/nuance/connect/service/manager/DocumentManager;

    # getter for: Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DocumentManager;->access$000(Lcom/nuance/connect/service/manager/DocumentManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onLocaleUpdate("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager$1;->this$0:Lcom/nuance/connect/service/manager/DocumentManager;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/DocumentManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager$1;->this$0:Lcom/nuance/connect/service/manager/DocumentManager;

    # invokes: Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DocumentManager;->access$100(Lcom/nuance/connect/service/manager/DocumentManager;)V

    :cond_22
    return-void
.end method
