.class public final Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;
.super Lcom/google/api/client/json/GenericJson;
.source "BatchDeleteMessagesRequest.java"


# instance fields
.field private ids:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;->clone()Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;->clone()Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;->clone()Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;->ids:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;
    .registers 4

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;

    return-object v0
.end method

.method public final setIds(Ljava/util/List;)Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;->ids:Ljava/util/List;

    .line 57
    return-object p0
.end method
