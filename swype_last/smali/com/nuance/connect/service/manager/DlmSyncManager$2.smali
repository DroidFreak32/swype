.class Lcom/nuance/connect/service/manager/DlmSyncManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/AccountListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "DLMManager.onInvalidated"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager;->disableDlmSync()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pause()V

    goto :goto_1f

    :cond_35
    return-void
.end method

.method public onLinked()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "DLMManager.onLinked"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$500(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$500(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$2;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager;->enableDlmSync()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$600(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    :cond_25
    return-void
.end method
