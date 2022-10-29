.class abstract Lcom/nuance/nmdp/speechkit/CommandProxyBase;
.super Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;
.source "CommandProxyBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ICommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;",
        "Lcom/nuance/nmdp/speechkit/ICommand;"
    }
.end annotation


# instance fields
.field private _command:Lcom/nuance/nmdp/speechkit/CommandBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/CommandBase",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private _initRunnable:Ljava/lang/Runnable;

.field private final _kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

.field private final _name:Ljava/lang/String;

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


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase<TResultType;>;"
    invoke-direct {p0, p3}, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_name:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_params:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 27
    new-instance v0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;-><init>(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_initRunnable:Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Lcom/nuance/nmdp/speechkit/CommandBase;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_command:Lcom/nuance/nmdp/speechkit/CommandBase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/CommandProxyBase;Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/CommandBase;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandProxyBase;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/CommandBase;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_command:Lcom/nuance/nmdp/speechkit/CommandBase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_params:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dictParam"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .prologue
    .line 46
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_params:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/PdxParam;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/util/PdxParam;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strParam"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    .prologue
    .line 51
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_params:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/PdxParam;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/util/PdxParam;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 74
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 76
    new-instance v0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$3;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CommandProxyBase$3;-><init>(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method protected abstract createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;)",
            "Lcom/nuance/nmdp/speechkit/CommandBase",
            "<TResultType;>;"
        }
    .end annotation
.end method

.method protected final init()V
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_initRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_initRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_initRunnable:Ljava/lang/Runnable;

    .line 42
    :cond_c
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 60
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase<TResultType;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 62
    new-instance v0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CommandProxyBase$2;-><init>(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
