.class public Lcom/nuance/swype/input/BackspaceRevertHandler;
.super Ljava/lang/Object;
.source "BackspaceRevertHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;,
        Lcom/nuance/swype/input/BackspaceRevertHandler$State;
    }
.end annotation


# static fields
.field private static final ENABLE_LOG:Z

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private candidates:Lcom/nuance/input/swypecorelib/Candidates;

.field private final inputView:Lcom/nuance/swype/input/AlphaInputView;

.field private final resetOnBackToWordBegin:Z

.field private state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private final stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private final stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private final stateRecapSuggestionsPending:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private final stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private final stateReverted:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "BackspaceRevertHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .registers 3
    .param p1, "inputView"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->resetOnBackToWordBegin:Z

    .line 146
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$1;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 183
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 256
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateReverted:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 323
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$4;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRecapSuggestionsPending:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 361
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 439
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 442
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;

    .line 443
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->doAutoCorrectOverride(Lcom/nuance/input/swypecorelib/Candidates;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onPreSpaceOverrideOrReverted(Lcom/nuance/input/swypecorelib/Candidates;)V

    return-void
.end method

.method static synthetic access$1300()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->lastTapAutoSelectedWord(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/AlphaInputView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateReverted:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->recaptureAcWordCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRecapSuggestionsPending:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method private changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    .registers 5
    .param p1, "next"    # Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .prologue
    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "changeState(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->getName(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->getName(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 565
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    if-eqz v1, :cond_31

    .line 566
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onExit(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V

    .line 568
    :cond_31
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 569
    .local v0, "old":Lcom/nuance/swype/input/BackspaceRevertHandler$State;
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 570
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    if-eqz v1, :cond_3e

    .line 571
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onEnter(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V

    .line 573
    :cond_3e
    return-void
.end method

.method private static desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;
    .registers 3
    .param p0, "cand"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; si: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; exact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dlog(Ljava/lang/Object;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 579
    return-void
.end method

.method private doAutoCorrectOverride(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 6
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 504
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 507
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 516
    :cond_1a
    :goto_1a
    return-void

    .line 508
    :cond_1b
    new-array v2, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 510
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 511
    :goto_37
    if-eqz v0, :cond_1a

    .line 512
    const-string/jumbo v0, "external recapture"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_1a

    :cond_45
    move v0, v1

    .line 510
    goto :goto_37
.end method

.method private static getName(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # Lcom/nuance/swype/input/BackspaceRevertHandler$State;

    .prologue
    .line 560
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$State;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string/jumbo v0, "*"

    goto :goto_6
.end method

.method private lastTapAutoSelectedWord(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .registers 3
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 550
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private onPreSpaceOverrideOrReverted(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 7
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 489
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 493
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 494
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 499
    :goto_1f
    return-void

    .line 496
    :cond_20
    sget-object v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "onPreSpaceOverrideOrReverted(): wrong state for candidates"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_1f
.end method

.method private recapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .registers 5
    .param p1, "phrase"    # Ljava/lang/String;

    .prologue
    .line 554
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v0

    .line 555
    .local v0, "input":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->recaptureWord([CZ)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v1

    return-object v1
.end method

.method private recaptureAcWordCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    .registers 5

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "out":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->recapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v1

    .line 532
    .local v1, "recaptureInfo":Lcom/nuance/input/swypecorelib/RecaptureInfo;
    iget v2, v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->totalWord:I

    if-lez v2, :cond_3f

    .line 542
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getRecaptureCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recaptureAcWordCandidates(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 544
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 546
    :cond_3f
    return-object v0
.end method


# virtual methods
.method public isOverrideActive()Z
    .registers 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRevertable()Z
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackToWordBegin()V
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onBackToWordBegin()V

    .line 484
    return-void
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .registers 5
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result v0

    return v0
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 479
    return-void
.end method

.method public onSendBackspace(I)Z
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onSendBackspace(I)Z

    move-result v0

    return v0
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 474
    return-void
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 450
    const-string/jumbo v0, "reset()"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 452
    return-void
.end method
