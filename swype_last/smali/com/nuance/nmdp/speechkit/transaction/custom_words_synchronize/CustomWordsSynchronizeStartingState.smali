.class public Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;
.super Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;
.source "CustomWordsSynchronizeStartingState.java"


# static fields
.field public static final CUSTOM_WORDS_TYPE:Ljava/lang/String; = "custom_words"

.field public static final CUSTOM_WORDS_UPLOAD_COMMAND:Ljava/lang/String; = "NVC_DATA_UPLOAD_CMD"

.field private static final DEFAULT_COMMAND_TIMEOUT_MS:I = 0x7530

.field public static final XT9_UDB_ENTRIES:Ljava/lang/String; = "xt9_udb_entries"


# instance fields
.field private _transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V
    .registers 2
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransactionStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;)V

    .line 24
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    .line 25
    return-void
.end method

.method private getCustomWordsSequence(Ljava/util/Collection;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "customWords":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v0

    .line 124
    .local v0, "customWordsSeq":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "w":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addUTF8String(Ljava/lang/String;)V

    goto :goto_a

    .line 131
    .end local v2    # "w":Ljava/lang/String;
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public enter()V
    .registers 22

    .prologue
    .line 30
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createNmasResource()V

    .line 31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    const-string/jumbo v19, "NVC_DATA_UPLOAD_CMD"

    const/16 v20, 0x7530

    invoke-virtual/range {v18 .. v20}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createPdxCommand(Ljava/lang/String;I)V

    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v12

    .line 37
    .local v12, "dataBlockDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getDeleteAllFlag()Z

    move-result v18

    if-eqz v18, :cond_ee

    .line 39
    const-string/jumbo v18, "delete_all"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 90
    :goto_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    const-string/jumbo v19, "DATA_BLOCK"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v17

    .line 95
    .local v17, "uploadDoneDictParam":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "num_data_blocks"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v7

    .line 98
    .local v7, "checksumsSeq":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v6

    .line 99
    .local v6, "checksum":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "id"

    const-string/jumbo v19, "xt9_udb_entries"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v18, "type"

    const-string/jumbo v19, "custom_words"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v18, "current_checksum"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getOldChecksum()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v18, "new_checksum"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getNewChecksum()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v18, "algorithm_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getAlgorithmID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v7, v6}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 107
    const-string/jumbo v18, "checksums"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v7}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    const-string/jumbo v19, "UPLOAD_DONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->sendDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->endPdxCommand()V

    .line 119
    .end local v6    # "checksum":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .end local v7    # "checksumsSeq":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .end local v12    # "dataBlockDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .end local v17    # "uploadDoneDictParam":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    :goto_ed
    return-void

    .line 44
    .restart local v12    # "dataBlockDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v13

    .line 46
    .local v13, "dataListSeq":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v10

    .line 47
    .local v10, "customWordsDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "id"

    const-string/jumbo v19, "xt9_udb_entries"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v18, "type"

    const-string/jumbo v19, "custom_words"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v3

    .line 53
    .local v3, "actionsSeq":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getNeedClearAllCustomWordsFlag()Z

    move-result v18

    if-eqz v18, :cond_157

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v8

    .line 55
    .local v8, "clearAllDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "action"

    const-string/jumbo v19, "clear_all"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v8, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {v3, v8}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->setNeedClearAllCustomWordsFlag(Z)V

    .line 61
    .end local v8    # "clearAllDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getToBeAddedCustomWords()Ljava/util/Set;

    move-result-object v9

    .line 62
    .local v9, "customWordsAddSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_1a5

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v18

    if-lez v18, :cond_1a5

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v5

    .line 64
    .local v5, "addDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "action"

    const-string/jumbo v19, "add"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v4

    .line 66
    .local v4, "addContentDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "list"

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->getCustomWordsSequence(Ljava/util/Collection;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    .line 67
    const-string/jumbo v18, "content"

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v4}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 68
    invoke-interface {v3, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 72
    .end local v4    # "addContentDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .end local v5    # "addDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getToBeRemovedCustomWords()Ljava/util/Set;

    move-result-object v11

    .line 73
    .local v11, "customWordsRemoveSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_1f3

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v18

    if-lez v18, :cond_1f3

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v15

    .line 75
    .local v15, "removeDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "action"

    const-string/jumbo v19, "remove"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v14

    .line 77
    .local v14, "removeContentDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v18, "list"

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->getCustomWordsSequence(Ljava/util/Collection;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    .line 78
    const-string/jumbo v18, "content"

    move-object/from16 v0, v18

    invoke-interface {v15, v0, v14}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 79
    invoke-interface {v3, v15}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 82
    .end local v14    # "removeContentDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .end local v15    # "removeDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    :cond_1f3
    const-string/jumbo v18, "actions"

    move-object/from16 v0, v18

    invoke-interface {v10, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    .line 84
    invoke-interface {v13, v10}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    .line 86
    const-string/jumbo v18, "data_list"

    move-object/from16 v0, v18

    invoke-interface {v12, v0, v13}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V
    :try_end_206
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_206} :catch_208

    goto/16 :goto_39

    .line 114
    .end local v3    # "actionsSeq":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .end local v9    # "customWordsAddSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "customWordsDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .end local v11    # "customWordsRemoveSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "dataBlockDict":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .end local v13    # "dataListSeq":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    :catch_208
    move-exception v16

    .line 116
    .local v16, "tr":Ljava/lang/Throwable;
    const-string/jumbo v18, "Error starting CustomWordsSynchronizeStartingState"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->error(I)V

    goto/16 :goto_ed
.end method

.method public queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .registers 16
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x0

    .line 137
    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getResultType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "NVC_DATA_UPLOAD_CMD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_16

    .line 138
    :cond_12
    invoke-virtual {p0, v13}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->error(I)V

    .line 197
    :goto_15
    return-void

    .line 142
    :cond_16
    const-string/jumbo v11, "result_list"

    invoke-interface {p1, v11}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v9

    .line 143
    .local v9, "resultList":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    if-eqz v9, :cond_25

    invoke-interface {v9}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v11

    if-gtz v11, :cond_2b

    .line 144
    :cond_25
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->error(I)V

    goto :goto_15

    .line 155
    :cond_2b
    invoke-interface {v9, v13}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getDictionary(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v8

    .line 156
    .local v8, "resultItem":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    const-string/jumbo v11, "status"

    invoke-interface {v8, v11}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "status":Ljava/lang/String;
    const-string/jumbo v11, "success"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6b

    .line 159
    const-string/jumbo v11, "force_upload"

    invoke-interface {v8, v11}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v11

    .line 161
    if-ne v11, v5, :cond_5c

    .line 162
    iget-object v11, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ErrorState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    const/4 v2, 0x7

    const-string/jumbo v3, "Data is out of sync"

    const-string/jumbo v4, "Reset and upload all data to server again"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    goto :goto_15

    .line 165
    :cond_5c
    iget-object v11, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ErrorState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    const/4 v2, 0x6

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ErrorState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    goto :goto_15

    .line 171
    :cond_6b
    const/4 v7, 0x0

    .line 172
    .local v7, "deletedAllUserInformation":I
    const/4 v1, 0x0

    .line 173
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .local v2, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 175
    .local v4, "checksum":Ljava/lang/String;
    const/4 v5, 0x0

    .line 176
    .local v5, "finalCount":I
    const/4 v6, 0x0

    .line 178
    .local v6, "forceUpload":I
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->getDeleteAllFlag()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 179
    const/4 v7, 0x1

    .line 180
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-virtual {v3, v13}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->setDeleteAllFlag(Z)V

    .line 190
    :goto_7f
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    move-object v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 196
    .local v0, "syncResult":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    new-instance v11, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;

    iget-object v12, p0, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeStartingState;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;

    invoke-direct {v11, v12, v0}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/FinishedState;-><init>(Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V

    invoke-virtual {v3, v11}, Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/CustomWordsSynchronizeTransaction;->switchToState(Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;)V

    goto :goto_15

    .line 183
    .end local v0    # "syncResult":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;
    :cond_92
    const-string/jumbo v3, "id"

    invoke-interface {v8, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string/jumbo v3, "type"

    invoke-interface {v8, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string/jumbo v3, "checksum"

    invoke-interface {v8, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string/jumbo v3, "final_count"

    invoke-interface {v8, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 187
    const-string/jumbo v3, "force_upload"

    invoke-interface {v8, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v6

    goto :goto_7f
.end method
