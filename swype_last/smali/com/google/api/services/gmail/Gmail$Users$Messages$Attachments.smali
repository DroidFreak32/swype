.class public Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attachments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments$Get;
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;)V
    .registers 2

    .prologue
    .line 4215
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4237
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments$Get;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4232
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments$Get;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Messages;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4234
    return-object v0
.end method
