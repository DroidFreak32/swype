.class Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/DlmSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncTransaction"
.end annotation


# instance fields
.field private final coreId:I

.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput p2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$900(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncTransaction - unknown core="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$700()[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncTransaction - unsupported core="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$600(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$900(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncTransaction - Ignoring core not in use; core="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isBackupRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$1000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    move-result-object v0

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$1000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowId()J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->startBackup()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "backupFile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/nuance/connect/util/FileUtils;->convertFileToList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished loading backup events count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "78"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "87"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/service/manager/DlmSyncManager;Ljava/lang/String;II)V

    const-string v1, "backup"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v6, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto/16 :goto_0
.end method

.method static synthetic access$1102(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/service/comm/Command;)Lcom/nuance/connect/service/comm/Command;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->restoreGet()V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->resetRestore()V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->pullAck()V

    return-void
.end method

.method static synthetic access$1900(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->restoreRequest()V

    return-void
.end method

.method private pull()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncTransaction.pull() coreId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullHappening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "    Pull already in progress. Ignoring.  Illegal state?"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->startPull()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "78"

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$4;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    const-string v3, "pull"

    sget-object v4, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0
.end method

.method private pullAck()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pullAck() coreId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "78"

    iget v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4"

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->getPullTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    const-string v2, "pullAck"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$5;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$5;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    return-void
.end method

.method private resetRestore()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreComplete()V

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested()V

    :cond_0
    return-void
.end method

.method private restoreGet()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncTransaction.restoreGet() core="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$600(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring restore because the current core is no longer in use. core="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->resetRestore()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isRestoreRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The core ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not have a pending restore request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreComplete()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "78"

    iget v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4"

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->getRestoreTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    const-string v3, "restoreGet"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto/16 :goto_0
.end method

.method private restoreRequest()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncTransaction.restoreRequest() cat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLMManager.restoreRequest() unknown category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isRestoreHappening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "    Restore already in progress. Ignoring request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "    This should be an illegal condition."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->startRestore()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "78"

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;-><init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    const-string v3, "restoreRequest"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;Lcom/nuance/connect/service/comm/ResponseCallback;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Should not be cancel-able"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->rollback()V

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "SyncTransaction - unexpectedly called createDownloadFile"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$600(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNextCommand, the current category is not in use; quitting. cat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isRestoreRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->restoreRequest()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->isPullRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->pull()V

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->finishTransaction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$2000(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$800(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    return-void
.end method

.method public rollback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method
