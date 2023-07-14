.class public final Lcom/google/api/services/gmail/model/Draft;
.super Lcom/google/api/client/json/GenericJson;
.source "Draft.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private message:Lcom/google/api/services/gmail/model/Message;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Draft;->clone()Lcom/google/api/services/gmail/model/Draft;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Draft;->clone()Lcom/google/api/services/gmail/model/Draft;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/Draft;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Draft;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Draft;->clone()Lcom/google/api/services/gmail/model/Draft;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Draft;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Lcom/google/api/services/gmail/model/Message;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Draft;->message:Lcom/google/api/services/gmail/model/Message;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Draft;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Draft;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Draft;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Draft;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Draft;
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Draft;

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Draft;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Draft;->id:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public final setMessage(Lcom/google/api/services/gmail/model/Message;)Lcom/google/api/services/gmail/model/Draft;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Draft;->message:Lcom/google/api/services/gmail/model/Message;

    .line 81
    return-object p0
.end method
