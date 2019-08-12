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
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "errorCode"    # I
    .param p3, "errorText"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$802(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 189
    :cond_0
    return-void
.end method

.method public result(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
    .locals 3
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "result"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$900(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I

    move-result v2

    invoke-interface {v0, v1, v2, p2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V

    .line 230
    :cond_0
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 5
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$800(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$900(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$800(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 200
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$702(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 201
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$902(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .line 202
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$802(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 220
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$702(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 223
    :cond_1
    return-void

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/List;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .line 211
    .local v0, "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$1200(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V

    goto :goto_0

    .line 214
    .end local v0    # "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    :cond_3
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$702(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 215
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-static {v1, v4}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->access$902(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    goto :goto_0
.end method
