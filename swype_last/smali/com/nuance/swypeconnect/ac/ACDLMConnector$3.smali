.class Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupDlm()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;->exportAsEvents(ZI)V

    move v0, v1

    goto :goto_a
.end method

.method public processDlmDelete(I)Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;->deleteCategory(I)V

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public processDlmDelete(II)Z
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;->deleteCategoryLanguage(II)V

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public processEvent(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_2
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1d

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v1

    if-eqz v1, :cond_10

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$3;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$700(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;->processEvent([B)V

    const/4 v0, 0x1

    goto :goto_11

    :catch_1d
    move-exception v1

    goto :goto_6
.end method

.method public scan([CIIZ)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    return-void
.end method

.method public scanCategory(I[CIIZ)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method

.method public scanEnd()V
    .registers 1

    return-void
.end method
