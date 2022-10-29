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
        Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;,
        Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    }
.end annotation


# static fields
.field public static final ALPHA_CORE:I = 0x1

.field public static final AML_WORD_COMPLETION_ORDER:I = 0x6a

.field public static final AUTO_CORRECTION:I = 0x63

.field public static final AUTO_SPACE:I = 0x68

.field public static final CHINESE_CORE:I = 0x2

.field public static final CHINESE_HONGKONG_LANGUAGEID:I = 0xe2

.field public static final CHINESE_TRAD_LANGUAGEID:I = 0xe0

.field private static final CHUNJIIN_INPUT_MODE:I = 0x5

.field private static final CONVERSION_MODE:I = 0x3

.field private static final DEFAULT_INPUT_MODE:I = 0x0

.field public static final DEFAULT_WORD_COMPLETION_POINT:I = 0x1

.field public static final DLM_SCAN_ACTION_COUNT:I = 0x1

.field public static final DLM_USER_EXPLICIT_ACTION_COUNT:I = 0x1

.field public static final DLM_USER_IMPLICIT_ACTION_COUNT:I = 0x1

.field public static final JAPANESE_CORE:I = 0x3

.field public static final KOREAN_CORE:I = 0x4

.field public static final LANG_MODEL:I = 0x66

.field private static final MAXEMOJILIST:I = 0x64

.field public static final MAXWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0xa

.field public static final MAX_CONTEXT_BUFFER_BEFORE_CURSOR:I = 0x80

.field private static final NARAGATGUL_INPUT_MODE:I = 0x6

.field public static final RECAPTUREMAXLIST:I = 0x5

.field private static final TELEX_INPUT_MODE:I = 0x2

.field private static final TRANSLITERATION_MODE:I = 0x4

.field public static final UNSPECIFIED_CORE:I = 0x0

.field private static final VEGA_INPUT_MODE:I = 0x7

.field private static final VNI_INPUT_MODE:I = 0x1

.field public static final WORD_COMPLETION_POINT:I = 0x65

.field public static final WORD_COMPLETION_POINT_AFTER_FIVE_KEYS:I = 0x5

.field public static final WORD_COMPLETION_POINT_AFTER_FOUR_KEYS:I = 0x4

.field public static final WORD_COMPLETION_POINT_AFTER_ONE_KEY:I = 0x1

.field public static final WORD_COMPLETION_POINT_AFTER_SIX_KEYS:I = 0x6

.field public static final WORD_COMPLETION_POINT_AFTER_THREE_KEYS:I = 0x3

.field public static final WORD_COMPLETION_POINT_AFTER_TWO_KEYS:I = 0x2

.field public static final WORD_COMPLETION_POINT_OFF:I

.field private static emojiFilter:Lcom/nuance/input/swypecorelib/EmojiFilter;


# instance fields
.field private candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

.field protected dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

.field protected et9status:Lcom/nuance/input/swypecorelib/XT9Status;

.field protected inputContext:J

.field protected inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

.field private isGestureLoaded:Z

.field private keyboardLoadCallback:Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;

.field protected mLanguageID:I

.field protected final sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

.field private touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;


# direct methods
.method protected constructor <init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V
    .registers 3
    .param p1, "sessionDataCollector"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isGestureLoaded:Z

    .line 248
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NO_INIT:Lcom/nuance/input/swypecorelib/XT9Status;

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 951
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    .line 265
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    .line 266
    return-void
.end method

.method static canShowEmoji(Ljava/lang/String;)Z
    .registers 4
    .param p0, "emoji"    # Ljava/lang/String;

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "canShow":Z
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput;->emojiFilter:Lcom/nuance/input/swypecorelib/EmojiFilter;

    if-eqz v1, :cond_c

    .line 463
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput;->emojiFilter:Lcom/nuance/input/swypecorelib/EmojiFilter;

    invoke-interface {v1, p0}, Lcom/nuance/input/swypecorelib/EmojiFilter;->canShow(Ljava/lang/String;)Z

    move-result v0

    .line 468
    :goto_b
    return v0

    .line 466
    :cond_c
    const-string/jumbo v1, "XT9CoreInput"

    const-string/jumbo v2, "canShowEmoji: emoji filter not set!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private static native common_enableTrace(JZ)V
.end method

.method private static native common_gdb_load(JS[S[B[S[C)Z
.end method

.method private static native common_getCoreVersion()Ljava/lang/String;
.end method

.method private static native common_getCurrentLDBVersion(J)Ljava/lang/String;
.end method

.method private static native common_getDefaultInputMode(JI)I
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

.method private static native common_getSuggestionsEmoji(JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
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

.method private static native common_isLikelyEmoji(J[CI)Z
.end method

.method private static native common_isTraceEnabled(J)Z
.end method

.method private static native common_multiTapTimeOut(J)V
.end method

.method private static native common_onPostInstallLanguage(JIZ)Z
.end method

.method private static native common_onPreInstallLanguage(JIZ)Z
.end method

.method private static native common_onUpdateLanguage(JIZ)Z
.end method

.method private static native common_processKey(JIIJ)Z
.end method

.method private static native common_processStoredTouch(JI[C)Z
.end method

.method private static native common_processTap(JIIIJ)Z
.end method

.method private static native common_processTrace(J[I[I[II)Z
.end method

.method private static native common_recaptureWord(J[CI[I)Z
.end method

.method private static native common_reconstructWord(J[C)Z
.end method

.method private static native common_register_InputContext_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V
.end method

.method private static native common_register_TouchRequest_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V
.end method

.method private static native common_register_kdb_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V
.end method

.method private static native common_setEmojiFilter(J)V
.end method

.method private static native common_setExternalDatabasePath([Ljava/lang/String;)V
.end method

.method private static native common_setKeyboardDatabase(JIIZ)Z
.end method

.method private static native common_setLDBEmoji(JZ)V
.end method

.method private static native common_setLanguage(JIII)I
.end method

.method private static native common_setMultiTapInputMode(JZ)V
.end method

.method private static native common_setRunningState(JI)V
.end method

.method private static native common_touchCancel(JI)Z
.end method

.method private static native common_touchEnd(JI[F[F[I)Z
.end method

.method private static native common_touchMove(JI[F[F[I)Z
.end method

.method private static native common_touchStart(JI[F[F[I)Z
.end method

.method private static native common_touchTimeOut(JI)V
.end method

.method private static native common_unregister_InputContext_callback(J)V
.end method

.method private static native common_unregister_kdb_callback(J)V
.end method

.method private static native common_wordSelected(JIZ)V
.end method

.method public static ensureSecondIsDefault(Ljava/util/List;)V
    .registers 11
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

    .line 968
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_4e

    .line 969
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 970
    .local v2, "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 971
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 972
    .local v0, "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v5

    .line 973
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v6

    and-int/lit8 v6, v6, -0x41

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 974
    .end local v0    # "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    .local v1, "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v3, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v5

    .line 975
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v6

    or-int/lit8 v6, v6, 0x40

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 976
    .end local v2    # "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    .local v3, "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-interface {p0, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-interface {p0, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 980
    .end local v1    # "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v3    # "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_4e
    return-void
.end method

.method private getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;ILcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 8
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "max"    # I
    .param p3, "recaptureInfo"    # Lcom/nuance/input/swypecorelib/RecaptureInfo;

    .prologue
    .line 853
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    iget-object v1, p3, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedFieldInfo:[I

    invoke-static {v2, v3, p2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getSuggestions(JI[I)Ljava/util/List;

    move-result-object v0

    .line 854
    .local v0, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    invoke-virtual {p0, v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    return-object v1
.end method

.method private getCandidatesEmoji(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 7
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "max"    # I

    .prologue
    .line 858
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v2, v3, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getSuggestionsEmoji(JI)Ljava/util/List;

    move-result-object v0

    .line 859
    .local v0, "emojiCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    invoke-virtual {p0, v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    return-object v1
.end method

.method public static getFdFromFileDescriptor(Ljava/io/FileDescriptor;)I
    .registers 2
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1031
    invoke-static {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_get_fd(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private onDlmEvent([BZ)V
    .registers 10
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 1058
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    if-eqz v0, :cond_15

    .line 1059
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v6

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onDlmEvent([BZJI)V

    .line 1061
    :cond_15
    return-void
.end method

.method protected static setExternalDatabasePath([Ljava/lang/String;)V
    .registers 1
    .param p0, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 1129
    invoke-static {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setExternalDatabasePath([Ljava/lang/String;)V

    .line 1130
    return-void
.end method


# virtual methods
.method public addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 5
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method autoAcceptCallback(Z)Z
    .registers 3
    .param p1, "addSeparator"    # Z

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

    invoke-interface {v0, p1}, Lcom/nuance/input/swypecorelib/InputContextRequest;->autoAccept(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method autoCapTextBufferCallback(I)[C
    .registers 3
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

    .line 1215
    invoke-interface {v0, p1}, Lcom/nuance/input/swypecorelib/InputContextRequest;->getAutoCapitalizationTextBuffer(I)[C

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public clearAllKeys()Z
    .registers 2

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public clearCharacter()Z
    .registers 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearKey()Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .registers 2

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public clearKeyByIndex(II)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method contextBufferCallback(I)[C
    .registers 3
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

    .line 1202
    invoke-interface {v0, p1}, Lcom/nuance/input/swypecorelib/InputContextRequest;->getContextBuffer(I)[C

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected final createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 5
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
    .line 841
    .local p1, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    if-eqz v1, :cond_d

    .line 843
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    invoke-interface {v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;->createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 844
    .local v0, "out":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v0, :cond_d

    .line 849
    .end local v0    # "out":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v0, p1, p2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    goto :goto_c
.end method

.method public createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;Lcom/nuance/input/swypecorelib/EmojiFilter;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 9
    .param p1, "dlmEvenHandler"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;
    .param p2, "databaseConfigFile"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/nuance/input/swypecorelib/EmojiFilter;
    .param p4, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_1
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    .line 287
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 288
    invoke-virtual {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->create_native_context(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    .line 289
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 290
    if-eqz p1, :cond_24

    .line 291
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onDlmInitializeStatus(Lcom/nuance/input/swypecorelib/XT9Status;I)V

    .line 293
    :cond_24
    sput-object p3, Lcom/nuance/input/swypecorelib/XT9CoreInput;->emojiFilter:Lcom/nuance/input/swypecorelib/EmojiFilter;

    .line 294
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setEmojiFilter(J)V

    .line 296
    :cond_2b
    invoke-static {p4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setExternalDatabasePath([Ljava/lang/String;)V

    .line 297
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_register_kdb_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 298
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_register_TouchRequest_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 299
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->et9status:Lcom/nuance/input/swypecorelib/XT9Status;

    monitor-exit p0

    return-object v0

    .line 300
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method protected abstract create_native_context(Ljava/lang/String;)J
.end method

.method public destroySession()V
    .registers 3

    .prologue
    .line 307
    monitor-enter p0

    .line 308
    :try_start_1
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_unregister_kdb_callback(J)V

    .line 309
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_unregister_InputContext_callback(J)V

    .line 310
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->destroy_native_context(J)V

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    .line 313
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected abstract destroy_native_context(J)V
.end method

.method public dlmSwapLanguage(II)Z
    .registers 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public enableTrace(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1084
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_enableTrace(JZ)V

    .line 1085
    return-void
.end method

.method public exportDlm()V
    .registers 3

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    if-eqz v0, :cond_15

    .line 1023
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onBeginDlmBackup(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->exportDlmAsEvents()Z

    .line 1025
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmEvenHandler:Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;

    invoke-interface {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;->onEndDlmBackup()V

    .line 1027
    :cond_15
    return-void
.end method

.method protected abstract exportDlmAsEvents()Z
.end method

.method public abstract finishSession()V
.end method

.method public getCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4

    .prologue
    .line 873
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;ILcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 868
    const/16 v0, 0xa

    sget-object v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;ILcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "max"    # I

    .prologue
    .line 863
    sget-object v0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;ILcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCandidatesEmoji()Lcom/nuance/input/swypecorelib/Candidates;
    .registers 3

    .prologue
    .line 877
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->EMOJEENIE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidatesEmoji(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCoreVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 894
    invoke-static {}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getCoreVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLDBVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 890
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getCurrentLDBVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInputMode(I)Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    .registers 4
    .param p1, "languageID"    # I

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getDefaultInputMode(JI)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->valueOf(I)Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInputCoreCategory()I
.end method

.method public getKeyCount()I
    .registers 2

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method getKeyboardDatabaseCallback(II)[C
    .registers 15
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 474
    iget-object v9, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->keyboardLoadCallback:Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;

    invoke-interface {v9, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;->loadKeyboardDatabase(II)Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;

    move-result-object v3

    .line 475
    .local v3, "keyboard":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;
    if-nez v3, :cond_b

    .line 477
    const/4 v4, 0x0

    .line 526
    :goto_a
    return-object v4

    .line 486
    :cond_b
    const/4 v7, 0x4

    .line 487
    .local v7, "packedArraySize":I
    iget-object v9, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->keys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;

    .line 488
    .local v2, "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    if-nez v10, :cond_2f

    move v5, v8

    .line 489
    .local v5, "multitapCharCount":I
    :goto_23
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v10, v10

    add-int/lit8 v10, v10, 0x8

    iget-object v11, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v11, v11

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    add-int/2addr v7, v10

    .line 490
    goto :goto_12

    .line 488
    .end local v5    # "multitapCharCount":I
    :cond_2f
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    array-length v5, v10

    goto :goto_23

    .line 492
    .end local v2    # "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    :cond_33
    new-array v4, v7, [C

    .line 494
    .local v4, "keyboardPacked":[C
    const/4 v0, 0x0

    .line 495
    .local v0, "i":I
    add-int/lit8 v0, v0, 0x1

    iget v9, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->width:I

    int-to-char v9, v9

    aput-char v9, v4, v8

    .line 496
    const/4 v9, 0x1

    add-int/lit8 v0, v0, 0x1

    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->height:I

    int-to-char v10, v10

    aput-char v10, v4, v9

    .line 497
    const/4 v9, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->pages:I

    int-to-char v10, v10

    aput-char v10, v4, v9

    .line 498
    const/4 v9, 0x3

    add-int/lit8 v0, v0, 0x1

    iget-object v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->keys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-char v10, v10

    aput-char v10, v4, v9

    .line 500
    iget-object v9, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->keys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;

    .line 501
    .restart local v2    # "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->type:I

    int-to-char v10, v10

    aput-char v10, v4, v0

    .line 503
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->y:I

    int-to-char v10, v10

    aput-char v10, v4, v1

    .line 504
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->x:I

    int-to-char v10, v10

    aput-char v10, v4, v0

    .line 505
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->y:I

    iget v11, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->height:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    int-to-char v10, v10

    aput-char v10, v4, v1

    .line 506
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->x:I

    iget v11, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->width:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    int-to-char v10, v10

    aput-char v10, v4, v0

    .line 508
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v10, v10

    int-to-char v10, v10

    aput-char v10, v4, v1

    .line 509
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    iget-object v11, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v11, v11

    invoke-static {v10, v8, v4, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    array-length v10, v10

    add-int/2addr v0, v10

    .line 512
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v10, v10

    int-to-char v10, v10

    aput-char v10, v4, v0

    .line 513
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    iget-object v11, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v11, v11

    invoke-static {v10, v8, v4, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    array-length v10, v10

    add-int v0, v1, v10

    .line 516
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    if-nez v10, :cond_d5

    move v6, v8

    .line 517
    .local v6, "multitapCount":I
    :goto_c6
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-char v10, v6

    aput-char v10, v4, v0

    .line 518
    if-lez v6, :cond_e4

    .line 519
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    invoke-static {v10, v8, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    add-int v0, v1, v6

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_5f

    .line 516
    .end local v6    # "multitapCount":I
    :cond_d5
    iget-object v10, v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    array-length v6, v10

    goto :goto_c6

    .line 524
    .end local v2    # "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    :cond_d9
    iget-object v8, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    iget v9, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->width:I

    iget v10, v3, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->height:I

    invoke-virtual {v8, p1, v9, v10}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onChangeKeyboard(III)V

    goto/16 :goto_a

    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v2    # "key":Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    .restart local v6    # "multitapCount":I
    :cond_e4
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_5f
.end method

.method public getKeyboardPageXML()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1036
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getKeyboardPageXML(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecaptureCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "recaptureInfo"    # Lcom/nuance/input/swypecorelib/RecaptureInfo;

    .prologue
    .line 881
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;ILcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getSentenceTermCharacters(I)Ljava/lang/String;
    .registers 4
    .param p1, "langId"    # I

    .prologue
    .line 1045
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getSentenceTermCharacters(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionData()Lcom/nuance/input/swypecorelib/usagedata/SessionData;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->getSessionData()Lcom/nuance/input/swypecorelib/usagedata/SessionData;

    move-result-object v0

    return-object v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .registers 2

    .prologue
    .line 718
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    return-object v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;
    .registers 5
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # [I
    .param p3, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "[II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasActiveInput()Z
    .registers 2

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public hasInputContext()Z
    .registers 5

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected abstract initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
.end method

.method public isGestureLoaded()Z
    .registers 2

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isGestureLoaded:Z

    return v0
.end method

.method public isLanguageHaveEmojiPrediction()Z
    .registers 2

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public isLikelyEmoji(Ljava/lang/String;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 898
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_isLikelyEmoji(J[CI)Z

    move-result v0

    return v0
.end method

.method public isNullLdb()Z
    .registers 2

    .prologue
    .line 1076
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 3

    .prologue
    .line 1088
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_isTraceEnabled(J)Z

    move-result v0

    return v0
.end method

.method keyboardLoaded(II)V
    .registers 4
    .param p1, "kdbNum"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    if-eqz v0, :cond_9

    .line 1190
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/input/swypecorelib/TouchRequestCallback;->keyboardLoaded(II)V

    .line 1192
    :cond_9
    return-void
.end method

.method public loadGestures(Ljava/util/List;)Z
    .registers 16
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
    .line 800
    .local p1, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-nez v0, :cond_a

    .line 802
    const/4 v0, 0x0

    .line 836
    :goto_9
    return v0

    .line 806
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 807
    .local v9, "count":I
    new-array v3, v9, [S

    .line 808
    .local v3, "gestureLengths":[S
    new-array v4, v9, [B

    .line 809
    .local v4, "frequencies":[B
    new-array v5, v9, [S

    .line 811
    .local v5, "returnValues":[S
    const/4 v7, 0x0

    .line 814
    .local v7, "combinedGestureLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_16
    if-ge v11, v9, :cond_33

    .line 815
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;

    .line 816
    .local v10, "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v0, v0

    add-int/2addr v7, v0

    .line 817
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v0, v0

    int-to-short v0, v0

    aput-short v0, v3, v11

    .line 818
    iget-byte v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->frequency:B

    aput-byte v0, v4, v11

    .line 819
    iget-short v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->returnValue:S

    aput-short v0, v5, v11

    .line 814
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 823
    .end local v10    # "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    :cond_33
    new-array v6, v7, [C

    .line 824
    .local v6, "combinedGestures":[C
    const/4 v8, 0x0

    .line 828
    .local v8, "combinedPtr":I
    const/4 v11, 0x0

    :goto_37
    if-ge v11, v9, :cond_4f

    .line 829
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;

    .line 830
    .restart local v10    # "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    const/4 v1, 0x0

    iget-object v2, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v2, v2

    invoke-static {v0, v1, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    iget-object v0, v10, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    array-length v0, v0

    add-int/2addr v8, v0

    .line 828
    add-int/lit8 v11, v11, 0x1

    goto :goto_37

    .line 834
    .end local v10    # "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    :cond_4f
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    int-to-short v2, v9

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_gdb_load(JS[S[B[S[C)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isGestureLoaded:Z

    .line 836
    iget-boolean v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isGestureLoaded:Z

    goto :goto_9
.end method

.method public multiTapTimeOut()V
    .registers 3

    .prologue
    .line 1068
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_multiTapTimeOut(J)V

    .line 1069
    return-void
.end method

.method public noteWordDone(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "cursorPosition"    # I

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method protected onDlmEvent([BIZ)V
    .registers 6
    .param p1, "event"    # [B
    .param p2, "len"    # I
    .param p3, "highPriority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1051
    array-length v0, p1

    if-eq p2, v0, :cond_c

    .line 1052
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Event size not equal!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_c
    invoke-direct {p0, p1, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BZ)V

    .line 1055
    return-void
.end method

.method public onPostInstallLanguage(IZ)Z
    .registers 5
    .param p1, "languageID"    # I
    .param p2, "isCurrentLanguage"    # Z

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_onPostInstallLanguage(JIZ)Z

    move-result v0

    return v0
.end method

.method public onPreInstallLanguage(IZ)Z
    .registers 5
    .param p1, "languageID"    # I
    .param p2, "isCurrentLanguage"    # Z

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_onPreInstallLanguage(JIZ)Z

    move-result v0

    return v0
.end method

.method public onUpdateLanguage(IZ)Z
    .registers 5
    .param p1, "languageID"    # I
    .param p2, "isCurrentLanguage"    # Z

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_onUpdateLanguage(JIZ)Z

    move-result v0

    return v0
.end method

.method public abstract persistUserDatabase()V
.end method

.method protected processKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .registers 12
    .param p1, "key"    # I
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "eventTime"    # J

    .prologue
    .line 572
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
    .registers 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "key"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p4, "eventTime"    # J

    .prologue
    .line 564
    if-nez p1, :cond_7

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processTap(Landroid/graphics/Point;Lcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    goto :goto_6
.end method

.method public processStoredTouch(I[C)Z
    .registers 5
    .param p1, "currentIndex"    # I
    .param p2, "functionKey"    # [C

    .prologue
    .line 550
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_processStoredTouch(JI[C)Z

    move-result v0

    return v0
.end method

.method protected processTap(Landroid/graphics/Point;Lcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .registers 12
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "eventTime"    # J

    .prologue
    .line 568
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
    .registers 13
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
    .line 585
    .local p1, "trace":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "trace points size "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " != points event time size "

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

    .line 593
    :cond_33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 594
    .local v8, "size":I
    new-array v2, v8, [I

    .line 595
    .local v2, "nativeTraceX":[I
    new-array v3, v8, [I

    .line 596
    .local v3, "nativeTraceY":[I
    new-array v4, v8, [I

    .line 599
    .local v4, "nativeEventTimes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3e
    if-ge v6, v8, :cond_5d

    .line 600
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 601
    .local v7, "pt":Landroid/graphics/Point;
    iget v0, v7, Landroid/graphics/Point;->x:I

    aput v0, v2, v6

    .line 602
    iget v0, v7, Landroid/graphics/Point;->y:I

    aput v0, v3, v6

    .line 606
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    aput v0, v4, v6

    .line 599
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 612
    .end local v7    # "pt":Landroid/graphics/Point;
    :cond_5d
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_processTrace(J[I[I[II)Z

    move-result v0

    return v0
.end method

.method public recaptureWord([CZ)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .registers 7
    .param p1, "word"    # [C
    .param p2, "isSelection"    # Z

    .prologue
    .line 751
    invoke-static {}, Lcom/nuance/input/swypecorelib/RecaptureInfo;->allocateRecaptureInfoFieldInfoArray()[I

    move-result-object v0

    .line 752
    .local v0, "recaptureInfo":[I
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_9
    invoke-static {v2, v3, p1, v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_recaptureWord(J[CI[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 753
    new-instance v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;

    invoke-direct {v1, v0, p1}, Lcom/nuance/input/swypecorelib/RecaptureInfo;-><init>([I[C)V

    .line 755
    :goto_14
    return-object v1

    .line 752
    :cond_15
    const/4 v1, 0x0

    goto :goto_9

    .line 755
    :cond_17
    sget-object v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    goto :goto_14
.end method

.method public reconstructWord([C)Z
    .registers 4
    .param p1, "word"    # [C

    .prologue
    .line 767
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_reconstructWord(J[C)Z

    move-result v0

    return v0
.end method

.method public removeSpaceBeforeWord(I)Z
    .registers 3
    .param p1, "wordIndex"    # I

    .prologue
    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public setAttribute(II)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 706
    return-void
.end method

.method public setAttribute(IZ)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 694
    return-void
.end method

.method public setCandidateFactory(Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;)V
    .registers 2
    .param p1, "fact"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->candidateFactory:Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;

    .line 960
    return-void
.end method

.method public setContext([C)V
    .registers 2
    .param p1, "wordContext"    # [C

    .prologue
    .line 739
    return-void
.end method

.method public setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V
    .registers 4
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/InputContextRequest;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContextRequestListener:Lcom/nuance/input/swypecorelib/InputContextRequest;

    .line 1115
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_register_InputContext_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 1116
    return-void
.end method

.method public setKeyboardDatabase(IIZ)Z
    .registers 6
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I
    .param p3, "forceReload"    # Z

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setKeyboardDatabase(JIIZ)Z

    move-result v0

    return v0
.end method

.method public setKeyboardLoadCallback(Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;)V
    .registers 4
    .param p1, "loadCallback"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->keyboardLoadCallback:Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;

    .line 456
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_register_kdb_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 457
    return-void
.end method

.method public setLDBEmoji(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1064
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setLDBEmoji(JZ)V

    .line 1065
    return-void
.end method

.method public setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 3
    .param p1, "languageID"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->mLanguageID:I

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 5
    .param p1, "firstLanguageID"    # I
    .param p2, "secondLanguageID"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->mLanguageID:I

    .line 368
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_getDefaultInputMode(JI)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->valueOf(I)Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(IILcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(IILcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 8
    .param p1, "firstLanguageID"    # I
    .param p2, "secondLanguageID"    # I
    .param p3, "inputMode"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .prologue
    .line 384
    iput p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->mLanguageID:I

    .line 386
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->value()I

    move-result v1

    invoke-static {v2, v3, p1, p2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setLanguage(JIII)I

    move-result v1

    invoke-static {v1}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 388
    .local v0, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v1, :cond_1d

    .line 389
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCurrentLDBVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onChangeLanguage(ILjava/lang/String;)V

    .line 392
    :cond_1d
    return-object v0
.end method

.method public setMultiTapInputMode(Z)V
    .registers 4
    .param p1, "isMultiTap"    # Z

    .prologue
    .line 1105
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setMultiTapInputMode(JZ)V

    .line 1106
    return-void
.end method

.method setMultiTapTimerTimeOutRequest(I)V
    .registers 3
    .param p1, "timerID"    # I

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    if-eqz v0, :cond_9

    .line 1172
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    invoke-interface {v0, p1}, Lcom/nuance/input/swypecorelib/TouchRequestCallback;->setMultiTapTimerTimeOutRequest(I)V

    .line 1174
    :cond_9
    return-void
.end method

.method public setRunningState(I)V
    .registers 4
    .param p1, "runningState"    # I

    .prologue
    .line 1040
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_setRunningState(JI)V

    .line 1041
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 2
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 715
    return-void
.end method

.method public setTouchRequestCallback(Lcom/nuance/input/swypecorelib/TouchRequestCallback;)V
    .registers 4
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    .line 1125
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_register_TouchRequest_callback(JLcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 1126
    return-void
.end method

.method setTouchTimerTimeOutRequest(I)V
    .registers 3
    .param p1, "timeOut"    # I

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    if-eqz v0, :cond_9

    .line 1181
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    invoke-interface {v0, p1}, Lcom/nuance/input/swypecorelib/TouchRequestCallback;->setTouchTimerTimeOutRequest(I)V

    .line 1183
    :cond_9
    return-void
.end method

.method public setWordQuarantineLevel(III)V
    .registers 4
    .param p1, "userImplicitAction"    # I
    .param p2, "userExplicitAction"    # I
    .param p3, "scanUsageAction"    # I

    .prologue
    .line 1008
    return-void
.end method

.method public abstract startSession()V
.end method

.method public touchCancel(I)Z
    .registers 4
    .param p1, "pointerID"    # I

    .prologue
    .line 546
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_touchCancel(JI)Z

    move-result v0

    return v0
.end method

.method touchCanceled(ZI)V
    .registers 4
    .param p1, "mainTouch"    # Z
    .param p2, "pointerID"    # I

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    if-eqz v0, :cond_9

    .line 1163
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/input/swypecorelib/TouchRequestCallback;->touchCanceled(ZI)V

    .line 1165
    :cond_9
    return-void
.end method

.method public touchEnd(I[F[F[I)Z
    .registers 11
    .param p1, "pointerID"    # I
    .param p2, "xCoords"    # [F
    .param p3, "yCoords"    # [F
    .param p4, "timersMS"    # [I

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_touchEnd(JI[F[F[I)Z

    move-result v0

    return v0
.end method

.method touchEnded(ZIIICZ)V
    .registers 14
    .param p1, "mainTouch"    # Z
    .param p2, "pointerId"    # I
    .param p3, "keyType"    # I
    .param p4, "keyIndex"    # I
    .param p5, "keyCode"    # C
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    if-eqz v0, :cond_12

    .line 1154
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    invoke-static {p3}, Lcom/nuance/input/swypecorelib/KeyType;->from(I)Lcom/nuance/input/swypecorelib/KeyType;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TouchRequestCallback;->touchEnded(ZILcom/nuance/input/swypecorelib/KeyType;ICZ)V

    .line 1156
    :cond_12
    return-void
.end method

.method public touchMove(I[F[F[I)Z
    .registers 11
    .param p1, "pointerID"    # I
    .param p2, "xCoords"    # [F
    .param p3, "yCoords"    # [F
    .param p4, "timersMS"    # [I

    .prologue
    .line 538
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_touchMove(JI[F[F[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 539
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v0, p2, p3}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onTraced([F[F)V

    .line 540
    const/4 v0, 0x1

    .line 542
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public touchStart(I[F[F[I)Z
    .registers 11
    .param p1, "pointerID"    # I
    .param p2, "xCoords"    # [F
    .param p3, "yCoords"    # [F
    .param p4, "timersMS"    # [I

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_touchStart(JI[F[F[I)Z

    move-result v0

    return v0
.end method

.method touchStarted(ZIIICZ)V
    .registers 14
    .param p1, "mainTouch"    # Z
    .param p2, "pointerId"    # I
    .param p3, "keyType"    # I
    .param p4, "keyIndex"    # I
    .param p5, "keyCode"    # C
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    if-eqz v0, :cond_12

    .line 1136
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    invoke-static {p3}, Lcom/nuance/input/swypecorelib/KeyType;->from(I)Lcom/nuance/input/swypecorelib/KeyType;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TouchRequestCallback;->touchStarted(ZILcom/nuance/input/swypecorelib/KeyType;ICZ)V

    .line 1138
    :cond_12
    return-void
.end method

.method public touchTimeOut(I)V
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 1072
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_touchTimeOut(JI)V

    .line 1073
    return-void
.end method

.method touchUpdated(ZIIICZ)V
    .registers 14
    .param p1, "mainTouch"    # Z
    .param p2, "pointerId"    # I
    .param p3, "keyType"    # I
    .param p4, "keyIndex"    # I
    .param p5, "keyCode"    # C
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    if-eqz v0, :cond_12

    .line 1145
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchRequestCallback:Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    invoke-static {p3}, Lcom/nuance/input/swypecorelib/KeyType;->from(I)Lcom/nuance/input/swypecorelib/KeyType;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TouchRequestCallback;->touchUpdated(ZILcom/nuance/input/swypecorelib/KeyType;ICZ)V

    .line 1147
    :cond_12
    return-void
.end method

.method public undoAccept([CI)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .registers 4
    .param p1, "word"    # [C
    .param p2, "cursorPosition"    # I

    .prologue
    .line 782
    sget-object v0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    return-object v0
.end method

.method public wordSelected(IZ)V
    .registers 5
    .param p1, "wordIndex"    # I
    .param p2, "userExplictPick"    # Z

    .prologue
    .line 992
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->common_wordSelected(JIZ)V

    .line 993
    return-void
.end method
