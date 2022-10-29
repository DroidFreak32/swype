.class Lcom/nuance/nmdp/speechkit/RecognizerBase$1;
.super Ljava/lang/Object;
.source "RecognizerBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerBase;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerBase;)V
    .registers 2

    .prologue
    .line 110
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerBase.1;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "code"    # I
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 120
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerBase.1;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 121
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    new-instance v1, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 123
    :cond_12
    return-void
.end method

.method public recordingStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 3
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 128
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerBase.1;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_d

    .line 129
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->onRecordingBegin()V

    .line 131
    :cond_d
    return-void
.end method

.method public recordingStopped(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 3
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 136
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerBase.1;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_d

    .line 137
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->onRecordingDone()V

    .line 139
    :cond_d
    return-void
.end method

.method public results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 4
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 144
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerBase.1;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_17

    .line 145
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerBase;->_resultParser:Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->access$100(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->getParsed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->onResults(Ljava/lang/Object;)V

    .line 147
    :cond_17
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 4
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 113
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerBase$1;, "Lcom/nuance/nmdp/speechkit/RecognizerBase.1;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerBase;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_e

    .line 114
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerBase$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerBase;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/nmdp/speechkit/RecognizerBase;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->access$002(Lcom/nuance/nmdp/speechkit/RecognizerBase;Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransaction;

    .line 115
    :cond_e
    return-void
.end method
