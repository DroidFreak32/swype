.class public final Lcom/google/api/services/gmail/model/VacationSettings;
.super Lcom/google/api/client/json/GenericJson;
.source "VacationSettings.java"


# instance fields
.field private enableAutoReply:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private endTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseBodyHtml:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseBodyPlainText:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseSubject:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private restrictToContacts:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private restrictToDomain:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/VacationSettings;->clone()Lcom/google/api/services/gmail/model/VacationSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/VacationSettings;->clone()Lcom/google/api/services/gmail/model/VacationSettings;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 257
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/VacationSettings;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/VacationSettings;->clone()Lcom/google/api/services/gmail/model/VacationSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getEnableAutoReply()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->enableAutoReply:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEndTime()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->endTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getResponseBodyHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->responseBodyHtml:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseBodyPlainText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->responseBodyPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->responseSubject:Ljava/lang/String;

    return-object v0
.end method

.method public final getRestrictToContacts()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->restrictToContacts:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRestrictToDomain()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->restrictToDomain:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStartTime()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/api/services/gmail/model/VacationSettings;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/VacationSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/VacationSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/VacationSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/VacationSettings;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 4

    .prologue
    .line 252
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/VacationSettings;

    return-object v0
.end method

.method public final setEnableAutoReply(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->enableAutoReply:Ljava/lang/Boolean;

    .line 114
    return-object p0
.end method

.method public final setEndTime(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->endTime:Ljava/lang/Long;

    .line 135
    return-object p0
.end method

.method public final setResponseBodyHtml(Ljava/lang/String;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->responseBodyHtml:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public final setResponseBodyPlainText(Ljava/lang/String;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->responseBodyPlainText:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public final setResponseSubject(Ljava/lang/String;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->responseSubject:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public final setRestrictToContacts(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->restrictToContacts:Ljava/lang/Boolean;

    .line 207
    return-object p0
.end method

.method public final setRestrictToDomain(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->restrictToDomain:Ljava/lang/Boolean;

    .line 226
    return-object p0
.end method

.method public final setStartTime(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/VacationSettings;
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/api/services/gmail/model/VacationSettings;->startTime:Ljava/lang/Long;

    .line 247
    return-object p0
.end method
