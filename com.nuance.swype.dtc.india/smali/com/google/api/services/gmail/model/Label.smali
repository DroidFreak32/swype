.class public final Lcom/google/api/services/gmail/model/Label;
.super Lcom/google/api/client/json/GenericJson;
.source "Label.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private labelListVisibility:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private messageListVisibility:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private messagesTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private messagesUnread:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private threadsTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private threadsUnread:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Label;->clone()Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Label;->clone()Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/Label;
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Label;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Label;->clone()Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabelListVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->labelListVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageListVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->messageListVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessagesTotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->messagesTotal:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMessagesUnread()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->messagesUnread:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreadsTotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->threadsTotal:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getThreadsUnread()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->threadsUnread:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Label;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Label;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Label;
    .locals 1

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Label;

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->id:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public final setLabelListVisibility(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->labelListVisibility:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public final setMessageListVisibility(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->messageListVisibility:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public final setMessagesTotal(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->messagesTotal:Ljava/lang/Integer;

    .line 169
    return-object p0
.end method

.method public final setMessagesUnread(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->messagesUnread:Ljava/lang/Integer;

    .line 186
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->name:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public final setThreadsTotal(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->threadsTotal:Ljava/lang/Integer;

    .line 220
    return-object p0
.end method

.method public final setThreadsUnread(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->threadsUnread:Ljava/lang/Integer;

    .line 237
    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->type:Ljava/lang/String;

    .line 264
    return-object p0
.end method
