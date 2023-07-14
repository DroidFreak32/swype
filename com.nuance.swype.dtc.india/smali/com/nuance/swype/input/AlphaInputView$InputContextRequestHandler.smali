.class Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;
.super Ljava/lang/Object;
.source "AlphaInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputContextRequestHandler"
.end annotation


# instance fields
.field private final emptyTextBuffer:[C

.field private lastAutoSpaceInserted:Z

.field private lastAutoSpaceTime:J

.field private lastCursorChangedByUs:J

.field private final noCapTextBuffer:[C

.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4362
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4360
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->emptyTextBuffer:[C

    .line 4361
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->noCapTextBuffer:[C

    .line 4363
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastAutoSpaceInserted:Z

    .line 4364
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->updateLastCursorChanged()V

    .line 4365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastAutoSpaceTime:J

    .line 4366
    return-void

    .line 4361
    :array_0
    .array-data 2
        0x78s
        0x20s
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/AlphaInputView$1;

    .prologue
    .line 4356
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;
    .param p1, "x1"    # C
    .param p2, "x2"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 4356
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->addExplicitSymbol(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .prologue
    .line 4356
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->setLastAutoSpaceInserted()V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .prologue
    .line 4356
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastAutoSpaceInserted:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .prologue
    .line 4356
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->removeSpaceBeforeCursor()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .prologue
    .line 4356
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->resetLastAutoSpaceInserted()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .prologue
    .line 4356
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->cursorChangedLikelyCauseByUs()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 4356
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addExplicitSymbol(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 4
    .param p1, "symbol"    # C
    .param p2, "shiftstate"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 4407
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "**** Core called addExplicitSymbol"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4408
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addCustomSymbol(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method private commitText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4399
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4400
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4401
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4402
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->updateLastCursorChanged()V

    .line 4404
    :cond_0
    return-void
.end method

.method private cursorChangedLikelyCauseByUs()Z
    .locals 4

    .prologue
    .line 4384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastCursorChangedByUs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextBeforeCursor(I)[C
    .locals 7
    .param p1, "maxBufferLen"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 4412
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4413
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4414
    .local v1, "textBeforeCursor":Ljava/lang/CharSequence;
    :goto_0
    sget-object v4, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "**** Core called getTextBeforeCursor: "

    aput-object v3, v5, v6

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4415
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :cond_0
    return-object v2

    .end local v1    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, v2

    .line 4413
    goto :goto_0

    .line 4414
    .restart local v1    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v3, "null"

    goto :goto_1
.end method

.method private removeSpaceBeforeCursor()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4388
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4389
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4390
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4391
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 4392
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4393
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->updateLastCursorChanged()V

    .line 4396
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private resetLastAutoSpaceInserted()V
    .locals 4

    .prologue
    .line 4369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastAutoSpaceTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastAutoSpaceInserted:Z

    .line 4372
    :cond_0
    return-void
.end method

.method private setLastAutoSpaceInserted()V
    .locals 2

    .prologue
    .line 4375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastAutoSpaceInserted:Z

    .line 4376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastAutoSpaceTime:J

    .line 4377
    return-void
.end method

.method private updateLastCursorChanged()V
    .locals 2

    .prologue
    .line 4380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->lastCursorChangedByUs:J

    .line 4381
    return-void
.end method


# virtual methods
.method public autoAccept(Z)Z
    .locals 6
    .param p1, "addSeparator"    # Z

    .prologue
    const/4 v5, 0x1

    .line 4445
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 4447
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "**** Auto accept callback called. Add separator? "

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4448
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v2, 0x4

    iput v2, v1, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 4450
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4451
    .local v0, "selectWord":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 4454
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 4455
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 4456
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    .line 4469
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;->onText(Ljava/lang/String;Lcom/nuance/swype/input/RecaptureHandler;)V

    .line 4471
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4473
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    .line 4474
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4477
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$2100(Lcom/nuance/swype/input/AlphaInputView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4478
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getDefaultWordSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4479
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->setLastAutoSpaceInserted()V

    .line 4482
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextKillLength()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4483
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V

    .line 4484
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextKillLength()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/IME;->deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)V

    .line 4487
    :cond_2
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V

    .line 4490
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    .line 4491
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v2, v3, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->candidateSelected(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 4493
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 4497
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 4499
    return v5
.end method

.method public getAutoCapitalizationTextBuffer(I)[C
    .locals 5
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 4426
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "**** Core called getAutoCapitalizationTextBuffer("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ") "

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4428
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCapitalizationSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4429
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 4430
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_0

    .line 4431
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 4433
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->emptyTextBuffer:[C

    .line 4439
    .end local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :goto_0
    return-object v1

    .line 4436
    .restart local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->getTextBeforeCursor(I)[C

    move-result-object v1

    goto :goto_0

    .line 4439
    .end local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->noCapTextBuffer:[C

    goto :goto_0
.end method

.method public getContextBuffer(I)[C
    .locals 4
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 4420
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "**** Core called getContextBuffer("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4421
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->getTextBeforeCursor(I)[C

    move-result-object v0

    return-object v0
.end method
