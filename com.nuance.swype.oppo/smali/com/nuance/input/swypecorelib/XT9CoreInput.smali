.class public abstract Lcom/nuance/input/swypecorelib/XT9CoreInput;
.super Ljava/lang/Object;
.source "XT9CoreInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;,
        Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;,
        Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;,
        Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;,
        Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    }
.end annotation


# static fields
.field public static final ALPHA_CORE:I = 0x1

.field public static final AML_WORD_COMPLETION_ORDER:I = 0x6a

.field public static final AUTO_CORRECTION:I = 0x63

.field public static final AUTO_SPACE:I = 0x68

.field public static final CHINESE_CORE:I = 0x2

.field public static final CORRECTION_LEVEL:I = 0x64

.field public static final CORRECTION_LEVEL_HIGH:I = 0x2

.field public static final CORRECTION_LEVEL_LOW:I = 0x1

.field public static final CORRECTION_LEVEL_OFF:I = 0x0

.field public static final DEFAULT_CORRECTION_LEVEL:I = 0x2

.field public static final DEFAULT_WORD_COMPLETION_POINT:I = 0x1

.field public static final DLM_TEXT_SCAN_ACTION_DELAY_REORDER:I = 0x1

.field public static final DLM_TEXT_USER_ACTION_DELAY_REORDER:I = 0x1

.field public static final EXPLICIT_WORD_ADDITION_DELAY_REORDER:I = 0x0

.field public static final HI_QUALITY_WORDS:I = 0x1

.field public static final JAPANESE_CORE:I = 0x3

.field public static final KOREAN_CORE:I = 0x4

.field public static final LANG_MODEL:I = 0x66

.field public static final LOW_QUALITY_WORDS:I = 0x0

.field public static final MAXWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0xa

.field public static final MAX_CONTEXT_BUFFER_BEFORE_CURSOR:I = 0x100

.field public static final NAMES_SCAN_ACTION_DELAY_REORDER:I = 0x1

.field public static final NAMES_USER_ACTION_DELAY_REORDER:I = 0x1

.field public static final NEW_WORD_SCAN_ACTION_DELAY_REORDER:I = 0x1

.field public static final NEW_WORD_USER_ACTION_DELAY_REORDER:I = 0x1

.field public static final RECAPTUREMAXLIST:I = 0x5

.field public static final TRACE_ACCEPT:I = 0x1

.field public static final TRACE_ACCEPT_WITH_SPACE:I = 0x2

.field public static final UNSPECIFIED_CORE:I = 0x0

.field public static final WORD_COMPLETION_POINT:I = 0x65

.field public static final WORD_COMPLETION_POINT_AFTER_FIVE_KEYS:I = 0x5

.field public static final WORD_COMPLETION_POINT_AFTER_FOUR_KEYS:I = 0x4

.field public static final WORD_COMPLETION_POINT_AFTER_ONE_KEY:I = 0x1

.field public static final WORD_COMPLETION_POINT_AFTER_SIX_KEYS:I = 0x6

.field public static final WORD_COMPLETION_POINT_AFTER_THREE_KEYS:I = 0x3

.field public static final WORD_COMPLETION_POINT_AFTER_TWO_KEYS:I = 0x2

.field public static final WORD_COMPLETION_POINT_OFF:I

.field private static keyboardLoadCallback:Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;


# instance fields
.field private candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

.field protected dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

.field protected et9status:Lcom/nuance/input/swypecorelib/XT9Status;

.field protected inputContext:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NO_INIT:Lcom/nuance/input/swypecorelib/XT9Status;

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 843
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    .line 222
    return-void
.end method

.method private static native common_breakContext(J)V
.end method

.method private static native common_finish()V
.end method

.method private static native common_gdb_load(JS[S[B[S[C)Z
.end method

.method private static native common_getKeyIndexByTap(JII)I
.end method

.method private static native common_getKeyboardPageXML(J)Ljava/lang/String;
.end method

.method private static native common_getSentenceTermCharacters(JI)Ljava/lang/String;
.end method

.method private static native common_getSuggestions(JI[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI[I)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;"
        }
    .end annotation
.end method

.method private static native common_get_fd(Ljava/io/FileDescriptor;)I
.end method

.method private static native common_isAutoSpaceBeforeTrace(J[I[I)I
.end method

.method private static native common_onPostInstallLanguage(JIZ)Z
.end method

.method private static native common_onPreInstallLanguage(JIZ)Z
.end method

.method private static native common_onUpdateLanguage(JIZ)Z
.end method

.method private static native common_processKey(JIIJ)Z
.end method

.method private static native common_processTap(JIIIJ)Z
.end method

.method private static native common_processTrace(J[I[I[II)Z
.end method

.method private static native common_recaptureWord(J[CI[I)Z
.end method

.method private static native common_reconstructWord(J[CI)Z
.end method

.method private static native common_registerDlmEventCallback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V
.end method

.method private static native common_register_kdb_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V
.end method

.method private static native common_setContext(J[CI)V
.end method

.method private static native common_setKeyboardDatabase(JIIZ)I
.end method

.method private static native common_setRunningState(JI)V
.end method

.method private static native common_start()Z
.end method

.method private static native common_unregisterDlmEventCallback(J)V
.end method

.method private static native common_unregister_kdb_callback(J)V
.end method

.method private static native common_wordSelected(JIZ)V
.end method

.method public static ensureSecondIsDefault(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 860
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_0

    .line 861
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 862
    .local v2, "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v4

    if-nez v4, :cond_0

    .line 863
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 864
    .local v0, "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v5

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v6

    and-int/lit8 v6, v6, -0x41

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 866
    .end local v0    # "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    .local v1, "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v3, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v5

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v6

    or-int/lit8 v6, v6, 0x40

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 868
    .end local v2    # "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    .local v3, "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-interface {p0, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-interface {p0, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 872
    .end local v1    # "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v3    # "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_0
    return-void
.end method

.method public static getFdFromFileDescriptor(Ljava/io/FileDescriptor;)I
    .locals 1
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 921
    invoke-static {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_get_fd(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private onDlmEvent([BZ)V
    .locals 7
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 948
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    if-eqz v0, :cond_0

    .line 949
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v6

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onDlmEvent([BZJI)V

    .line 951
    :cond_0
    return-void
.end method


# virtual methods
.method public addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public clearCharacter()Z
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearKey()Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public clearKeyByIndex(II)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method protected final createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            ")",
            "Lcom/nuance/input/swypecorelib/Candidates;"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    invoke-interface {v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;->createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 754
    .local v0, "out":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v0, :cond_0

    .line 759
    .end local v0    # "out":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v0, p1, p2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    goto :goto_0
.end method

.method public createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 4
    .param p1, "dlmEvenHandler"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;
    .param p2, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    .line 235
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->create_native_context(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    .line 238
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->registerDlmEventCallback()V

    .line 239
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onDlmInitializeStatus(Lcom/nuance/input/swypecorelib/XT9Status;I)V

    .line 243
    :cond_0
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_register_kdb_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract create_native_context(Ljava/lang/String;)J
.end method

.method protected decodeDlmEvent(Ljava/lang/String;)[B
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 906
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public delayWordReorder(II)V
    .locals 0
    .param p1, "userAction"    # I
    .param p2, "scanAction"    # I

    .prologue
    .line 894
    return-void
.end method

.method public destroySession()V
    .locals 2

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_unregister_kdb_callback(J)V

    .line 255
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->unregisterDlmEventCallback()V

    .line 256
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->destroy_native_context(J)V

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract destroy_native_context(J)V
.end method

.method public dlmSwapLanguage(II)Z
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public exportDlm()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onBeginDlmBackup(I)V

    .line 914
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->exportDlmAsEvents()Z

    .line 915
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    invoke-interface {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onEndDlmBackup()V

    .line 917
    :cond_0
    return-void
.end method

.method protected abstract exportDlmAsEvents()Z
.end method

.method public abstract finishSession()V
.end method

.method public getCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    .locals 3

    .prologue
    .line 786
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I[I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 777
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I[I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "max"    # I

    .prologue
    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I[I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I[I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 4
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "max"    # I
    .param p3, "recaptureHistoryInfo"    # [I

    .prologue
    .line 764
    if-nez p3, :cond_0

    .line 765
    const/4 v1, 0x2

    new-array p3, v1, [I

    .end local p3    # "recaptureHistoryInfo":[I
    fill-array-data p3, :array_0

    .line 767
    .restart local p3    # "recaptureHistoryInfo":[I
    :cond_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v2, v3, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getSuggestions(JI[I)Ljava/util/List;

    move-result-object v0

    .line 768
    .local v0, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    invoke-virtual {p0, v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    return-object v1

    .line 765
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;[I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "recaptureHistoryInfo"    # [I

    .prologue
    .line 781
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I[I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInputCoreCategory()I
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyIndexByTap(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 467
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getKeyIndexByTap(JII)I

    move-result v0

    .line 468
    return v0
.end method

.method public getKeyPositions(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getKeyboardDatabaseCallback(II)[C
    .locals 12
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v9, 0x0

    .line 412
    sget-object v10, Lcom/nuance/input/swypecorelib/XT9CoreInput;->keyboardLoadCallback:Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;

    invoke-interface {v10, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;->loadKeyboardDatabase(II)Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;

    move-result-object v4

    .line 413
    .local v4, "keyboard":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;
    if-nez v4, :cond_1

    .line 415
    const/4 v5, 0x0

    .line 462
    :cond_0
    return-object v5

    .line 418
    :cond_1
    const/4 v8, 0x4

    .line 425
    .local v8, "packedArraySize":I
    iget-object v10, v4, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->keys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;

    .line 426
    .local v3, "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    if-nez v10, :cond_2

    move v6, v9

    .line 427
    .local v6, "multitapCharCount":I
    :goto_1
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v10, v10

    add-int/lit8 v10, v10, 0x8

    iget-object v11, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v11, v11

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    add-int/2addr v8, v10

    .line 428
    goto :goto_0

    .line 426
    .end local v6    # "multitapCharCount":I
    :cond_2
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    array-length v6, v10

    goto :goto_1

    .line 430
    .end local v3    # "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    :cond_3
    new-array v5, v8, [C

    .line 432
    .local v5, "keyboardPacked":[C
    const/4 v0, 0x0

    .line 433
    .local v0, "i":I
    add-int/lit8 v0, v0, 0x1

    iget v10, v4, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->width:I

    int-to-char v10, v10

    aput-char v10, v5, v9

    .line 434
    const/4 v10, 0x1

    add-int/lit8 v0, v0, 0x1

    iget v11, v4, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->height:I

    int-to-char v11, v11

    aput-char v11, v5, v10

    .line 435
    const/4 v10, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v11, v4, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->pages:I

    int-to-char v11, v11

    aput-char v11, v5, v10

    .line 436
    const/4 v10, 0x3

    add-int/lit8 v0, v0, 0x1

    iget-object v11, v4, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->keys:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-char v11, v11

    aput-char v11, v5, v10

    .line 438
    iget-object v10, v4, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->keys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;

    .line 439
    .restart local v3    # "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->type:I

    int-to-char v10, v10

    aput-char v10, v5, v0

    .line 441
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->y:I

    int-to-char v10, v10

    aput-char v10, v5, v1

    .line 442
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->x:I

    int-to-char v10, v10

    aput-char v10, v5, v0

    .line 443
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->y:I

    iget v11, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->height:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    int-to-char v10, v10

    aput-char v10, v5, v1

    .line 444
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->x:I

    iget v11, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->width:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    int-to-char v10, v10

    aput-char v10, v5, v0

    .line 446
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v10, v10

    int-to-char v10, v10

    aput-char v10, v5, v1

    .line 447
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    iget-object v11, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v11, v11

    invoke-static {v10, v9, v5, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v10, v10

    add-int/2addr v0, v10

    .line 450
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v10, v10

    int-to-char v10, v10

    aput-char v10, v5, v0

    .line 451
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    iget-object v11, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v11, v11

    invoke-static {v10, v9, v5, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v10, v10

    add-int v0, v1, v10

    .line 454
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    if-nez v10, :cond_4

    move v7, v9

    .line 455
    .local v7, "multitapCount":I
    :goto_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-char v10, v7

    aput-char v10, v5, v0

    .line 456
    if-lez v7, :cond_5

    .line 457
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    invoke-static {v10, v9, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    add-int v0, v1, v7

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 454
    .end local v7    # "multitapCount":I
    :cond_4
    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    array-length v7, v10

    goto :goto_3

    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v7    # "multitapCount":I
    :cond_5
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2
.end method

.method public getKeyboardPageXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 926
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getKeyboardPageXML(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecaptureCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;[I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "recaptureHistoryInfo"    # [I

    .prologue
    .line 790
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I[I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getSentenceTermCharacters(I)Ljava/lang/String;
    .locals 2
    .param p1, "langId"    # I

    .prologue
    .line 935
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getSentenceTermCharacters(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;
    .locals 1
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasInputContext()Z
    .locals 4

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initTrace(III)V
    .locals 0
    .param p1, "kdbId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 286
    return-void
.end method

.method protected abstract initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
.end method

.method public isAutoSpaceBeforeTrace(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "trace":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 314
    .local v1, "size":I
    new-array v2, v1, [I

    .line 315
    .local v2, "traceX":[I
    new-array v3, v1, [I

    .line 316
    .local v3, "traceY":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 317
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    aput v4, v2, v0

    .line 318
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    aput v4, v3, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v4, v5, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_isAutoSpaceBeforeTrace(J[I[I)I

    move-result v4

    return v4
.end method

.method public learnNewWords(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "cursorPosition"    # I

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public loadGestures(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-nez v0, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 745
    :goto_0
    return v0

    .line 717
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 718
    .local v9, "count":I
    new-array v3, v9, [S

    .line 719
    .local v3, "gestureLengths":[S
    new-array v4, v9, [B

    .line 720
    .local v4, "frequencies":[B
    new-array v5, v9, [S

    .line 722
    .local v5, "returnValues":[S
    const/4 v7, 0x0

    .line 725
    .local v7, "combinedGestureLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_1

    .line 726
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;

    .line 727
    .local v10, "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v0, v0

    add-int/2addr v7, v0

    .line 728
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v0, v0

    int-to-short v0, v0

    aput-short v0, v3, v11

    .line 729
    iget-byte v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->frequency:B

    aput-byte v0, v4, v11

    .line 730
    iget-short v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->returnValue:S

    aput-short v0, v5, v11

    .line 725
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 734
    .end local v10    # "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    :cond_1
    new-array v6, v7, [C

    .line 735
    .local v6, "combinedGestures":[C
    const/4 v8, 0x0

    .line 739
    .local v8, "combinedPtr":I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_2

    .line 740
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;

    .line 741
    .restart local v10    # "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    const/4 v1, 0x0

    iget-object v2, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v2, v2

    invoke-static {v0, v1, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v0, v0

    add-int/2addr v8, v0

    .line 739
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 745
    .end local v10    # "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    :cond_2
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    int-to-short v2, v9

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_gdb_load(JS[S[B[S[C)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDlmEvent([BIZ)V
    .locals 2
    .param p1, "event"    # [B
    .param p2, "len"    # I
    .param p3, "highPriority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 941
    array-length v0, p1

    if-eq p2, v0, :cond_0

    .line 942
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Event size not equal!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BZ)V

    .line 945
    return-void
.end method

.method public onPostInstallLanguage(IZ)Z
    .locals 2
    .param p1, "languageID"    # I
    .param p2, "isCurrentLanguage"    # Z

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_onPostInstallLanguage(JIZ)Z

    move-result v0

    return v0
.end method

.method public onPreInstallLanguage(IZ)Z
    .locals 2
    .param p1, "languageID"    # I
    .param p2, "isCurrentLanguage"    # Z

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_onPreInstallLanguage(JIZ)Z

    move-result v0

    return v0
.end method

.method public onUpdateLanguage(IZ)Z
    .locals 2
    .param p1, "languageID"    # I
    .param p2, "isCurrentLanguage"    # Z

    .prologue
    .line 363
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_onUpdateLanguage(JIZ)Z

    move-result v0

    return v0
.end method

.method protected processKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .locals 7
    .param p1, "key"    # I
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "eventTime"    # J

    .prologue
    .line 492
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v3

    move v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_processKey(JIIJ)Z

    move-result v0

    return v0
.end method

.method public processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "key"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p4, "eventTime"    # J

    .prologue
    .line 484
    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processTap(Landroid/graphics/Point;Lcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    goto :goto_0
.end method

.method public processKeyBySymbol(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method protected processTap(Landroid/graphics/Point;Lcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .locals 7
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "eventTime"    # J

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v4

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_processTap(JIIIJ)Z

    move-result v0

    return v0
.end method

.method public processTrace(Ljava/util/List;Ljava/util/List;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 9
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Shift$ShiftState;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "trace":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "trace points size "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " != points event time size "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 517
    .local v8, "size":I
    new-array v2, v8, [I

    .line 518
    .local v2, "nativeTraceX":[I
    new-array v3, v8, [I

    .line 519
    .local v3, "nativeTraceY":[I
    new-array v4, v8, [I

    .line 522
    .local v4, "nativeEventTimes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 523
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 524
    .local v7, "pt":Landroid/graphics/Point;
    iget v0, v7, Landroid/graphics/Point;->x:I

    aput v0, v2, v6

    .line 525
    iget v0, v7, Landroid/graphics/Point;->y:I

    aput v0, v3, v6

    .line 529
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    aput v0, v4, v6

    .line 522
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 535
    .end local v7    # "pt":Landroid/graphics/Point;
    :cond_1
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_processTrace(J[I[I[II)Z

    move-result v0

    return v0
.end method

.method public recaptureWord([CI[I)Z
    .locals 2
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "recaptureHistoryInfo"    # [I

    .prologue
    .line 680
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_recaptureWord(J[CI[I)Z

    move-result v0

    return v0
.end method

.method public reconstructWord([CI)Z
    .locals 2
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I

    .prologue
    .line 693
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_reconstructWord(J[CI)Z

    move-result v0

    return v0
.end method

.method protected abstract registerDlmEventCallback()V
.end method

.method public removeSpaceBeforeWord(I)Z
    .locals 1
    .param p1, "wordIndex"    # I

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public setAttribute(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public setAttribute(IZ)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public setCandidateFactory(Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;)V
    .locals 0
    .param p1, "fact"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    .line 852
    return-void
.end method

.method public setContext([C)V
    .locals 3
    .param p1, "wordContext"    # [C

    .prologue
    .line 660
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 661
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setContext(J[CI)V

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_breakContext(J)V

    goto :goto_0
.end method

.method public setKeyboardDatabase(IIZ)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 2
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I
    .param p3, "forceReload"    # Z

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setKeyboardDatabase(JIIZ)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setKeyboardLoadCallback(Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;)V
    .locals 0
    .param p1, "loadCallback"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;

    .prologue
    .line 408
    sput-object p1, Lcom/nuance/input/swypecorelib/XT9CoreInput;->keyboardLoadCallback:Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;

    .line 409
    return-void
.end method

.method public setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 1
    .param p1, "languageID"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 1
    .param p1, "languageID"    # I
    .param p2, "secondLanguageID"    # I

    .prologue
    .line 388
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_EMPTY:Lcom/nuance/input/swypecorelib/XT9Status;

    return-object v0
.end method

.method public setRunningState(I)V
    .locals 2
    .param p1, "runningState"    # I

    .prologue
    .line 930
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setRunningState(JI)V

    .line 931
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .locals 0
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 640
    return-void
.end method

.method public abstract startSession()V
.end method

.method protected abstract unregisterDlmEventCallback()V
.end method

.method public wordSelected(IZ)V
    .locals 2
    .param p1, "wordIndex"    # I
    .param p2, "userExplictPick"    # Z

    .prologue
    .line 884
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_wordSelected(JIZ)V

    .line 885
    return-void
.end method
