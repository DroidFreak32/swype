.class public final Lcom/google/api/services/gmail/model/FilterCriteria;
.super Lcom/google/api/client/json/GenericJson;
.source "FilterCriteria.java"


# instance fields
.field private excludeChats:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private from:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private hasAttachment:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private negatedQuery:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private query:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private size:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sizeComparison:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private subject:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private to:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/FilterCriteria;->clone()Lcom/google/api/services/gmail/model/FilterCriteria;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/FilterCriteria;->clone()Lcom/google/api/services/gmail/model/FilterCriteria;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/FilterCriteria;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/FilterCriteria;->clone()Lcom/google/api/services/gmail/model/FilterCriteria;

    move-result-object v0

    return-object v0
.end method

.method public final getExcludeChats()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->excludeChats:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasAttachment()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->hasAttachment:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getNegatedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->negatedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSizeComparison()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->sizeComparison:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/FilterCriteria;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/FilterCriteria;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/FilterCriteria;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/FilterCriteria;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 1

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/FilterCriteria;

    return-object v0
.end method

.method public final setExcludeChats(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->excludeChats:Ljava/lang/Boolean;

    .line 118
    return-object p0
.end method

.method public final setFrom(Ljava/lang/String;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->from:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public final setHasAttachment(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->hasAttachment:Ljava/lang/Boolean;

    .line 152
    return-object p0
.end method

.method public final setNegatedQuery(Ljava/lang/String;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->negatedQuery:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public final setQuery(Ljava/lang/String;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->query:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public final setSize(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->size:Ljava/lang/Integer;

    .line 207
    return-object p0
.end method

.method public final setSizeComparison(Ljava/lang/String;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->sizeComparison:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public final setSubject(Ljava/lang/String;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->subject:Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public final setTo(Ljava/lang/String;)Lcom/google/api/services/gmail/model/FilterCriteria;
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterCriteria;->to:Ljava/lang/String;

    .line 264
    return-object p0
.end method
