.class Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;
.super Ljava/lang/Object;
.source "LanguageTableRequestProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;->this$2:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;->this$2:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->access$300(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;->this$2:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$400(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;->this$2:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->access$300(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;->onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;->this$2:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$400(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;->this$2:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$200(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;->onResult(Lcom/nuance/nmdp/speechkit/LanguageTable;)V

    goto :goto_0
.end method
