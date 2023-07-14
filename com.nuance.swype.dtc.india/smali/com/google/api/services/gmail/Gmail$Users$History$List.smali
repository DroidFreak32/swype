.class public Lcom/google/api/services/gmail/Gmail$Users$History$List;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest",
        "<",
        "Lcom/google/api/services/gmail/model/ListHistoryResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/history"


# instance fields
.field private labelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startHistoryId:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$History;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$History;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->this$2:Lcom/google/api/services/gmail/Gmail$Users$History;

    .line 1523
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$History;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "GET"

    const-string/jumbo v3, "{userId}/history"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/gmail/model/ListHistoryResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1524
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->userId:Ljava/lang/String;

    .line 1525
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-super {p0}, Lcom/google/api/services/gmail/GmailRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-super {p0}, Lcom/google/api/services/gmail/GmailRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->labelId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStartHistoryId()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->startHistoryId:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1688
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1539
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1544
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1549
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public setLabelId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->labelId:Ljava/lang/String;

    .line 1608
    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->maxResults:Ljava/lang/Long;

    .line 1624
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1554
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->pageToken:Ljava/lang/String;

    .line 1640
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1559
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1564
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method

.method public setStartHistoryId(Ljava/math/BigInteger;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->startHistoryId:Ljava/math/BigInteger;

    .line 1683
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->userId:Ljava/lang/String;

    .line 1592
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 1

    .prologue
    .line 1569
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object v0

    return-object v0
.end method
