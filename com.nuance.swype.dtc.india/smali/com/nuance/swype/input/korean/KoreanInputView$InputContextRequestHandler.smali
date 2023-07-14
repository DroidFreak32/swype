.class Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;
.super Ljava/lang/Object;
.source "KoreanInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputContextRequestHandler"
.end annotation


# instance fields
.field autoAccept:Z

.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .locals 1

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->autoAccept:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/korean/KoreanInputView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/korean/KoreanInputView$1;

    .prologue
    .line 2410
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;[CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;
    .param p1, "x1"    # [C
    .param p2, "x2"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 2410
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->addExplicitSymbol([CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method private addExplicitSymbol([CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "symbols"    # [C
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 2420
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->autoAccept:Z

    .line 2421
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, p1, v2, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    .line 2422
    .local v0, "processed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->autoAccept:Z

    .line 2423
    return v0
.end method

.method private getTextBeforeCursor(I)[C
    .locals 4
    .param p1, "maxBufferLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 2414
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2415
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2416
    .local v1, "textBeforeCursor":Ljava/lang/CharSequence;
    :goto_0
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

    .line 2415
    goto :goto_0
.end method


# virtual methods
.method public autoAccept(Z)Z
    .locals 5
    .param p1, "addSeparator"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2438
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2439
    .local v0, "selectWord":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1400(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->autoAccept:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 2440
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1500(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 2441
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1600(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_1

    .line 2442
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1700(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2443
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1800(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->word()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2444
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1900(Lcom/nuance/swype/input/korean/KoreanInputView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2445
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2448
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2000(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2449
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2100(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->wordSelected(IZ)V

    .line 2450
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 2451
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 2453
    :cond_1
    return v4
.end method

.method public getAutoCapitalizationTextBuffer(I)[C
    .locals 1
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 2433
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->getTextBeforeCursor(I)[C

    move-result-object v0

    return-object v0
.end method

.method public getContextBuffer(I)[C
    .locals 1
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 2428
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->getTextBeforeCursor(I)[C

    move-result-object v0

    return-object v0
.end method
