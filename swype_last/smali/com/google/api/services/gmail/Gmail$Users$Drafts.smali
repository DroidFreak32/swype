.class public Lcom/google/api/services/gmail/Gmail$Users$Drafts;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Drafts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;,
        Lcom/google/api/services/gmail/Gmail$Users$Drafts$Send;,
        Lcom/google/api/services/gmail/Gmail$Users$Drafts$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Drafts$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Drafts$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Drafts$Create;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .registers 2

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Create;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Create;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Create;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;)V

    .line 502
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 503
    return-object v0
.end method

.method public create(Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Create;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Create;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Create;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 527
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 528
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Delete;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Delete;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 660
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Get;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 783
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 931
    return-object v0
.end method

.method public send(Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Send;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Send;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Send;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;)V

    .line 1143
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 1144
    return-object v0
.end method

.method public send(Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Send;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Send;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Send;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 1168
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 1169
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;)V

    .line 1301
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 1302
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1325
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/Gmail$Users$Drafts$Update;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Drafts;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/Draft;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 1326
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 1327
    return-object v0
.end method
