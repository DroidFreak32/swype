.class public Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Labels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest",
        "<",
        "Lcom/google/api/services/gmail/model/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/labels/{id}"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Labels;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Labels;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/Label;)V
    .registers 11

    .prologue
    .line 2362
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Labels;

    .line 2363
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Labels;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "PUT"

    const-string/jumbo v3, "{userId}/labels/{id}"

    const-class v5, Lcom/google/api/services/gmail/model/Label;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2364
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->userId:Ljava/lang/String;

    .line 2365
    const-string/jumbo v0, "Required parameter id must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->id:Ljava/lang/String;

    .line 2366
    const-string/jumbo v0, "content"

    invoke-virtual {p0, p4, v0}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2367
    invoke-virtual {p4}, Lcom/google/api/services/gmail/model/Label;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Label.getId()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2368
    const-string/jumbo v0, "content"

    invoke-virtual {p0, p4, v0}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2369
    invoke-virtual {p4}, Lcom/google/api/services/gmail/model/Label;->getLabelListVisibility()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Label.getLabelListVisibility()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2370
    const-string/jumbo v0, "content"

    invoke-virtual {p0, p4, v0}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2371
    invoke-virtual {p4}, Lcom/google/api/services/gmail/model/Label;->getMessageListVisibility()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Label.getMessageListVisibility()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2372
    const-string/jumbo v0, "content"

    invoke-virtual {p0, p4, v0}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2373
    invoke-virtual {p4}, Lcom/google/api/services/gmail/model/Label;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Label.getName()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2374
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 2342
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 2342
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 2342
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 4

    .prologue
    .line 2452
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4

    .prologue
    .line 2342
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 3

    .prologue
    .line 2378
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 3

    .prologue
    .line 2383
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 2

    .prologue
    .line 2446
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->id:Ljava/lang/String;

    .line 2447
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 3

    .prologue
    .line 2388
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 3

    .prologue
    .line 2393
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 3

    .prologue
    .line 2398
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 3

    .prologue
    .line 2403
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 2

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->userId:Ljava/lang/String;

    .line 2431
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;
    .registers 3

    .prologue
    .line 2408
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Labels$Update;

    move-result-object v0

    return-object v0
.end method
