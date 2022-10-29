.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryListTransaction"
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private final interestingCategories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final locale:Ljava/util/Locale;

.field private volatile rejected:Z

.field private final taskAcknowledgement:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    if-eqz p4, :cond_52

    :goto_e
    iput-object p4, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->locale:Ljava/util/Locale;

    iput-object p5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->country:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_59

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->submanagers:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$300(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_36

    :cond_52
    iget-object v0, p1, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p4

    goto :goto_e

    :cond_59
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_63
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryListState:Ljava/util/Map;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;

    if-nez v1, :cond_95

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    :goto_89
    sget-object v6, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->UPDATING:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    if-nez v1, :cond_98

    const/4 v1, 0x0

    :goto_8e
    invoke-direct {v5, v2, v6, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;-><init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    :cond_95
    iget-object v2, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    goto :goto_89

    :cond_98
    iget v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->categoryCount:I

    goto :goto_8e

    :cond_9b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->getList(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;Lcom/nuance/connect/comm/Response;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->listResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method private getList(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->country:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->country:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "getList"

    const-string/jumbo v2, " locale:"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " country:"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->country:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_31

    :cond_45
    const-string/jumbo v0, "123"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "98"

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "122"

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->country:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string/jumbo v1, "list"

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v0, v1, v2, v6}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method private listResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->processListResponse(Lcom/nuance/connect/comm/Response;Ljava/util/Set;)V
    invoke-static {v0, p1, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$600(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/comm/Response;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "CategoryListCommand"

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .registers 2

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->rejected:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->checkRefreshCategoryLists()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$700(Lcom/nuance/connect/service/manager/CategoryManager;)V

    :cond_12
    return-void
.end method

.method public onTransactionRejected(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->rejected:Z

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction;->onTransactionRejected(I)V

    return-void
.end method

.method public rollback()V
    .registers 1

    return-void
.end method
