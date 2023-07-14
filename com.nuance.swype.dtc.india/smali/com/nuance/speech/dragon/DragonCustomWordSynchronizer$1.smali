.class Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;
.super Ljava/lang/Object;
.source "DragonCustomWordSynchronizer.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;-><init>(Lcom/nuance/speech/dragon/SpeechKitWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;


# direct methods
.method constructor <init>(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 2
    .param p1, "synchronizer"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .param p2, "actionType"    # I
    .param p3, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 49
    invoke-interface {p3}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->setCustomWordsSynchronizationForceResync(Z)V

    .line 51
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->setCustomWordsSynchronizationServerWordsCount(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
    .locals 2
    .param p1, "synchronizer"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .param p2, "actionType"    # I
    .param p3, "result"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    .prologue
    .line 39
    iget-boolean v0, p3, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->Status:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->setCustomWordsSynchronizationForceResync(Z)V

    .line 41
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    iget v1, p3, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->FinalCount:I

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->setCustomWordsSynchronizationServerWordsCount(I)V

    .line 43
    :cond_0
    return-void
.end method
