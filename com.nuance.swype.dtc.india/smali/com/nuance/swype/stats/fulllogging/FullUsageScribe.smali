.class public Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;
.super Lcom/nuance/swype/stats/AbstractScribe;
.source "FullUsageScribe.java"

# interfaces
.implements Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;


# static fields
.field private static final DIGIT_REGEX:Ljava/util/regex/Matcher;

.field private static final LOGTAG_CANDIDATES_TYPE_COMPLETIONS:C = 'C'

.field private static final LOGTAG_CANDIDATES_TYPE_HWR:C = 'H'

.field private static final LOGTAG_CANDIDATES_TYPE_NEXT_WORD_PREDICTION:C = 'N'

.field private static final LOGTAG_CANDIDATES_TYPE_RECAPTURE:C = 'R'

.field private static final LOGTAG_CANDIDATES_TYPE_RECAPTURE_BY_TEXT_SELECTION:C = 'S'

.field private static final LOGTAG_CANDIDATES_TYPE_SPEECH_ALTERNATES:C = 'A'

.field private static final LOGTAG_CANDIDATES_TYPE_TAP:C = 'P'

.field private static final LOGTAG_CANDIDATES_TYPE_TRACE:C = 'T'

.field private static final LOGTAG_SEPARATOR_CONTEXT_WORD_COUNT:C = ' '

.field private static final LOGTAG_SEPARATOR_FIELD:C = ','

.field private static final LOGTAG_TYPE_UNKNOWN:C = 'U'

.field private static final MAX_SUGGESTIONS_COUNT:I = 0x5

.field private static final REPLACEMENT_DIGIT:Ljava/lang/String; = "#"

.field private static final REPLACEMENT_SEPARATOR_ITEMS:Ljava/lang/String; = "*:*"

.field private static final SELECTION_LIST_OPTIONS_MAXIMUM:I = 0x14

.field private static final SEPARATOR_ITEMS:C = ':'

.field private static final SEPARATOR_ITEMS_STRING:Ljava/lang/String;


# instance fields
.field private longPressDetected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->SEPARATOR_ITEMS_STRING:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "[0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->DIGIT_REGEX:Ljava/util/regex/Matcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->longPressDetected:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/AbstractScribe;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->longPressDetected:Z

    .line 55
    return-void
.end method

.method private escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 353
    .line 354
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->SEPARATOR_ITEMS_STRING:Ljava/lang/String;

    const-string/jumbo v1, "*:*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 355
    return-object v0
.end method

.method private extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "seqBeforCusor"    # Ljava/lang/CharSequence;
    .param p2, "word"    # Ljava/lang/StringBuilder;

    .prologue
    .line 314
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 316
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 321
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 322
    add-int/lit8 v0, v3, -0x1

    .local v0, "end":I
    :goto_0
    if-ltz v0, :cond_0

    .line 323
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 328
    :cond_0
    if-gez v0, :cond_2

    .line 349
    .end local v0    # "end":I
    :cond_1
    :goto_1
    return-void

    .line 334
    .restart local v0    # "end":I
    :cond_2
    const/4 v2, 0x1

    .line 335
    .local v2, "valideSeq":Z
    add-int/lit8 v1, v0, -0x1

    .local v1, "start":I
    :goto_2
    if-ltz v1, :cond_3

    .line 336
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 338
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isValidChineseChar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 340
    const/4 v2, 0x0

    .line 345
    :cond_3
    if-eqz v2, :cond_1

    .line 346
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private getCandidatesListType(Lcom/nuance/input/swypecorelib/Candidates;)C
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/16 v0, 0x55

    .line 402
    if-nez p1, :cond_0

    .line 427
    :goto_0
    return v0

    .line 406
    :cond_0
    sget-object v1, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe$1;->$SwitchMap$com$nuance$input$swypecorelib$Candidates$Source:[I

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 408
    :pswitch_0
    const/16 v0, 0x54

    goto :goto_0

    .line 410
    :pswitch_1
    const/16 v0, 0x50

    goto :goto_0

    .line 412
    :pswitch_2
    const/16 v0, 0x52

    goto :goto_0

    .line 414
    :pswitch_3
    const/16 v0, 0x53

    goto :goto_0

    .line 416
    :pswitch_4
    const/16 v0, 0x4e

    goto :goto_0

    .line 418
    :pswitch_5
    const/16 v0, 0x48

    goto :goto_0

    .line 420
    :pswitch_6
    const/16 v0, 0x41

    goto :goto_0

    .line 422
    :pswitch_7
    const/16 v0, 0x43

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getEncodedWordCandidateString(Lcom/nuance/input/swypecorelib/WordCandidate;)Ljava/lang/String;
    .locals 8
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/16 v7, 0x3a

    const/4 v6, 0x1

    const/16 v4, 0x31

    const/16 v5, 0x30

    .line 374
    if-nez p1, :cond_0

    .line 375
    const/4 v3, 0x0

    .line 398
    :goto_0
    return-object v3

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "sourceHexString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 383
    .local v2, "sourceHexStringLength":I
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isSpellCorrected()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isTerminal()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isCompletion()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    if-le v2, v6, :cond_1

    .line 389
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    if-le v2, v6, :cond_2

    .line 393
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->maskDigitInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move v3, v5

    .line 383
    goto :goto_1

    :cond_4
    move v3, v5

    .line 384
    goto :goto_2

    :cond_5
    move v4, v5

    .line 385
    goto :goto_3
.end method

.method private maskDigitInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 360
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->DIGIT_REGEX:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public filterInputBuffer(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 494
    return-object p1
.end method

.method public recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "spelling"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 432
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->ACTIVE_WORD:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    const-string/jumbo v0, ""

    .line 434
    .local v0, "activeWord":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "candidate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    if-eqz p2, :cond_1

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|spell:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    :cond_1
    if-eqz p3, :cond_2

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|prefix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_2
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->ACTIVE_WORD:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 445
    .end local v0    # "activeWord":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public recordAlternativeText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->getHelper()Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    move-result-object v0

    .line 277
    .local v0, "helper":Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;->recordAlternativeText(Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public recordAppInstallRemove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "Event"    # Ljava/lang/String;

    .prologue
    .line 487
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordAppInstallRemove:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public recordCommittedSentence(Ljava/lang/String;)V
    .locals 1
    .param p1, "sentence"    # Ljava/lang/String;

    .prologue
    .line 449
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->COMMITTED_SENTENCE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->COMMITTED_SENTENCE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStatFiltered(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public recordCompletedText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordCompletedText text="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->COMPLETED_TEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public recordDeletedWord(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordDeletedWord word="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->DELETED_WORD:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public recordGestureType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 463
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->GESTURE_TYPE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordGestureType type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->GESTURE_TYPE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method

.method public recordInitialLocaleSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeSetting"    # Ljava/lang/String;

    .prologue
    .line 478
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->INITIAL_LOCALE_SETTING:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->INITIAL_LOCALE_SETTING:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 481
    :cond_0
    return-void
.end method

.method public recordInlineText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->getHelper()Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    move-result-object v0

    .line 285
    .local v0, "helper":Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;->recordInlineText(Ljava/lang/String;)V

    .line 288
    :cond_0
    return-void
.end method

.method public recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "from"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "to"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->getHelper()Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    move-result-object v0

    .line 269
    .local v0, "helper":Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;
    if-eqz v0, :cond_0

    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;->recordKeyboardLayerChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public recordKeyboardPageXML(Ljava/lang/String;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYBOARD_XML:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public recordKeycodeLongpress(I)V
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    .line 116
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordKeycodeLongpress keycode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 117
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->longPressDetected:Z

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordKeycodeTapped(I)V
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->longPressDetected:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYCODE_LONG:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->longPressDetected:Z

    .line 64
    :cond_0
    return-void
.end method

.method public recordRecapture(Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 128
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->RECAPTURE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public recordSelectedWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_WORD:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public recordSelectionListContext(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/String;)V
    .locals 8
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "textBuffer"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 217
    sget-object v5, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_CONTEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v1, "contextBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_3

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, "aWord":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 239
    const/16 v5, 0x20

    invoke-virtual {v1, v7, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    invoke-virtual {v1, v7, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 246
    .end local v0    # "aWord":Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->getEncodedWordCandidateString(Lcom/nuance/input/swypecorelib/WordCandidate;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "encodedWordCandidate":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->maskDigitInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_4
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    sget-object v5, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_CONTEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordSelectionListOptionString(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "selection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_OPTIONS:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-eqz p1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/16 v2, 0x14

    if-ge v0, v2, :cond_2

    .line 198
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 199
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_OPTIONS:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordSelectionListOptions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 8
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/16 v7, 0x2c

    .line 139
    sget-object v4, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_OPTIONS:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    .line 147
    new-instance v3, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v3, p1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 160
    .local v3, "suggestions":Lcom/nuance/input/swypecorelib/Candidates;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->getCandidatesListType(Lcom/nuance/input/swypecorelib/Candidates;)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    if-ge v1, v4, :cond_3

    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    .line 175
    invoke-virtual {v3, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->getEncodedWordCandidateString(Lcom/nuance/input/swypecorelib/WordCandidate;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "encodedWordCandidate":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 177
    sget-object v4, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to get encoded string for candidate ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 174
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 183
    .end local v0    # "encodedWordCandidate":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_OPTIONS:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordSetContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 456
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SET_CONTEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SET_CONTEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStatFiltered(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method

.method public recordShiftMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->getHelper()Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    move-result-object v0

    .line 293
    .local v0, "helper":Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;->recordShiftMargin(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .locals 2
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 211
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SHIFT_STATE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public recordTextBuffer(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->TEXT_BUFFER:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordTextBuffer text="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 302
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->TEXT_BUFFER:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method

.method public recordTracePath(Ljava/util/List;Ljava/util/List;)V
    .locals 9
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "trace":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "eventTime":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v7, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->TRACE_PATH:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 73
    .local v2, "pointsCount":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 74
    .local v6, "timeCount":I
    if-lez v2, :cond_0

    if-ne v6, v2, :cond_0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 94
    .local v1, "point":Landroid/graphics/Point;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 95
    .local v4, "time":J
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    iget v7, v1, Landroid/graphics/Point;->x:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v1    # "point":Landroid/graphics/Point;
    .end local v4    # "time":J
    :cond_2
    sget-object v7, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->TRACE_PATH:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 471
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_DISPLAY:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_DISPLAY:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method public recordWordWCLDataPoint(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 499
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WCL_USE_TRACKING:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "recordWordWCLDataPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 502
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WCL_USE_TRACKING:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/stats/fulllogging/FullUsageScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method
