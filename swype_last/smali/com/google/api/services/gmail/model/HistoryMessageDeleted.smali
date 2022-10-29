.class public final Lcom/google/api/services/gmail/model/HistoryMessageDeleted;
.super Lcom/google/api/client/json/GenericJson;
.source "HistoryMessageDeleted.java"


# instance fields
.field private message:Lcom/google/api/services/gmail/model/Message;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;->clone()Lcom/google/api/services/gmail/model/HistoryMessageDeleted;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;->clone()Lcom/google/api/services/gmail/model/HistoryMessageDeleted;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/HistoryMessageDeleted;
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;->clone()Lcom/google/api/services/gmail/model/HistoryMessageDeleted;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Lcom/google/api/services/gmail/model/Message;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;->message:Lcom/google/api/services/gmail/model/Message;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/HistoryMessageDeleted;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/HistoryMessageDeleted;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/HistoryMessageDeleted;
    .registers 4

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;

    return-object v0
.end method

.method public final setMessage(Lcom/google/api/services/gmail/model/Message;)Lcom/google/api/services/gmail/model/HistoryMessageDeleted;
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/api/services/gmail/model/HistoryMessageDeleted;->message:Lcom/google/api/services/gmail/model/Message;

    .line 54
    return-object p0
.end method
