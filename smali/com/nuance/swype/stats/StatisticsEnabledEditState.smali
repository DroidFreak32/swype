.class public Lcom/nuance/swype/stats/StatisticsEnabledEditState;
.super Lcom/nuance/swype/input/EditState;
.source "StatisticsEnabledEditState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/stats/StatisticsEnabledEditState$1;,
        Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;,
        Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private currentToken:I

.field private enterKeySelected:Z

.field private final ime:Lcom/nuance/swype/input/IMEApplication;

.field private inputType:I

.field private keyboardActionDecorator:Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

.field private keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

.field private previousBufferLength:I

.field selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "Stats"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IMEApplication;)V
    .locals 2
    .param p1, "imeApp"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/EditState;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    .line 164
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    iput-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 121
    iput-object p1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    .line 123
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 124
    .local v0, "usageManager":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    .line 127
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .prologue
    .line 17
    iget v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    return-object v0
.end method

.method private getInputContents()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 209
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private verifyWorthProcessing(Ljava/lang/String;)Z
    .locals 3
    .param p1, "inputContext"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "worth":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 262
    :cond_1
    :goto_0
    return v0

    .line 253
    :cond_2
    iget v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->previousBufferLength:I

    if-nez v1, :cond_3

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_3
    iget v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->previousBufferLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cursorChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "charBeforeCusor"    # Ljava/lang/CharSequence;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/nuance/swype/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public endSession()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 188
    invoke-direct {p0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->getInputContents()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "inputContext":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->previousBufferLength:I

    .line 192
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public enterSent()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->enterKeySelected:Z

    .line 268
    return-void
.end method

.method public getHideWindowInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->getInputContents()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "inputContext":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->verifyWorthProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    .end local v0    # "inputContext":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "inputContext":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardActionDecorator:Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    return-object v0
.end method

.method public isEnterSent()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->enterKeySelected:Z

    return v0
.end method

.method public recapture()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/nuance/swype/input/EditState;->recapture()V

    .line 197
    return-void
.end method

.method public reportWritingResults(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    sget v1, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_HANDWRITTEN:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->mark(II)V

    .line 281
    :cond_0
    return-void
.end method

.method public runSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method

.method public selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "wordSelected"    # Ljava/lang/CharSequence;
    .param p2, "defaultWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    iget v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->mark(II)V

    .line 140
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default word not selected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordAlternativeText(Ljava/lang/String;)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordSelectedWord(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    iput-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    goto :goto_1
.end method

.method public setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    sget-object p1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 171
    return-void
.end method

.method public startSession()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-super {p0}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 177
    iput v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    .line 178
    iput-boolean v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->enterKeySelected:Z

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->currentToken:I

    .line 182
    return-void
.end method

.method public watchOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    .prologue
    .line 230
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;-><init>(Lcom/nuance/swype/stats/StatisticsEnabledEditState;Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    iput-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardActionDecorator:Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    .line 231
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardActionDecorator:Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    return-object v0
.end method
