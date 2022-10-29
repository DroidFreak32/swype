.class public Lcom/google/api/services/gmail/Gmail$Users$Threads;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Threads"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Untrash;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Trash;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Modify;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .registers 2

    .prologue
    .line 7197
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7984
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$Delete;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7214
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$Delete;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;Ljava/lang/String;)V

    .line 7215
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7216
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$Get;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7338
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;Ljava/lang/String;)V

    .line 7339
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7340
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7502
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;)V

    .line 7503
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7504
    return-object v0
.end method

.method public modify(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/ModifyThreadRequest;)Lcom/google/api/services/gmail/Gmail$Users$Threads$Modify;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7732
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$Modify;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Threads$Modify;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/ModifyThreadRequest;)V

    .line 7733
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7734
    return-object v0
.end method

.method public trash(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$Trash;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7856
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$Trash;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$Trash;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;Ljava/lang/String;)V

    .line 7857
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7858
    return-object v0
.end method

.method public untrash(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$Untrash;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7979
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Threads$Untrash;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$Untrash;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;Ljava/lang/String;)V

    .line 7980
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7981
    return-object v0
.end method
