.class public final Lcom/google/api/services/gmail/model/History;
.super Lcom/google/api/client/json/GenericJson;
.source "History.java"


# instance fields
.field private id:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private labelsAdded:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryLabelAdded;",
            ">;"
        }
    .end annotation
.end field

.field private labelsRemoved:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryLabelRemoved;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private messagesAdded:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryMessageAdded;",
            ">;"
        }
    .end annotation
.end field

.field private messagesDeleted:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryMessageDeleted;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/History;->clone()Lcom/google/api/services/gmail/model/History;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/History;->clone()Lcom/google/api/services/gmail/model/History;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/History;
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/History;

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
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/History;->clone()Lcom/google/api/services/gmail/model/History;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/services/gmail/model/History;->id:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getLabelsAdded()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryLabelAdded;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/services/gmail/model/History;->labelsAdded:Ljava/util/List;

    return-object v0
.end method

.method public final getLabelsRemoved()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryLabelRemoved;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/services/gmail/model/History;->labelsRemoved:Ljava/util/List;

    return-object v0
.end method

.method public final getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/api/services/gmail/model/History;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final getMessagesAdded()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryMessageAdded;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/api/services/gmail/model/History;->messagesAdded:Ljava/util/List;

    return-object v0
.end method

.method public final getMessagesDeleted()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryMessageDeleted;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/api/services/gmail/model/History;->messagesDeleted:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/History;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/History;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/History;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/History;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/History;
    .registers 4

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/History;

    return-object v0
.end method

.method public final setId(Ljava/math/BigInteger;)Lcom/google/api/services/gmail/model/History;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/api/services/gmail/model/History;->id:Ljava/math/BigInteger;

    .line 95
    return-object p0
.end method

.method public final setLabelsAdded(Ljava/util/List;)Lcom/google/api/services/gmail/model/History;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryLabelAdded;",
            ">;)",
            "Lcom/google/api/services/gmail/model/History;"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/api/services/gmail/model/History;->labelsAdded:Ljava/util/List;

    .line 112
    return-object p0
.end method

.method public final setLabelsRemoved(Ljava/util/List;)Lcom/google/api/services/gmail/model/History;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryLabelRemoved;",
            ">;)",
            "Lcom/google/api/services/gmail/model/History;"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/services/gmail/model/History;->labelsRemoved:Ljava/util/List;

    .line 129
    return-object p0
.end method

.method public final setMessages(Ljava/util/List;)Lcom/google/api/services/gmail/model/History;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/Message;",
            ">;)",
            "Lcom/google/api/services/gmail/model/History;"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/api/services/gmail/model/History;->messages:Ljava/util/List;

    .line 150
    return-object p0
.end method

.method public final setMessagesAdded(Ljava/util/List;)Lcom/google/api/services/gmail/model/History;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryMessageAdded;",
            ">;)",
            "Lcom/google/api/services/gmail/model/History;"
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/api/services/gmail/model/History;->messagesAdded:Ljava/util/List;

    .line 167
    return-object p0
.end method

.method public final setMessagesDeleted(Ljava/util/List;)Lcom/google/api/services/gmail/model/History;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/HistoryMessageDeleted;",
            ">;)",
            "Lcom/google/api/services/gmail/model/History;"
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/api/services/gmail/model/History;->messagesDeleted:Ljava/util/List;

    .line 184
    return-object p0
.end method
