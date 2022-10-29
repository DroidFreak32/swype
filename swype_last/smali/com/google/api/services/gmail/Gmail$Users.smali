.class public Lcom/google/api/services/gmail/Gmail$Users;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Users"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Threads;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages;,
        Lcom/google/api/services/gmail/Gmail$Users$Labels;,
        Lcom/google/api/services/gmail/Gmail$Users$History;,
        Lcom/google/api/services/gmail/Gmail$Users$Drafts;,
        Lcom/google/api/services/gmail/Gmail$Users$Watch;,
        Lcom/google/api/services/gmail/Gmail$Users$Stop;,
        Lcom/google/api/services/gmail/Gmail$Users$GetProfile;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/gmail/Gmail;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7197
    return-void
.end method


# virtual methods
.method public drafts()Lcom/google/api/services/gmail/Gmail$Users$Drafts;
    .registers 2

    .prologue
    .line 479
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Drafts;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Drafts;-><init>(Lcom/google/api/services/gmail/Gmail$Users;)V

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$GetProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$GetProfile;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$GetProfile;-><init>(Lcom/google/api/services/gmail/Gmail$Users;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 156
    return-object v0
.end method

.method public history()Lcom/google/api/services/gmail/Gmail$Users$History;
    .registers 2

    .prologue
    .line 1476
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$History;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$History;-><init>(Lcom/google/api/services/gmail/Gmail$Users;)V

    return-object v0
.end method

.method public labels()Lcom/google/api/services/gmail/Gmail$Users$Labels;
    .registers 2

    .prologue
    .line 1705
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Labels;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Labels;-><init>(Lcom/google/api/services/gmail/Gmail$Users;)V

    return-object v0
.end method

.method public messages()Lcom/google/api/services/gmail/Gmail$Users$Messages;
    .registers 2

    .prologue
    .line 2469
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Messages;-><init>(Lcom/google/api/services/gmail/Gmail$Users;)V

    return-object v0
.end method

.method public settings()Lcom/google/api/services/gmail/Gmail$Users$Settings;
    .registers 2

    .prologue
    .line 4384
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Settings;-><init>(Lcom/google/api/services/gmail/Gmail$Users;)V

    return-object v0
.end method

.method public stop(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Stop;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Stop;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Stop;-><init>(Lcom/google/api/services/gmail/Gmail$Users;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 271
    return-object v0
.end method

.method public threads()Lcom/google/api/services/gmail/Gmail$Users$Threads;
    .registers 2

    .prologue
    .line 7191
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Threads;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Threads;-><init>(Lcom/google/api/services/gmail/Gmail$Users;)V

    return-object v0
.end method

.method public watch(Ljava/lang/String;Lcom/google/api/services/gmail/model/WatchRequest;)Lcom/google/api/services/gmail/Gmail$Users$Watch;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Watch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Watch;-><init>(Lcom/google/api/services/gmail/Gmail$Users;Ljava/lang/String;Lcom/google/api/services/gmail/model/WatchRequest;)V

    .line 375
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 376
    return-object v0
.end method
