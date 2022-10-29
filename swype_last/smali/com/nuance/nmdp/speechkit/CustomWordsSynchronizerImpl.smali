.class public final Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    }
.end annotation


# instance fields
.field private final _actions:Lcom/nuance/nmdp/speechkit/util/List;

.field private _currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

.field private _currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

.field private _dictationType:Ljava/lang/String;

.field private _language:Ljava/lang/String;

.field private final _listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

.field private final _tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

.field private _transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

.field private final _transactionListener:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;)V
    .registers 7
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "dictationType"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .line 57
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_dictationType:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_language:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    .line 60
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;

    .line 61
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 62
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .line 63
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 64
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    .line 65
    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->handleTransactionError(ILcom/nuance/nmdp/speechkit/SpeechError;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    return-object v0
.end method

.method static synthetic access$702(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    return-object p1
.end method

.method private createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;
    .registers 2

    .prologue
    .line 182
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$1;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)V

    return-object v0
.end method

.method private handleTransactionError(ILcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 8
    .param p1, "actionType"    # I
    .param p2, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 69
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    invoke-interface {v3, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 72
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v2

    .line 73
    .local v2, "numActions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_22

    .line 75
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v3, v1}, Lcom/nuance/nmdp/speechkit/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .line 76
    .local v0, "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->ActionType:I
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I

    move-result v4

    invoke-interface {v3, p0, v4, p2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 78
    .end local v0    # "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    :cond_22
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/util/List;->clear()V

    .line 79
    return-void
.end method

.method private startTransaction(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V
    .registers 10
    .param p1, "action"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->isValid()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 84
    const-string/jumbo v0, "Unable to start custom words synchronize transaction. Transaction runner is invalid."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->ActionType:I
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I

    move-result v1

    new-instance v2, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v2, v7, v6, v6}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 104
    :goto_1e
    return-void

    .line 89
    :cond_1f
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 90
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->DictationType:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->Language:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$200(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->CustomWordsAddSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/util/Set;

    move-result-object v3

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->CustomWordsRemoveSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$400(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createCustomWordsSynchronizeTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    .line 93
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    if-nez v0, :cond_54

    .line 94
    const-string/jumbo v0, "Unable to create custom words synchronize transaction."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->ActionType:I
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I

    move-result v1

    new-instance v2, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v2, v7, v6, v6}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    goto :goto_1e

    .line 99
    :cond_54
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->IsToClearAllCustomWords:Z
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$500(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;->setNeedClearAllCustomWordsFlag(Z)V

    .line 100
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->IsToDeleteAllUserInformation:Z
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->access$600(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;->setDeleteAllFlag(Z)V

    .line 102
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentAction:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .line 103
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;->start()V

    goto :goto_1e
.end method


# virtual methods
.method public final addCustomWordsSet(Ljava/util/Set;Z)V
    .registers 10
    .param p2, "clearAllCustomWords"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_dictationType:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_language:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 112
    .local v0, "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    if-nez v1, :cond_15

    .line 113
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V

    .line 118
    :goto_14
    return-void

    .line 116
    :cond_15
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public final cancel()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    if-nez v0, :cond_5

    .line 178
    :goto_4
    return-void

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;->cancel()V

    goto :goto_4
.end method

.method public final clearAllCustomWords()V
    .registers 8

    .prologue
    .line 137
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_dictationType:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_language:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 140
    .local v0, "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    if-nez v1, :cond_15

    .line 141
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V

    .line 146
    :goto_14
    return-void

    .line 144
    :cond_15
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public final deleteAllUserInformation()V
    .registers 8

    .prologue
    .line 151
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_dictationType:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_language:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 154
    .local v0, "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    if-nez v1, :cond_15

    .line 155
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V

    .line 160
    :goto_14
    return-void

    .line 158
    :cond_15
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public final removeCustomWordsSet(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_dictationType:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_language:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 126
    .local v0, "action":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;

    if-nez v1, :cond_15

    .line 127
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)V

    .line 132
    :goto_14
    return-void

    .line 130
    :cond_15
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public final setDictationType(Ljava/lang/String;)V
    .registers 2
    .param p1, "dictationType"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_dictationType:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->_language:Ljava/lang/String;

    .line 165
    return-void
.end method
