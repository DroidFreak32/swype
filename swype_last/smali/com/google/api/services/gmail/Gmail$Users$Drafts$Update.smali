.class public Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Drafts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest",
        "<",
        "Lcom/google/api/services/gmail/model/Draft;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/drafts/{id}"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Drafts;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;)V
    .registers 11

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Drafts;

    .line 1351
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "PUT"

    const-string/jumbo v3, "{userId}/drafts/{id}"

    const-class v5, Lcom/google/api/services/gmail/model/Draft;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1352
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->userId:Ljava/lang/String;

    .line 1353
    const-string/jumbo v0, "Required parameter id must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->id:Ljava/lang/String;

    .line 1354
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;Lcom/google/api/client/http/AbstractInputStreamContent;)V
    .registers 12

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Drafts;

    .line 1377
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "PUT"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/upload/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v3, v3, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v3}, Lcom/google/api/services/gmail/Gmail;->getServicePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "{userId}/drafts/{id}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/api/services/gmail/model/Draft;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1378
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->userId:Ljava/lang/String;

    .line 1379
    const-string/jumbo v0, "Required parameter id must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->id:Ljava/lang/String;

    .line 1380
    invoke-virtual {p0, p5}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->initializeMediaUpload(Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 1381
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 4

    .prologue
    .line 1459
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4

    .prologue
    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 3

    .prologue
    .line 1385
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 3

    .prologue
    .line 1390
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 2

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->id:Ljava/lang/String;

    .line 1454
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 3

    .prologue
    .line 1395
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 3

    .prologue
    .line 1400
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 3

    .prologue
    .line 1405
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 3

    .prologue
    .line 1410
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 2

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->userId:Ljava/lang/String;

    .line 1438
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 3

    .prologue
    .line 1415
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-result-object v0

    return-object v0
.end method
