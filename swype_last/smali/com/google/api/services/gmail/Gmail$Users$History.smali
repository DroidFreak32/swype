.class public Lcom/google/api/services/gmail/Gmail$Users$History;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "History"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$History$List;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .registers 2

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1503
    return-void
.end method


# virtual methods
.method public list(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1498
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$History;Ljava/lang/String;)V

    .line 1499
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$History;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 1500
    return-object v0
.end method
