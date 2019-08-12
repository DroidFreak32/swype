.class Lcom/nuance/nmdp/speechkit/CommandBase$1;
.super Ljava/lang/Object;
.source "CommandBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CommandBase;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CommandBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CommandBase;)V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandBase$1;, "Lcom/nuance/nmdp/speechkit/CommandBase.1;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "code"    # I
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 70
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandBase$1;, "Lcom/nuance/nmdp/speechkit/CommandBase.1;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CommandBase;->access$000(Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    new-instance v1, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/CommandBase;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 73
    :cond_0
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .locals 3
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandBase$1;, "Lcom/nuance/nmdp/speechkit/CommandBase.1;"
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CommandBase;->access$000(Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CommandBase;->access$100(Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/CommandBase;->access$100(Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;->getParsed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/CommandBase;->onResults(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/CommandBase;->access$002(Lcom/nuance/nmdp/speechkit/CommandBase;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 65
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandBase;

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/CommandBase;->onResults(Ljava/lang/Object;)V

    goto :goto_0
.end method
