.class public Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendAs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Verify;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Update;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Create;
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V
    .registers 2

    .prologue
    .line 6303
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7071
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/api/services/gmail/model/SendAs;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Create;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6324
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Create;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Create;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;Lcom/google/api/services/gmail/model/SendAs;)V

    .line 6325
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6326
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Delete;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6436
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Delete;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;Ljava/lang/String;)V

    .line 6437
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6438
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Get;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6561
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;Ljava/lang/String;)V

    .line 6562
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6563
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6695
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;)V

    .line 6696
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6697
    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/SendAs;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6813
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/SendAs;)V

    .line 6814
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6815
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/SendAs;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Update;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6940
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Update;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/gmail/model/SendAs;)V

    .line 6941
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6942
    return-object v0
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Verify;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7066
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Verify;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$Verify;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;Ljava/lang/String;Ljava/lang/String;)V

    .line 7067
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7068
    return-object v0
.end method
