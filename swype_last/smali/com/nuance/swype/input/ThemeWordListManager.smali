.class public Lcom/nuance/swype/input/ThemeWordListManager;
.super Ljava/lang/Object;
.source "ThemeWordListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;,
        Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;
    }
.end annotation


# static fields
.field private static final ID_SEPARATOR:Ljava/lang/String; = "#"

.field static final REMAINING_COUNT_KEY_PREFIX:Ljava/lang/String; = "remaining_count_for"

.field static final SHARED_PREFERNCE_FILE_NAME:Ljava/lang/String; = "word_list_state_preference_file"

.field static final WORD_LIST_PENDING_KEY_PREFIX:Ljava/lang/String; = "word_list_pending_for"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static sInstance:Lcom/nuance/swype/input/ThemeWordListManager;


# instance fields
.field mBucketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mPendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;",
            ">;"
        }
    .end annotation
.end field

.field mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string/jumbo v0, "ThemeWordListManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mBucketList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mPendingList:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "word_list_state_preference_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 79
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeWordListManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->sInstance:Lcom/nuance/swype/input/ThemeWordListManager;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/nuance/swype/input/ThemeWordListManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/ThemeWordListManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->sInstance:Lcom/nuance/swype/input/ThemeWordListManager;

    .line 73
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->sInstance:Lcom/nuance/swype/input/ThemeWordListManager;

    return-object v0
.end method


# virtual methods
.method public createWordListBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 27
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "themeApkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v15, "wordLists":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/ThemeWordListManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/nuance/swype/plugin/ThemeApkInfo;->fromStaticApkFile(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/plugin/ThemeApkInfo;

    move-result-object v11

    .line 94
    .local v11, "themeApkInfo":Lcom/nuance/swype/plugin/ThemeApkInfo;
    if-nez v11, :cond_2a

    .line 95
    sget-object v16, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "createWordListBucket... themeApkInfo is null."

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 158
    :cond_29
    return-object v15

    .line 1195
    :cond_2a
    iget-object v0, v11, Lcom/nuance/swype/plugin/ThemeApkInfo;->themeMetaData:Lcom/nuance/swype/plugin/ThemeMetaData;

    move-object/from16 v16, v0

    .line 2071
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/nuance/swype/plugin/ThemeMetaData;->wordListMetadataList:Ljava/util/List;

    .line 2199
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;>;"
    iget-object v0, v11, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkResources:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    .line 103
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 105
    .local v2, "am":Landroid/content/res/AssetManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/ThemeWordListManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    .line 106
    .local v6, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    sget-object v16, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "number of word lists: "

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 109
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_68
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_29

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;

    .line 110
    .local v14, "wordListMetadata":Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;
    sget-object v17, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "type: %s, version: %s, file: %s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v14, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    iget-object v0, v14, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->version:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    iget-object v0, v14, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->fileName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    iget-object v0, v14, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->fileName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/ThemeWordListManager;->readWordsFromFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v8

    .line 114
    .local v8, "lines":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 116
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_d7

    .line 117
    sget-object v17, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "word list ID not found"

    aput-object v20, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_68

    .line 122
    :cond_d7
    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    .local v5, "firstLine":Ljava/lang/String;
    sget-object v17, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "ID line: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 124
    const-string/jumbo v17, "#"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "items":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1b3

    .line 126
    const/16 v17, 0x1

    aget-object v13, v7, v17

    .line 127
    .local v13, "wordListId":Ljava/lang/String;
    sget-object v17, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "Word list id is: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v13, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/ThemeWordListManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->isWordListAddedToQueue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_199

    .line 130
    invoke-virtual {v8, v5}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v12, "wordList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v17

    .line 3088
    iget-object v0, v14, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "phrases"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    .line 135
    invoke-virtual/range {v17 .. v18}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->createNewWordsListBucket(Z)Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v3

    .line 138
    .local v3, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    invoke-virtual {v3, v12}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/util/Set;)V

    .line 140
    sget-object v17, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "Word Bucket created for : "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object p1, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 143
    new-instance v10, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/ThemeWordListManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v3, v13, v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;-><init>(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;Ljava/lang/String;Landroid/content/Context;)V

    .line 145
    .local v10, "pendingWordList":Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;
    invoke-virtual {v10}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->getBucket()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v4

    .line 146
    .local v4, "filteredBucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/ThemeWordListManager;->mBucketList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/ThemeWordListManager;->mPendingList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68

    .line 150
    .end local v3    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .end local v4    # "filteredBucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .end local v10    # "pendingWordList":Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;
    .end local v12    # "wordList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_199
    sget-object v17, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "Word list already being processed. id: "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v13, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_68

    .line 154
    .end local v13    # "wordListId":Ljava/lang/String;
    :cond_1b3
    sget-object v17, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "Word list file is empty"

    aput-object v20, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_68
.end method

.method public getBucketList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mBucketList:Ljava/util/List;

    return-object v0
.end method

.method public pauseAddingWordList()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mPendingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;

    .line 175
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->pause()V

    goto :goto_6

    .line 177
    :cond_16
    return-void
.end method

.method public readWordsFromFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .registers 15
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 213
    .local v3, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 214
    .local v7, "lines":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_e

    .line 241
    :goto_d
    return-object v7

    .line 219
    :cond_e
    const/4 v0, 0x0

    .line 222
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 223
    .local v2, "file":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v8, v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_68

    .line 224
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_20
    sget-object v8, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "Reading file data"

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 226
    :cond_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_4f

    .line 227
    const-string/jumbo v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "lineArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    array-length v8, v6

    if-ge v4, v8, :cond_2e

    .line 229
    aget-object v8, v6, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4c

    .line 230
    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_20 .. :try_end_4c} :catchall_6f

    .line 228
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 236
    .end local v4    # "j":I
    .end local v6    # "lineArray":[Ljava/lang/String;
    :cond_4f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 240
    sget-object v8, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "data read from file:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_d

    .line 235
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_68
    move-exception v8

    :goto_69
    if-eqz v0, :cond_6e

    .line 236
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_6e
    throw v8

    .line 235
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/InputStream;
    :catchall_6f
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_69
.end method

.method public resumeAddingWordList()V
    .registers 1

    .prologue
    .line 196
    return-void
.end method

.method public updateStateForBucket(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .registers 9
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    sget-object v1, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Updating state for bucket"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager;->mPendingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;

    .line 187
    .local v0, "pwl":Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->getBucket()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    if-ne v2, p1, :cond_14

    .line 188
    sget-object v2, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Updating state"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->updateState()V

    goto :goto_14

    .line 192
    .end local v0    # "pwl":Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;
    :cond_36
    return-void
.end method
