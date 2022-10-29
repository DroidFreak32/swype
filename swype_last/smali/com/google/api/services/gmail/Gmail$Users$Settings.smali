.class public Lcom/google/api/services/gmail/Gmail$Users$Settings;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateVacation;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdatePop;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateImap;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateAutoForwarding;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetVacation;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetPop;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetImap;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$GetAutoForwarding;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .registers 2

    .prologue
    .line 4390
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6303
    return-void
.end method


# virtual methods
.method public filters()Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;
    .registers 2

    .prologue
    .line 5295
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V

    return-object v0
.end method

.method public forwardingAddresses()Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;
    .registers 2

    .prologue
    .line 5793
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V

    return-object v0
.end method

.method public getAutoForwarding(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$GetAutoForwarding;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4405
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetAutoForwarding;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetAutoForwarding;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;)V

    .line 4406
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4407
    return-object v0
.end method

.method public getImap(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$GetImap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4520
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetImap;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetImap;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;)V

    .line 4521
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4522
    return-object v0
.end method

.method public getPop(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$GetPop;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4635
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetPop;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetPop;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;)V

    .line 4636
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4637
    return-object v0
.end method

.method public getVacation(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$GetVacation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4749
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetVacation;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$GetVacation;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;)V

    .line 4750
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4751
    return-object v0
.end method

.method public sendAs()Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;
    .registers 2

    .prologue
    .line 6297
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V

    return-object v0
.end method

.method public updateAutoForwarding(Ljava/lang/String;Lcom/google/api/services/gmail/model/AutoForwarding;)Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateAutoForwarding;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4867
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateAutoForwarding;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateAutoForwarding;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;Lcom/google/api/services/gmail/model/AutoForwarding;)V

    .line 4868
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4869
    return-object v0
.end method

.method public updateImap(Ljava/lang/String;Lcom/google/api/services/gmail/model/ImapSettings;)Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateImap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4975
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateImap;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateImap;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;Lcom/google/api/services/gmail/model/ImapSettings;)V

    .line 4976
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4977
    return-object v0
.end method

.method public updatePop(Ljava/lang/String;Lcom/google/api/services/gmail/model/PopSettings;)Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdatePop;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5082
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdatePop;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdatePop;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;Lcom/google/api/services/gmail/model/PopSettings;)V

    .line 5083
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5084
    return-object v0
.end method

.method public updateVacation(Ljava/lang/String;Lcom/google/api/services/gmail/model/VacationSettings;)Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateVacation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5189
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateVacation;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$UpdateVacation;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;Ljava/lang/String;Lcom/google/api/services/gmail/model/VacationSettings;)V

    .line 5190
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5191
    return-object v0
.end method
