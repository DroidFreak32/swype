.class Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;
.super Ljava/lang/Object;
.source "RecognizeTransaction.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->createRecorderListener()Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
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
    .line 172
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public signalEnergyUpdate(Ljava/lang/Object;F)V
    .locals 1
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "energy"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;->access$000(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;->energyUpdate(F)V

    .line 180
    return-void
.end method

.method public started(Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 184
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public stopped(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "reason"    # I

    .prologue
    .line 195
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;

    invoke-direct {v0, p0, p2}, Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/recognize/RecognizeTransaction$1;I)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
