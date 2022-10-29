.class public Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Threads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest",
        "<",
        "Lcom/google/api/services/gmail/model/ListThreadsResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/threads"


# instance fields
.field private includeSpamTrash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private labelIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
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

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Threads;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 7525
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Threads;

    .line 7526
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "GET"

    const-string/jumbo v3, "{userId}/threads"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7527
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->userId:Ljava/lang/String;

    .line 7528
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7537
    invoke-super {p0}, Lcom/google/api/services/gmail/GmailRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7532
    invoke-super {p0}, Lcom/google/api/services/gmail/GmailRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeSpamTrash()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 7605
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLabelIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7648
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->labelIds:Ljava/util/List;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 7664
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7680
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7700
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7586
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeSpamTrash()Z
    .registers 3

    .prologue
    .line 7635
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    .line 7636
    :cond_a
    const/4 v0, 0x0

    .line 7638
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 7507
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 7507
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 7507
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 4

    .prologue
    .line 7714
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4

    .prologue
    .line 7507
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 3

    .prologue
    .line 7542
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 7507
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 3

    .prologue
    .line 7547
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 7507
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public setIncludeSpamTrash(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 2

    .prologue
    .line 7610
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    .line 7611
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 3

    .prologue
    .line 7552
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 7507
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public setLabelIds(Ljava/util/List;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/Gmail$Users$Threads$List;"
        }
    .end annotation

    .prologue
    .line 7653
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->labelIds:Ljava/util/List;

    .line 7654
    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 2

    .prologue
    .line 7669
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->maxResults:Ljava/lang/Long;

    .line 7670
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 3

    .prologue
    .line 7557
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 7507
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 2

    .prologue
    .line 7685
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->pageToken:Ljava/lang/String;

    .line 7686
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 3

    .prologue
    .line 7562
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 7507
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public setQ(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 2

    .prologue
    .line 7708
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->q:Ljava/lang/String;

    .line 7709
    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 3

    .prologue
    .line 7567
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 7507
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 2

    .prologue
    .line 7594
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->userId:Ljava/lang/String;

    .line 7595
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 3

    .prologue
    .line 7572
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 7507
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object v0

    return-object v0
.end method
