.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "errorCode"    # I
    .param p3, "errorText"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 187
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$802(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 189
    :cond_12
    return-void
.end method

.method public result(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
    .registers 6
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "result"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_1d

    .line 228
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$900(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    move-result-object v2

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->ActionType:I
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I

    move-result v2

    invoke-interface {v0, v1, v2, p2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V

    .line 230
    :cond_1d
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 7
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$800(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 198
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_35

    .line 199
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$900(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    move-result-object v2

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->ActionType:I
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$800(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v3

    # invokes: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->handleTransactionError(ILcom/nuance/nmdp/speechkit/SpeechError;)V
    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 200
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$702(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 201
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$902(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .line 202
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$802(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 220
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_42

    .line 221
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$702(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 223
    :cond_42
    return-void

    .line 207
    :cond_43
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_35

    .line 209
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6a

    .line 210
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/List;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .line 211
    .local v0, "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # invokes: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V
    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1200(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V

    goto :goto_35

    .line 214
    .end local v0    # "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    :cond_6a
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$702(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 215
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$902(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    goto :goto_35
.end method
