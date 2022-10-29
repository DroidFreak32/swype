.class public final Lcom/google/api/services/gmail/model/SendAs;
.super Lcom/google/api/client/json/GenericJson;
.source "SendAs.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isDefault:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isPrimary:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private replyToAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sendAsEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private smtpMsa:Lcom/google/api/services/gmail/model/SmtpMsa;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private treatAsAlias:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private verificationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SendAs;->clone()Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SendAs;->clone()Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 306
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/SendAs;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SendAs;->clone()Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsDefault()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->isDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsPrimary()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->isPrimary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getReplyToAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->replyToAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSendAsEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->sendAsEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmtpMsa()Lcom/google/api/services/gmail/model/SmtpMsa;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->smtpMsa:Lcom/google/api/services/gmail/model/SmtpMsa;

    return-object v0
.end method

.method public final getTreatAsAlias()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->treatAsAlias:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getVerificationStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->verificationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SendAs;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SendAs;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 4

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/SendAs;

    return-object v0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->displayName:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public final setIsDefault(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->isDefault:Ljava/lang/Boolean;

    .line 159
    return-object p0
.end method

.method public final setIsPrimary(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->isPrimary:Ljava/lang/Boolean;

    .line 180
    return-object p0
.end method

.method public final setReplyToAddress(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->replyToAddress:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public final setSendAsEmail(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->sendAsEmail:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public final setSignature(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->signature:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public final setSmtpMsa(Lcom/google/api/services/gmail/model/SmtpMsa;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->smtpMsa:Lcom/google/api/services/gmail/model/SmtpMsa;

    .line 258
    return-object p0
.end method

.method public final setTreatAsAlias(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->treatAsAlias:Ljava/lang/Boolean;

    .line 277
    return-object p0
.end method

.method public final setVerificationStatus(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .registers 2

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->verificationStatus:Ljava/lang/String;

    .line 296
    return-object p0
.end method
