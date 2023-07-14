.class public final Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;
.super Lcom/nuance/speech/CustomWordSynchronizer;
.source "DragonCustomWordSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;
    }
.end annotation


# instance fields
.field private mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

.field private mCustomWordsSynchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

.field private mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

.field private final synchronizerListener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

.field private final udbIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;


# direct methods
.method public constructor <init>(Lcom/nuance/speech/dragon/SpeechKitWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V
    .locals 1
    .param p1, "speechKitWrapper"    # Lcom/nuance/speech/dragon/SpeechKitWrapper;
    .param p2, "udbIterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/speech/CustomWordSynchronizer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    .line 31
    iput-object p2, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->udbIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .line 33
    new-instance v0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;-><init>(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;)V

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->synchronizerListener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->udbIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;ILjava/util/Set;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Set;
    .param p3, "x3"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->addCustomWordsSet(ILjava/util/Set;Z)V

    return-void
.end method

.method private addCustomWordsSet(ILjava/util/Set;Z)V
    .locals 1
    .param p1, "recognizerType"    # I
    .param p3, "bForceResync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isCurrentLanguageSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->getSynchronizer(I)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    .line 103
    invoke-interface {v0, p2, p3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;->addCustomWordsSet(Ljava/util/Set;Z)V

    goto :goto_0
.end method

.method private getDefaultCustomWordSyncer()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->getSynchronizer(I)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method private getSynchronizer(I)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .locals 4
    .param p1, "recognizerType"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCustomWordsSynchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    .line 219
    invoke-direct {p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->recognitionType2Str(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->synchronizerListener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->createCustomWordsSynchronizer(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCustomWordsSynchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCustomWordsSynchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    return-object v0
.end method

.method private isCurrentLanguageSupported()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->isCustomWordsSynchronizationSupported()Z

    move-result v0

    return v0
.end method

.method private isForceResyncNeeded()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getCustomWordsSynchronizationForceResync()Z

    move-result v0

    return v0
.end method

.method private isSettingsEnabled()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getCustomWordsSynchronizationAvailability()Z

    move-result v0

    return v0
.end method

.method private recognitionType2Str(I)Ljava/lang/String;
    .locals 1
    .param p1, "recognizerType"    # I

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string/jumbo v0, "dictation"

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "websearch"

    goto :goto_0
.end method


# virtual methods
.method public final addCustomWord(ILjava/lang/String;)V
    .locals 3
    .param p1, "recognizerType"    # I
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isForceResyncNeeded()Z

    move-result v0

    .line 77
    .local v0, "bForceReSync":Z
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->resyncAllUserWords(I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v1, "wordsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0, p1, v1, v0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->addCustomWordsSet(ILjava/util/Set;Z)V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->isCustomWordsSynchronizationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->cancel(Z)Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->getDefaultCustomWordSyncer()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;->cancel()V

    goto :goto_0
.end method

.method public final clearAllCustomWords()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isCurrentLanguageSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->getDefaultCustomWordSyncer()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;->clearAllCustomWords()V

    goto :goto_0
.end method

.method public final deleteAllUserInformation()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isCurrentLanguageSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->getDefaultCustomWordSyncer()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;->deleteAllUserInformation()V

    goto :goto_0
.end method

.method public final releaseCustomWordsSynchronizerInstance()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCustomWordsSynchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCustomWordsSynchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;->cancel()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCustomWordsSynchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    .line 197
    :cond_0
    return-void
.end method

.method public final removeCustomWord(ILjava/lang/String;)V
    .locals 3
    .param p1, "recognizerType"    # I
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isSettingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isCurrentLanguageSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->getSynchronizer(I)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    .line 141
    .local v0, "synchronizer":Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, "wordsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;->removeCustomWordsSet(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public final removeCustomWords(Ljava/util/Set;)V
    .locals 2
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
    .line 164
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->isCurrentLanguageSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->getDefaultCustomWordSyncer()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;->removeCustomWordsSet(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public final resyncAllUserWords(I)V
    .locals 4
    .param p1, "recognizerType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->setCustomWordsSynchronizationForceResync(Z)V

    .line 116
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->cancel(Z)Z

    .line 118
    iput-object v2, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    .line 121
    :cond_0
    new-instance v0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    invoke-direct {v0, p0, v2}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;-><init>(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;)V

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    .line 122
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mCurrentResyncUdbTask:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method

.method protected final setCustomWordsSynchronizationForceResync(Z)V
    .locals 1
    .param p1, "resync"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setCustomWordsSynchronizationForceResync(Z)V

    .line 229
    return-void
.end method

.method protected final setCustomWordsSynchronizationServerWordsCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->mSpeechKitWrapper:Lcom/nuance/speech/dragon/SpeechKitWrapper;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setCustomWordsSynchronizationServerWordsCount(I)V

    .line 233
    return-void
.end method
