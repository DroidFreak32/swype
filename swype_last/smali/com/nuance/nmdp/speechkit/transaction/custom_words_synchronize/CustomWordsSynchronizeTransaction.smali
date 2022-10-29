.class public Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;
.super Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
.source "CustomWordsSynchronizeTransaction.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ICustomWordsSynchronizerTransaction;


# instance fields
.field private _customWordsAddSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _customWordsRemoveSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _deleteAll:Z

.field private _dictationType:Ljava/lang/String;

.field private _needClearAllCustomWords:Z


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .registers 7
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 17
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsAddSet:Ljava/util/Set;

    .line 18
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsRemoveSet:Ljava/util/Set;

    .line 19
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_dictationType:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_deleteAll:Z

    .line 21
    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_needClearAllCustomWords:Z

    .line 31
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/IdleState;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/IdleState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .registers 10
    .param p1, "mgr"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .param p2, "config"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .param p3, "dictationType"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "customWordsAddSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "customWordsRemoveSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p4, p7}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V

    .line 17
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsAddSet:Ljava/util/Set;

    .line 18
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsRemoveSet:Ljava/util/Set;

    .line 19
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_dictationType:Ljava/lang/String;

    .line 20
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_deleteAll:Z

    .line 21
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_needClearAllCustomWords:Z

    .line 45
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_dictationType:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsAddSet:Ljava/util/Set;

    .line 47
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsRemoveSet:Ljava/util/Set;

    .line 48
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_deleteAll:Z

    .line 49
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_needClearAllCustomWords:Z

    .line 50
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/IdleState;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/IdleState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    .line 51
    return-void
.end method


# virtual methods
.method protected addCustomKeys(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .registers 4
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 55
    const-string/jumbo v1, "dictation_type"

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_dictationType:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string/jumbo v0, "dictation"

    :goto_a
    invoke-interface {p1, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "dictation_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "phone_network"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->networkType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 55
    :cond_22
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_dictationType:Ljava/lang/String;

    goto :goto_a
.end method

.method public getAlgorithmID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->getAlgorithmID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAllFlag()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_deleteAll:Z

    return v0
.end method

.method public getDictationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_dictationType:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClearAllCustomWordsFlag()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_needClearAllCustomWords:Z

    return v0
.end method

.method public getNewChecksum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->getNewChecksum(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldChecksum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->getCurrentChecksum(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBeAddedCustomWords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsAddSet:Ljava/util/Set;

    return-object v0
.end method

.method public getToBeRemovedCustomWords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_customWordsRemoveSet:Ljava/util/Set;

    return-object v0
.end method

.method public setDeleteAllFlag(Z)V
    .registers 2
    .param p1, "deleteAll"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_deleteAll:Z

    .line 103
    return-void
.end method

.method public setNeedClearAllCustomWordsFlag(Z)V
    .registers 2
    .param p1, "needClearAll"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_needClearAllCustomWords:Z

    .line 113
    return-void
.end method

.method public setNewChecksum(Ljava/lang/String;)V
    .registers 3
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->context()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->setNewChecksum(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 89
    return-void
.end method
