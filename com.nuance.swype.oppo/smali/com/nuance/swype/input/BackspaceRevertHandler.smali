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
.field private static ENABLE_LOG:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private candidates:Lcom/nuance/input/swypecorelib/Candidates;

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private final inputView:Lcom/nuance/swype/input/InputView;

.field private final resetOnBackToWordBegin:Z

.field private state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private stateRecapSuggestionsPending:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

.field private stateReverted:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "BackspaceRevertHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->ENABLE_LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputView;)V
    .locals 1
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->resetOnBackToWordBegin:Z

    .line 148
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$1;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 185
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 257
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateReverted:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 324
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$4;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRecapSuggestionsPending:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 362
    new-instance v0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 440
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 443
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 444
    iget-object v0, p1, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 445
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->ENABLE_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->recaptureAcWordCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRecapSuggestionsPending:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->doAutoCorrectOverride(Lcom/nuance/input/swypecorelib/Candidates;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onPreSpaceOverrideOrReverted(Lcom/nuance/input/swypecorelib/Candidates;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->lastTapAutoSelectedWord(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/InputView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/InputView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/util/CharacterUtilities;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateReverted:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    return-object v0
.end method

.method private changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    .locals 3
    .param p1, "next"    # Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .prologue
    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeState(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->getName(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->getName(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 575
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onExit(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 579
    .local v0, "old":Lcom/nuance/swype/input/BackspaceRevertHandler$State;
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    .line 580
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onEnter(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V

    .line 583
    :cond_1
    return-void
.end method

.method private static desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;
    .locals 2
    .param p0, "cand"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; si: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; exact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; default: "

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
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 586
    sget-boolean v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 587
    sget-object v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 589
    :cond_0
    return-void
.end method

.method private doAutoCorrectOverride(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 506
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    new-array v2, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    :goto_1
    if-eqz v0, :cond_0

    .line 514
    const-string v0, "external recapture"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 512
    goto :goto_1
.end method

.method private static getName(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Lcom/nuance/swype/input/BackspaceRevertHandler$State;

    .prologue
    .line 570
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$State;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "*"

    goto :goto_0
.end method

.method private lastTapAutoSelectedWord(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .locals 1
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 553
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPreSpaceOverrideOrReverted(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 491
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 496
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 501
    :goto_0
    return-void

    .line 498
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onPreSpaceOverrideOrReverted(): wrong state for candidates"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_0
.end method

.method private recapture(Ljava/lang/String;[I)Z
    .locals 4
    .param p1, "phrase"    # Ljava/lang/String;
    .param p2, "recaptureHistoryInfo"    # [I

    .prologue
    .line 557
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v0

    .line 558
    .local v0, "input":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 561
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->recaptureWord([CI[I)Z

    move-result v1

    .line 563
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 564
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 566
    :cond_0
    return v1
.end method

.method private recaptureAcWordCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    .locals 4

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "out":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 534
    .local v1, "recaptureHistoryInfo":[I
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->recapture(Ljava/lang/String;[I)Z

    move-result v2

    .line 535
    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;[I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recaptureAcWordCandidates(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 547
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 549
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isOverrideActive()Z
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRevertable()Z
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackToWordBegin()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onBackToWordBegin()V

    .line 486
    return-void
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result v0

    return v0
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 481
    return-void
.end method

.method public onSendBackspace(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onSendBackspace(I)Z

    move-result v0

    return v0
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 476
    return-void
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->state:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 452
    const-string v0, "reset()"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->dlog(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 454
    return-void
.end method
