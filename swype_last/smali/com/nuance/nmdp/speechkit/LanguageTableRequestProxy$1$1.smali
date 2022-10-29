.class Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;
.super Ljava/lang/Object;
.source "LanguageTableRequestProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _error:Lcom/nuance/nmdp/speechkit/SpeechError;

.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;)V
    .registers 3

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "errorCode"    # I
    .param p3, "errorText"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v0, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 51
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 4
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1$1;-><init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1$1;)V

    # invokes: Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->access$500(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
