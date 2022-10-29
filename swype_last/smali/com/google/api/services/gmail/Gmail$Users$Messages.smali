.class public Lcom/google/api/services/gmail/Gmail$Users$Messages;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Messages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Modify;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .registers 2

    .prologue
    .line 2475
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4215
    return-void
.end method


# virtual methods
.method public attachments()Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;
    .registers 2

    .prologue
    .line 4209
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;)V

    return-object v0
.end method

.method public batchDelete(Ljava/lang/String;Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;)Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2492
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/BatchDeleteMessagesRequest;)V

    .line 2493
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 2494
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Delete;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2601
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Delete;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 2603
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2725
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 2727
    return-object v0
.end method

.method public gmailImport(Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2891
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;)V

    .line 2892
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 2893
    return-object v0
.end method

.method public gmailImport(Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2917
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 2918
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 2919
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3222
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;)V

    .line 3223
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3224
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3248
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 3249
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3250
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3450
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;)V

    .line 3451
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3452
    return-object v0
.end method

.method public modify(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/ModifyMessageRequest;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Modify;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3680
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Modify;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Modify;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/ModifyMessageRequest;)V

    .line 3681
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3682
    return-object v0
.end method

.method public send(Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3804
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;)V

    .line 3805
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3806
    return-object v0
.end method

.method public send(Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3829
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Lcom/google/api/services/gmail/model/Message;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 3830
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3831
    return-object v0
.end method

.method public trash(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3963
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3965
    return-object v0
.end method

.method public untrash(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4086
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4088
    return-object v0
.end method
