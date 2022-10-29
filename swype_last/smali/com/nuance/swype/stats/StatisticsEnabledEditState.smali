.class public Lcom/nuance/swype/stats/StatisticsEnabledEditState;
.super Lcom/nuance/swype/input/EditState;
.source "StatisticsEnabledEditState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    const-string/jumbo v0, "Stats"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IMEApplication;)V
    .registers 4
    .param p1, "imeApp"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/EditState;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    .line 193
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    iput-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 147
    iput-object p1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 150
    .local v0, "usageManager":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_1a

    .line 151
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    .line 153
    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .prologue
    .line 17
    iget v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    return-object v0
.end method

.method static synthetic access$300()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method private getInputContents()Ljava/lang/String;
    .registers 5

    .prologue
    .line 235
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 236
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->ime:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    .line 237
    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 238
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_3d

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    if-eqz v1, :cond_3d

    .line 239
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    :goto_3c
    return-object v1

    :cond_3d
    const-string/jumbo v1, ""

    goto :goto_3c
.end method

.method private verifyWorthProcessing(Ljava/lang/String;)Z
    .registers 5
    .param p1, "inputContext"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x1

    .line 278
    .local v0, "worth":Z
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 281
    :cond_9
    const/4 v0, 0x0

    .line 291
    :cond_a
    :goto_a
    return v0

    .line 282
    :cond_b
    iget v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->previousBufferLength:I

    if-nez v1, :cond_11

    .line 285
    const/4 v0, 0x1

    goto :goto_a

    .line 286
    :cond_11
    iget v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->previousBufferLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 289
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public cursorChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "charBeforeCusor"    # Ljava/lang/CharSequence;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/nuance/swype/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public endSession()V
    .registers 3

    .prologue
    .line 215
    invoke-super {p0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 217
    invoke-direct {p0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->getInputContents()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "inputContext":Ljava/lang/String;
    if-nez v0, :cond_d

    const/4 v1, 0x0

    :goto_a
    iput v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->previousBufferLength:I

    .line 221
    return-void

    .line 220
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_a
.end method

.method public enterSent()V
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->enterKeySelected:Z

    .line 297
    return-void
.end method

.method public getHideWindowInputContents()Ljava/lang/String;
    .registers 3

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->getInputContents()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "inputContext":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->verifyWorthProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 251
    .end local v0    # "inputContext":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "inputContext":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardActionDecorator:Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    return-object v0
.end method

.method public isEnterSent()Z
    .registers 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->enterKeySelected:Z

    return v0
.end method

.method public recapture()V
    .registers 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/nuance/swype/input/EditState;->recapture()V

    .line 226
    return-void
.end method

.method public reportWritingResults(Ljava/lang/String;)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    if-eqz v0, :cond_c

    .line 308
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    sget v1, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_HANDWRITTEN:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->mark(II)V

    .line 310
    :cond_c
    return-void
.end method

.method public runSearch(Ljava/lang/String;)V
    .registers 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 304
    return-void
.end method

.method public selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "wordSelected"    # Ljava/lang/CharSequence;
    .param p2, "defaultWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 163
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardUsageScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    if-nez v0, :cond_a

    .line 177
    :cond_9
    :goto_9
    return-void

    .line 167
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    if-eqz v0, :cond_16

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    iget v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->mark(II)V

    .line 171
    :cond_16
    if-eqz p2, :cond_2a

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Default word not selected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 174
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    iput-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    goto :goto_9
.end method

.method public setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .registers 2
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 196
    if-nez p1, :cond_4

    .line 197
    sget-object p1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 199
    :cond_4
    iput-object p1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->selectionType:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 200
    return-void
.end method

.method public startSession()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-super {p0}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 206
    iput v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->inputType:I

    .line 207
    iput-boolean v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->enterKeySelected:Z

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->currentToken:I

    .line 211
    return-void
.end method

.method public watchOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    .prologue
    .line 259
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;-><init>(Lcom/nuance/swype/stats/StatisticsEnabledEditState;Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    iput-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardActionDecorator:Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    .line 260
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->keyboardActionDecorator:Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;

    return-object v0
.end method
