.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryListTransaction"
.end annotation


# instance fields
.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

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

.field private final taskAcknowledgement:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;

.field private final transactionNameSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;I)V
    .locals 4

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->taskAcknowledgement:Ljava/lang/String;

    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->transactionNameSuffix:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->getList(Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/SubManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/SubManager;->getTypesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->transactionNameSuffix:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->interestingCategories:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->getList(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->listResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method private getList(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "123"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v2, "list"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {v0, v2, v3, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method private listResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$600(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/comm/Response;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->taskAcknowledgement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->taskCompletedAcknowledgement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CategoryListCommand"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->transactionNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onEndProcessing()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public rollback()V
    .locals 0

    return-void
.end method
