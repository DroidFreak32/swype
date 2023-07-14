.class public final Lcom/google/api/services/gmail/model/Filter;
.super Lcom/google/api/client/json/GenericJson;
.source "Filter.java"


# instance fields
.field private action:Lcom/google/api/services/gmail/model/FilterAction;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private criteria:Lcom/google/api/services/gmail/model/FilterCriteria;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Filter;->clone()Lcom/google/api/services/gmail/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Filter;->clone()Lcom/google/api/services/gmail/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/Filter;
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Filter;

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
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Filter;->clone()Lcom/google/api/services/gmail/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method public final getAction()Lcom/google/api/services/gmail/model/FilterAction;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Filter;->action:Lcom/google/api/services/gmail/model/FilterAction;

    return-object v0
.end method

.method public final getCriteria()Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Filter;->criteria:Lcom/google/api/services/gmail/model/FilterCriteria;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Filter;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Filter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Filter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Filter;
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Filter;

    return-object v0
.end method

.method public final setAction(Lcom/google/api/services/gmail/model/FilterAction;)Lcom/google/api/services/gmail/model/Filter;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Filter;->action:Lcom/google/api/services/gmail/model/FilterAction;

    .line 72
    return-object p0
.end method

.method public final setCriteria(Lcom/google/api/services/gmail/model/FilterCriteria;)Lcom/google/api/services/gmail/model/Filter;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Filter;->criteria:Lcom/google/api/services/gmail/model/FilterCriteria;

    .line 89
    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Filter;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Filter;->id:Ljava/lang/String;

    .line 106
    return-object p0
.end method
