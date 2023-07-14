.class Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;
.super Ljava/lang/Object;
.source "RecognizeTransaction.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createPromptListener()Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    const-string/jumbo v1, "Prompt error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public started(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 237
    return-void
.end method

.method public stopped(Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 241
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$2;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method
