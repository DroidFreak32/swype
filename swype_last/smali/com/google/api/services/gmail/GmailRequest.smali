.class public abstract Lcom/google/api/services/gmail/GmailRequest;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
.source "GmailRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "oauth_token"
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private userIp:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/gmail/Gmail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/api/services/gmail/GmailRequest;->getAbstractGoogleClient()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/api/services/gmail/GmailRequest;->getAbstractGoogleClient()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    return-object v0
.end method

.method public final getAbstractGoogleClient()Lcom/google/api/services/gmail/Gmail;
    .registers 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/Gmail;

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/api/services/gmail/GmailRequest;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/services/gmail/GmailRequest;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/api/services/gmail/GmailRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/api/services/gmail/GmailRequest;->oauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyPrint()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/api/services/gmail/GmailRequest;->prettyPrint:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getQuotaUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/api/services/gmail/GmailRequest;->quotaUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/services/gmail/GmailRequest;->userIp:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 4

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 4

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/GmailRequest;

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/api/services/gmail/GmailRequest;->alt:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public bridge synthetic setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setDisableGZipContent(Z)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setDisableGZipContent(Z)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/GmailRequest;

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/api/services/gmail/GmailRequest;->fields:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/api/services/gmail/GmailRequest;->key:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/api/services/gmail/GmailRequest;->oauthToken:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/api/services/gmail/GmailRequest;->prettyPrint:Ljava/lang/Boolean;

    .line 140
    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/api/services/gmail/GmailRequest;->quotaUser:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public bridge synthetic setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpHeaders;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/GmailRequest;

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/gmail/GmailRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/api/services/gmail/GmailRequest;->userIp:Ljava/lang/String;

    .line 188
    return-object p0
.end method
