.class public final Lcom/google/api/services/gmail/model/MessagePartHeader;
.super Lcom/google/api/client/json/GenericJson;
.source "MessagePartHeader.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePartHeader;->clone()Lcom/google/api/services/gmail/model/MessagePartHeader;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePartHeader;->clone()Lcom/google/api/services/gmail/model/MessagePartHeader;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/MessagePartHeader;
    .registers 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/MessagePartHeader;

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
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePartHeader;->clone()Lcom/google/api/services/gmail/model/MessagePartHeader;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePartHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePartHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/MessagePartHeader;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePartHeader;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/MessagePartHeader;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePartHeader;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePartHeader;
    .registers 4

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/MessagePartHeader;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/api/services/gmail/model/MessagePartHeader;
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePartHeader;->name:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public final setValue(Ljava/lang/String;)Lcom/google/api/services/gmail/model/MessagePartHeader;
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePartHeader;->value:Ljava/lang/String;

    .line 81
    return-object p0
.end method
