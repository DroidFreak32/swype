.class Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupDlm()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;->exportAsEvents(ZI)V

    move v0, v1

    goto :goto_0
.end method

.method public processDlmDelete(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;->deleteCategory(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processDlmDelete(II)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;->deleteCategoryLanguage(II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processEvent(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;->processEvent([B)V

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public scan([CIIZ)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;->scanBuffer([CIIZZ)Z

    goto :goto_0
.end method

.method public scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public scanCategory(I[CIIZ)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$600(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;->scanBuffer([CIIZZ)Z

    goto :goto_0
.end method

.method public scanEnd()V
    .locals 0

    return-void
.end method
