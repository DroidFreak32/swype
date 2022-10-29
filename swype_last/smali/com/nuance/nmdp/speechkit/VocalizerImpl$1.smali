.class Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;
.super Ljava/lang/Object;
.source "VocalizerImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/VocalizerImpl;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 6
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$300(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_27

    .line 108
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$600(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$400(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    move-result-object v2

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$400(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    move-result-object v3

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;->onSpeakingBegin(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :cond_27
    return-void
.end method

.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "code"    # I
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$300(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 100
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$202(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 102
    :cond_12
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 8
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$200(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 73
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$300(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_3f

    .line 75
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$400(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    move-result-object v2

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$400(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    move-result-object v3

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$200(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v4

    # invokes: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->handleTransactionError(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    invoke-static {v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$500(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 77
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    invoke-static {v1, v5}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$302(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    .line 78
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v1, v5}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$402(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .line 79
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v1, v5}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$202(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 94
    :cond_3f
    :goto_3f
    return-void

    .line 82
    :cond_40
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$300(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_3f

    .line 83
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$600(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$400(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    move-result-object v3

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$400(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    move-result-object v4

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;
    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;->onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v1

    if-lez v1, :cond_86

    .line 86
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/List;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .line 87
    .local v0, "act":Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # invokes: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)V
    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$800(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)V

    goto :goto_3f

    .line 89
    .end local v0    # "act":Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    :cond_86
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    invoke-static {v1, v5}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$302(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    .line 90
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    # setter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    invoke-static {v1, v5}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->access$402(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    goto :goto_3f
.end method
