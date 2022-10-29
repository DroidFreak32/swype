.class public Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchDelete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/messages/batchDelete"


# instance fields
.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;)V
    .registers 10

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    .line 2519
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "{userId}/messages/batchDelete"

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2520
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->userId:Ljava/lang/String;

    .line 2521
    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 2497
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 2497
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 2497
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 4

    .prologue
    .line 2583
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4

    .prologue
    .line 2497
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 3

    .prologue
    .line 2525
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 3

    .prologue
    .line 2530
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 3

    .prologue
    .line 2535
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 3

    .prologue
    .line 2540
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 3

    .prologue
    .line 2545
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 3

    .prologue
    .line 2550
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 2

    .prologue
    .line 2577
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->userId:Ljava/lang/String;

    .line 2578
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 3

    .prologue
    .line 2555
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    move-result-object v0

    return-object v0
.end method
