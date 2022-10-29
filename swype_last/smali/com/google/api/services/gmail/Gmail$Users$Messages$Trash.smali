.class public Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Trash"
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
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/messages/{id}/trash"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 3987
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    .line 3988
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "{userId}/messages/{id}/trash"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/gmail/model/Message;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3989
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->userId:Ljava/lang/String;

    .line 3990
    const-string/jumbo v0, "Required parameter id must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->id:Ljava/lang/String;

    .line 3991
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4039
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 3968
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 3968
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 3968
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 4

    .prologue
    .line 4069
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4

    .prologue
    .line 3968
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 3

    .prologue
    .line 3995
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 3

    .prologue
    .line 4000
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 2

    .prologue
    .line 4063
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->id:Ljava/lang/String;

    .line 4064
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 3

    .prologue
    .line 4005
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 3

    .prologue
    .line 4010
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 3

    .prologue
    .line 4015
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 3

    .prologue
    .line 4020
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 2

    .prologue
    .line 4047
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->userId:Ljava/lang/String;

    .line 4048
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 3

    .prologue
    .line 4025
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 3968
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    move-result-object v0

    return-object v0
.end method
