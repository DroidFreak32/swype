.class final Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;
.super Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;
.source "LanguageTableRequestProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/LanguageTableRequest;


# instance fields
.field private final _kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

.field private final _listener:Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;

.field private final _params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;"
        }
    .end annotation
.end field

.field private final _table:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

.field private _transaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;Ljava/lang/Object;)V
    .locals 1
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;
    .param p3, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p3}, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;-><init>(Ljava/lang/Object;)V

    .line 26
    new-instance v0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_table:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    .line 27
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 28
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_listener:Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_params:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_params:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/LanguageTableImpl;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_table:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_listener:Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    return-object v0
.end method


# virtual methods
.method public final addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dictParam"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_params:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/PdxParam;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/util/PdxParam;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public final addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strParam"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->_params:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/PdxParam;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/util/PdxParam;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$2;-><init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method
