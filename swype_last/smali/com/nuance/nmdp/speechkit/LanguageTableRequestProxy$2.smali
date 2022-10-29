.class Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$2;
.super Ljava/lang/Object;
.source "LanguageTableRequestProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$000(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 84
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$000(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransaction;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$002(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 87
    :cond_17
    return-void
.end method
