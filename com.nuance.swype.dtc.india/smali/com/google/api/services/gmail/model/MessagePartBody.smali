.class public final Lcom/google/api/services/gmail/model/MessagePartBody;
.super Lcom/google/api/client/json/GenericJson;
.source "MessagePartBody.java"


# instance fields
.field private attachmentId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private size:Ljava/lang/Integer;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePartBody;->clone()Lcom/google/api/services/gmail/model/MessagePartBody;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePartBody;->clone()Lcom/google/api/services/gmail/model/MessagePartBody;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/MessagePartBody;
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/MessagePartBody;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePartBody;->clone()Lcom/google/api/services/gmail/model/MessagePartBody;

    move-result-object v0

    return-object v0
.end method

.method public final decodeData()[B
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->data:Ljava/lang/String;

    .line 1101
    invoke-static {v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    return-object v0
.end method

.method public final encodeData([B)Lcom/google/api/services/gmail/model/MessagePartBody;
    .locals 1

    .prologue
    .line 131
    .line 2079
    invoke-static {p1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->data:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public final getAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->attachmentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/MessagePartBody;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePartBody;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/MessagePartBody;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePartBody;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePartBody;
    .locals 1

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/MessagePartBody;

    return-object v0
.end method

.method public final setAttachmentId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/MessagePartBody;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->attachmentId:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public final setData(Ljava/lang/String;)Lcom/google/api/services/gmail/model/MessagePartBody;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->data:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public final setSize(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/MessagePartBody;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePartBody;->size:Ljava/lang/Integer;

    .line 149
    return-object p0
.end method
