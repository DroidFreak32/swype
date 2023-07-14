.class public final Lcom/google/api/services/gmail/model/ListHistoryResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "ListHistoryResponse.java"


# instance fields
.field private history:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/History;",
            ">;"
        }
    .end annotation
.end field

.field private historyId:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/api/services/gmail/model/History;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListHistoryResponse;->clone()Lcom/google/api/services/gmail/model/ListHistoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListHistoryResponse;->clone()Lcom/google/api/services/gmail/model/ListHistoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/ListHistoryResponse;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ListHistoryResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListHistoryResponse;->clone()Lcom/google/api/services/gmail/model/ListHistoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/History;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListHistoryResponse;->history:Ljava/util/List;

    return-object v0
.end method

.method public final getHistoryId()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListHistoryResponse;->historyId:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListHistoryResponse;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListHistoryResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListHistoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListHistoryResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListHistoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListHistoryResponse;
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ListHistoryResponse;

    return-object v0
.end method

.method public final setHistory(Ljava/util/List;)Lcom/google/api/services/gmail/model/ListHistoryResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/History;",
            ">;)",
            "Lcom/google/api/services/gmail/model/ListHistoryResponse;"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListHistoryResponse;->history:Ljava/util/List;

    .line 80
    return-object p0
.end method

.method public final setHistoryId(Ljava/math/BigInteger;)Lcom/google/api/services/gmail/model/ListHistoryResponse;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListHistoryResponse;->historyId:Ljava/math/BigInteger;

    .line 97
    return-object p0
.end method

.method public final setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/model/ListHistoryResponse;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListHistoryResponse;->nextPageToken:Ljava/lang/String;

    .line 114
    return-object p0
.end method
