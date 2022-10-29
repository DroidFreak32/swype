.class public final Lcom/google/api/services/gmail/model/ImapSettings;
.super Lcom/google/api/client/json/GenericJson;
.source "ImapSettings.java"


# instance fields
.field private autoExpunge:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private expungeBehavior:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxFolderSize:Ljava/lang/Integer;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ImapSettings;->clone()Lcom/google/api/services/gmail/model/ImapSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ImapSettings;->clone()Lcom/google/api/services/gmail/model/ImapSettings;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/ImapSettings;
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ImapSettings;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ImapSettings;->clone()Lcom/google/api/services/gmail/model/ImapSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getAutoExpunge()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ImapSettings;->autoExpunge:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnabled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ImapSettings;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getExpungeBehavior()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ImapSettings;->expungeBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxFolderSize()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ImapSettings;->maxFolderSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ImapSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ImapSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ImapSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ImapSettings;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ImapSettings;
    .registers 4

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ImapSettings;

    return-object v0
.end method

.method public final setAutoExpunge(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/ImapSettings;
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ImapSettings;->autoExpunge:Ljava/lang/Boolean;

    .line 86
    return-object p0
.end method

.method public final setEnabled(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/ImapSettings;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ImapSettings;->enabled:Ljava/lang/Boolean;

    .line 103
    return-object p0
.end method

.method public final setExpungeBehavior(Ljava/lang/String;)Lcom/google/api/services/gmail/model/ImapSettings;
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ImapSettings;->expungeBehavior:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public final setMaxFolderSize(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/ImapSettings;
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ImapSettings;->maxFolderSize:Ljava/lang/Integer;

    .line 141
    return-object p0
.end method
