.class public final Lcom/google/api/services/gmail/model/AutoForwarding;
.super Lcom/google/api/client/json/GenericJson;
.source "AutoForwarding.java"


# instance fields
.field private disposition:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/AutoForwarding;->clone()Lcom/google/api/services/gmail/model/AutoForwarding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/AutoForwarding;->clone()Lcom/google/api/services/gmail/model/AutoForwarding;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/AutoForwarding;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/AutoForwarding;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/AutoForwarding;->clone()Lcom/google/api/services/gmail/model/AutoForwarding;

    move-result-object v0

    return-object v0
.end method

.method public final getDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/services/gmail/model/AutoForwarding;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/services/gmail/model/AutoForwarding;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/api/services/gmail/model/AutoForwarding;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/AutoForwarding;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/AutoForwarding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/AutoForwarding;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/AutoForwarding;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/AutoForwarding;
    .locals 1

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/AutoForwarding;

    return-object v0
.end method

.method public final setDisposition(Ljava/lang/String;)Lcom/google/api/services/gmail/model/AutoForwarding;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/api/services/gmail/model/AutoForwarding;->disposition:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public final setEmailAddress(Ljava/lang/String;)Lcom/google/api/services/gmail/model/AutoForwarding;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/api/services/gmail/model/AutoForwarding;->emailAddress:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public final setEnabled(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/AutoForwarding;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/api/services/gmail/model/AutoForwarding;->enabled:Ljava/lang/Boolean;

    .line 108
    return-object p0
.end method
