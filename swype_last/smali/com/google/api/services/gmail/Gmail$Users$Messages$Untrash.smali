.class public Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Untrash"
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
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/messages/{id}/untrash"


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
    .line 4111
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    .line 4112
    iget-object v0, p1, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "{userId}/messages/{id}/untrash"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/gmail/model/Message;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4113
    const-string/jumbo v0, "Required parameter userId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->userId:Ljava/lang/String;

    .line 4114
    const-string/jumbo v0, "Required parameter id must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->id:Ljava/lang/String;

    .line 4115
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4182
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4163
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 4091
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 4091
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 4091
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 4

    .prologue
    .line 4193
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4

    .prologue
    .line 4091
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 3

    .prologue
    .line 4119
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 3

    .prologue
    .line 4124
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 2

    .prologue
    .line 4187
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->id:Ljava/lang/String;

    .line 4188
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 3

    .prologue
    .line 4129
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 3

    .prologue
    .line 4134
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 3

    .prologue
    .line 4139
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 3

    .prologue
    .line 4144
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 2

    .prologue
    .line 4171
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->userId:Ljava/lang/String;

    .line 4172
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 3

    .prologue
    .line 4149
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    move-result-object v0

    return-object v0
.end method
