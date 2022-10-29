.class public final Lcom/google/api/services/gmail/model/ListThreadsResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "ListThreadsResponse.java"


# instance fields
.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private resultSizeEstimate:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private threads:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/Thread;",
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ListThreadsResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultSizeEstimate()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->resultSizeEstimate:Ljava/lang/Long;

    return-object v0
.end method

.method public final getThreads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->threads:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .registers 4

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ListThreadsResponse;

    return-object v0
.end method

.method public final setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->nextPageToken:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public final setResultSizeEstimate(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->resultSizeEstimate:Ljava/lang/Long;

    .line 88
    return-object p0
.end method

.method public final setThreads(Ljava/util/List;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/gmail/model/Thread;",
            ">;)",
            "Lcom/google/api/services/gmail/model/ListThreadsResponse;"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->threads:Ljava/util/List;

    .line 105
    return-object p0
.end method
