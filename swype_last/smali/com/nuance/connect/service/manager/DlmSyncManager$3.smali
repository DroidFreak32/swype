.class Lcom/nuance/connect/service/manager/DlmSyncManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$700(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;
    invoke-static {}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$800()[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_3d

    array-length v2, p1

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_3d

    aget v3, p1, v0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4, v3}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v3

    if-ltz v3, :cond_3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v4}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$700(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_3d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->managerStartComplete()V

    :cond_4a
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$900(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    :cond_57
    return-void
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .registers 2

    return-void
.end method
