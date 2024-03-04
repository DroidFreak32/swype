.class Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;
.super Ljava/lang/Object;
.source "LanguageTableRequestProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$600(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getRunner()Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$100(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$200(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;

    move-result-object v3

    new-instance v4, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    invoke-direct {v4, p0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;-><init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createLanguageTransaction(Ljava/util/List;Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$002(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 68
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$000(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$000(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->start()V

    .line 70
    :cond_0
    return-void
.end method
