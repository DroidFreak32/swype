.class public Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GmailImport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest",
        "<",
        "Lcom/google/api/services/gmail/model/Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/messages/import"


# instance fields
.field private deleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private internalDateSource:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private neverMarkSpam:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private processForCalendar:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;)V
    .registers 10

    .prologue
    .line 2943
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    .line 2944
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "{userId}/messages/import"

    const-class v5, Lcom/google/api/services/gmail/model/Message;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2945
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->userId:Ljava/lang/String;

    .line 2946
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;Lcom/google/api/client/http/AbstractInputStreamContent;)V
    .registers 11

    .prologue
    .line 2970
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    .line 2971
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/upload/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v3, v3, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v3}, Lcom/google/api/services/gmail/Gmail;->getServicePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "{userId}/messages/import"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/api/services/gmail/model/Message;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2972
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->userId:Ljava/lang/String;

    .line 2973
    invoke-virtual {p0, p4}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->initializeMediaUpload(Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 2974
    return-void
.end method


# virtual methods
.method public getDeleted()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 3045
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->deleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInternalDateSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->internalDateSource:Ljava/lang/String;

    return-object v0
.end method

.method public getNeverMarkSpam()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->neverMarkSpam:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProcessForCalendar()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->processForCalendar:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .registers 3

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->deleted:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    .line 3080
    :cond_a
    const/4 v0, 0x0

    .line 3082
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->deleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method public isNeverMarkSpam()Z
    .registers 3

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->neverMarkSpam:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->neverMarkSpam:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    .line 3146
    :cond_a
    const/4 v0, 0x0

    .line 3148
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->neverMarkSpam:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method public isProcessForCalendar()Z
    .registers 3

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->processForCalendar:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->processForCalendar:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    .line 3197
    :cond_a
    const/4 v0, 0x0

    .line 3199
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->processForCalendar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 2922
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 2922
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 2922
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 4

    .prologue
    .line 3204
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4

    .prologue
    .line 2922
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 3

    .prologue
    .line 2978
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public setDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 2

    .prologue
    .line 3053
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->deleted:Ljava/lang/Boolean;

    .line 3054
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 3

    .prologue
    .line 2983
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public setInternalDateSource(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 2

    .prologue
    .line 3097
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->internalDateSource:Ljava/lang/String;

    .line 3098
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 3

    .prologue
    .line 2988
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public setNeverMarkSpam(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 2

    .prologue
    .line 3120
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->neverMarkSpam:Ljava/lang/Boolean;

    .line 3121
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 3

    .prologue
    .line 2993
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 3

    .prologue
    .line 2998
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public setProcessForCalendar(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 2

    .prologue
    .line 3170
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->processForCalendar:Ljava/lang/Boolean;

    .line 3171
    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 3

    .prologue
    .line 3003
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 2

    .prologue
    .line 3030
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->userId:Ljava/lang/String;

    .line 3031
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 3

    .prologue
    .line 3008
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    move-result-object v0

    return-object v0
.end method
