.class Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;
.super Ljava/lang/Object;
.source "VocalizeTransaction.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->createPlayerListener()Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    const-string/jumbo v1, "Player error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public started(Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 106
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public stopped(Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 117
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$3;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$3;-><init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
