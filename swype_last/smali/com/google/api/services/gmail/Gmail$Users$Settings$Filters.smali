.class public Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Filters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Create;
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V
    .registers 2

    .prologue
    .line 5301
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5683
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/api/services/gmail/model/Filter;)Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Create;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5317
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Create;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Create;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;Ljava/lang/String;Lcom/google/api/services/gmail/model/Filter;)V

    .line 5318
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5319
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Delete;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5423
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Delete;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;Ljava/lang/String;Ljava/lang/String;)V

    .line 5424
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5425
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Get;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5546
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;Ljava/lang/String;Ljava/lang/String;)V

    .line 5547
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5548
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5678
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;Ljava/lang/String;)V

    .line 5679
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5680
    return-object v0
.end method
