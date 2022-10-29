.class Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchKeyActionHandler"
.end annotation


# instance fields
.field private final functionKey:[C

.field private final keyIndices:Landroid/util/SparseIntArray;

.field private shouldClearInvalidKey:Z

.field private shouldIgnoreAutoAccept:Z

.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

.field private touchCanceled:Z


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .registers 3

    .prologue
    .line 6130
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6132
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->functionKey:[C

    .line 6133
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/chinese/ChineseInputView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/chinese/ChineseInputView$1;

    .prologue
    .line 6130
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    return-void
.end method

.method static synthetic access$11902(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 6130
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldClearInvalidKey:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    .prologue
    .line 6130
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->clearAllKeys()V

    return-void
.end method

.method static synthetic access$3100(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    .prologue
    .line 6130
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldIgnoreAutoAccept:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 6130
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldIgnoreAutoAccept:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    .prologue
    .line 6130
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->deleteOneKeyAndRefresh()V

    return-void
.end method

.method private clearAllKeys()V
    .registers 2

    .prologue
    .line 6143
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 6144
    return-void
.end method

.method private deleteOneKeyAndRefresh()V
    .registers 2

    .prologue
    .line 6139
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->deleteOneKeyAndRefresh()Z

    .line 6140
    return-void
.end method

.method private processStoredTouch(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/KeyType;)V
    .registers 16
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 6282
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7700(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isAddingZhuyinTone(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8000(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldIgnoreAutoAccept:Z

    .line 6283
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->functionKey:[C

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processStoredTouch(I[C)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 6284
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->functionKey:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    if-eqz v0, :cond_42

    .line 6285
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-char v1, v1

    const/4 v2, 0x0

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->handleFunctionKey(CZ)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7900(Lcom/nuance/swype/input/chinese/ChineseInputView;CZ)V

    .line 6335
    :cond_3f
    :goto_3f
    return-void

    .line 6282
    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    .line 6287
    :cond_42
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasActiveInput()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 6288
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 6289
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 6290
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9100(Lcom/nuance/swype/input/chinese/ChineseInputView;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9200(Lcom/nuance/swype/input/chinese/ChineseInputView;)I

    move-result v1

    if-ne v0, v1, :cond_78

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldClearInvalidKey:Z

    if-eqz v0, :cond_96

    .line 6292
    :cond_78
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 6293
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v7

    .line 6294
    .local v7, "keyCount":I
    const/4 v0, 0x2

    if-lt v7, v0, :cond_96

    .line 6295
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    add-int/lit8 v1, v7, -0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKeyByIndex(II)Z

    .line 6298
    .end local v7    # "keyCount":I
    :cond_96
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->multiTapBuildWordCandidateList()Z

    move-result v0

    .line 6299
    if-nez v0, :cond_141

    .line 6300
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMaxKeysCangjieOrQuickCangjie()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 6301
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->multiTapTimeOut()V

    .line 6302
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 6303
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->tryBuildingWordCandidateList(Z)Z

    .line 6304
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v1

    if-eqz v1, :cond_e2

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_d3
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8600(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Point;I[IJZ)V

    goto/16 :goto_3f

    :cond_e2
    const/4 v1, 0x0

    goto :goto_d3

    .line 6307
    :cond_e4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->backupWordSymbolInfo()V

    .line 6308
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidKey:I
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9302(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I

    .line 6309
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9500(Lcom/nuance/swype/input/chinese/ChineseInputView;)I

    move-result v1

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9402(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I

    .line 6310
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->tryBuildingWordCandidateList(Z)Z

    .line 6311
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v1

    if-eqz v1, :cond_13f

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_11d
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8600(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Point;I[IJZ)V

    .line 6313
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->restoreWordSymbolInfo()V

    .line 6314
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setMultiTapHasInvalidKey(Z)V

    goto/16 :goto_3f

    .line 6311
    :cond_13f
    const/4 v1, 0x0

    goto :goto_11d

    .line 6318
    :cond_141
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v1

    if-eqz v1, :cond_166

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_152
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8600(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Point;I[IJZ)V

    .line 6320
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    goto/16 :goto_3f

    .line 6318
    :cond_166
    const/4 v1, 0x0

    goto :goto_152

    .line 6323
    :cond_168
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v9

    .line 6324
    .local v9, "preKeyCount":I
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->tryBuildingWordCandidateList(Z)Z

    move-result v10

    .line 6325
    .local v10, "success":Z
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v8

    .line 6326
    .local v8, "postKeyCount":I
    if-gt v9, v8, :cond_1bb

    if-eqz v10, :cond_1bb

    const/4 v10, 0x1

    .line 6327
    :goto_18c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v1

    if-eqz v1, :cond_1bd

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_19d
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v11, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    .line 6328
    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z
    invoke-static {v6, v11}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7700(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z

    move-result v6

    if-eqz v6, :cond_1bf

    if-nez v10, :cond_1bf

    const/4 v6, 0x1

    .line 6327
    :goto_1b6
    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8600(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Point;I[IJZ)V

    goto/16 :goto_3f

    .line 6326
    :cond_1bb
    const/4 v10, 0x0

    goto :goto_18c

    .line 6327
    :cond_1bd
    const/4 v1, 0x0

    goto :goto_19d

    .line 6328
    :cond_1bf
    const/4 v6, 0x0

    goto :goto_1b6

    .line 6333
    .end local v8    # "postKeyCount":I
    .end local v9    # "preKeyCount":I
    .end local v10    # "success":Z
    :cond_1c1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    goto/16 :goto_3f
.end method


# virtual methods
.method public handleKeyboardShiftState(F)V
    .registers 2
    .param p1, "x"    # F

    .prologue
    .line 6446
    return-void
.end method

.method public multiTapTimerTimeOut()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6435
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "touchKeyActionHandler...multiTapTimerTimeOut"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6436
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mInMultiTap:Z
    invoke-static {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 6437
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6439
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldClearInvalidKey:Z

    .line 6441
    :cond_27
    return-void
.end method

.method public multiTapTimerTimeoutActive()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 6450
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "touchKeyActionHandler...multiTapTimerTimeoutActive"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6451
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mInMultiTap:Z
    invoke-static {v0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11802(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 6452
    return-void
.end method

.method public quickPress(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 10
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6338
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "touchKeyActionHandler...quickPress...keyIndex: "

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "...keyType: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6339
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6340
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1, v5, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleKey(IZI)Z

    .line 6342
    :cond_35
    return-void
.end method

.method public touchCanceled(II)V
    .registers 9
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 6346
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "touchKeyActionHandler...touchCanceled...keyIndex: "

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6347
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->touchCanceled:Z

    .line 6348
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->resetTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9600(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V

    .line 6349
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mInMultiTap:Z
    invoke-static {v0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 6351
    if-ne p2, v3, :cond_4b

    .line 6352
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v3, :cond_3f

    .line 6353
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9800(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9900(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6355
    :cond_3f
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 6356
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v3, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10000(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 6359
    :cond_4b
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_5a

    .line 6360
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    sget-object v1, Lcom/nuance/input/swypecorelib/KeyType;->UNKNOWN:Lcom/nuance/input/swypecorelib/KeyType;

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onTouchEnded(IILcom/nuance/input/swypecorelib/KeyType;Z)Z

    .line 6363
    :cond_5a
    return-void
.end method

.method public touchEnded(IILcom/nuance/input/swypecorelib/KeyType;ZZFFI)V
    .registers 17
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "isTraced"    # Z
    .param p5, "quickPressed"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "eventTime"    # I

    .prologue
    .line 6196
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "touchKeyActionHandler...touchEnded...pointerId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...keyIndex: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 6197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "...keyType: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "...isTraced: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 6198
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "...quickPressed: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 6199
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6196
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6201
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6202
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 6203
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7500(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 6205
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasActiveInput()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 6206
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onTouchEnded(IILcom/nuance/input/swypecorelib/KeyType;Z)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 6279
    :cond_85
    :goto_85
    return-void

    .line 6211
    :cond_86
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->touchCanceled:Z

    if-nez v0, :cond_95

    .line 6212
    if-eqz p5, :cond_ae

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 6213
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->quickPress(IILcom/nuance/input/swypecorelib/KeyType;)V

    .line 6273
    :cond_95
    :goto_95
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz p4, :cond_1eb

    const/4 v0, 0x2

    :goto_9a
    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastInput:I
    invoke-static {v1, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8902(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I

    .line 6274
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 6275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldIgnoreAutoAccept:Z

    .line 6276
    if-eqz p4, :cond_85

    .line 6277
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->finishTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$9000(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V

    goto :goto_85

    .line 6215
    :cond_ae
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v7

    .line 6217
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p4, :cond_d4

    .line 6218
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isPinyinQwertyShiftedState()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 6219
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->functionKey:[C

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processStoredTouch(I[C)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 6220
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    goto :goto_95

    .line 6224
    :cond_d4
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 6227
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7700(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastInput:I
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7800(Lcom/nuance/swype/input/chinese/ChineseInputView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_fc

    .line 6228
    invoke-direct {p0, v7, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->processStoredTouch(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/KeyType;)V

    goto :goto_95

    .line 6230
    :cond_fc
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-char v1, v1

    const/4 v2, 0x0

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->handleFunctionKey(CZ)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7900(Lcom/nuance/swype/input/chinese/ChineseInputView;CZ)V

    goto :goto_95

    .line 6233
    :cond_109
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v0

    if-nez v0, :cond_1c4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isAddingZhuyinTone(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8000(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z

    move-result v0

    if-nez v0, :cond_1c4

    .line 6234
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isString()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 6235
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 6236
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onText(Ljava/lang/CharSequence;J)V

    goto/16 :goto_95

    .line 6239
    :cond_135
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7700(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 6240
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 6241
    invoke-direct {p0, v7, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->processStoredTouch(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/KeyType;)V

    goto/16 :goto_95

    .line 6245
    :cond_14f
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-char v1, v1

    const/4 v2, 0x0

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->handleFunctionKey(CZ)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7900(Lcom/nuance/swype/input/chinese/ChineseInputView;CZ)V

    goto/16 :goto_95

    .line 6247
    :cond_15d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieWildCard(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8300(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z

    move-result v0

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieQwerty()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 6248
    invoke-direct {p0, v7, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->processStoredTouch(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/KeyType;)V

    goto/16 :goto_95

    .line 6250
    :cond_177
    iget-object v0, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1ae

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 6251
    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_1ae

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 6252
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 6253
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8600(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Point;I[IJZ)V

    goto/16 :goto_95

    .line 6255
    :cond_1ae
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8700(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V

    .line 6256
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    goto/16 :goto_95

    .line 6261
    :cond_1c4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isPinyinQwertyShiftedState()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 6262
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8600(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Point;I[IJZ)V

    goto/16 :goto_95

    .line 6264
    :cond_1e1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I
    invoke-static {v0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$8802(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I

    .line 6265
    invoke-direct {p0, v7, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->processStoredTouch(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/KeyType;)V

    goto/16 :goto_95

    .line 6273
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1eb
    const/4 v0, 0x1

    goto/16 :goto_9a
.end method

.method public touchHeld(IILcom/nuance/input/swypecorelib/KeyType;)Z
    .registers 9
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v0, 0x1

    .line 6367
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "touchKeyActionHandler...touchHeld...keyIndex: "

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, "...keyType: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6368
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 6369
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWriting()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 6372
    :goto_30
    return v0

    :cond_31
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v0

    goto :goto_30
.end method

.method public touchHeldEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 10
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 6409
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "touchKeyActionHandler...touchHeldEnded...pointerId:"

    aput-object v3, v1, v2

    const-string/jumbo v2, "...keyIndex: "

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6410
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 6411
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWriting()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 6412
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10600(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10700(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6413
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 6414
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v5, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10800(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 6422
    :goto_45
    return-void

    .line 6417
    :cond_46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 6418
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10900(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11000(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6419
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 6420
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v5, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11100(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 6421
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastInput:I
    invoke-static {v0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11202(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I

    goto :goto_45
.end method

.method public touchHeldMove(II[F[F[I)V
    .registers 11
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I

    .prologue
    const/4 v4, 0x1

    .line 6396
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "touchKeyActionHandler...touchHeldMove...pointerId:"

    aput-object v3, v1, v2

    const-string/jumbo v2, "...keyIndex: "

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6397
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 6398
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWriting()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 6399
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6400
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 6401
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10500(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 6405
    :goto_45
    return-void

    .line 6404
    :cond_46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onTouchHeldMoved(I[F[F[I)V

    goto :goto_45
.end method

.method public touchHeldRepeat(IILcom/nuance/input/swypecorelib/KeyType;I)Z
    .registers 14
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatCount"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6377
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "touchKeyActionHandler...touchHeldRepeat...keyIndex: "

    aput-object v5, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string/jumbo v6, "...keyType: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6378
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 6379
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 6380
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 6381
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v4, 0x8

    if-ne v1, v4, :cond_44

    .line 6382
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, p4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleBackspace(I)Z

    move-result v1

    .line 6391
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_43
    return v1

    .line 6383
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_44
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx;->isArrowKeys(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 6384
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4, v3, p4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleKey(IZI)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 6385
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$10200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v4, v3

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    :cond_6b
    move v1, v8

    .line 6387
    goto :goto_43

    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_6d
    move v1, v3

    .line 6391
    goto :goto_43
.end method

.method public touchHelpRepeatEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 6426
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6427
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->releaseRepeatKey()V

    .line 6429
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 6430
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$11600(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 6431
    return-void
.end method

.method public touchMoved(II[F[F[IZ)V
    .registers 15
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I
    .param p6, "canBeTraced"    # Z

    .prologue
    const/4 v7, 0x0

    .line 6167
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "touchKeyActionHandler...touchMoved...pointerId: "

    aput-object v2, v1, v7

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...keyIndex: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 6168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "...canBeTraced: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "...xcoords: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    array-length v3, p3

    .line 6169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "...ycoords: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6167
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6171
    if-nez p6, :cond_5a

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq p2, v0, :cond_98

    .line 6172
    :cond_5a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6800(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6900(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6173
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 6174
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6175
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasActiveInput()Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 6176
    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onTouchMoved(II[F[F[IZ)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 6192
    :cond_97
    :goto_97
    return-void

    .line 6181
    :cond_98
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasActiveInput()Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 6182
    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onTouchMoved(II[F[F[IZ)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 6184
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWriting()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 6185
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7000(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7100(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 6186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    goto :goto_97

    .line 6191
    :cond_d5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p2

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->onTouchMoved(I[F[F[IZI)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7200(Lcom/nuance/swype/input/chinese/ChineseInputView;I[F[F[IZI)V

    goto :goto_97
.end method

.method public touchStarted(IILcom/nuance/input/swypecorelib/KeyType;FFI)V
    .registers 12
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "eventTime"    # I

    .prologue
    const/4 v4, 0x0

    .line 6148
    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "touchKeyActionHandler...touchStarted...pointerId: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...keyIndex: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "...keyType: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6149
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasActiveInput()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 6150
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onTouchStarted(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 6163
    :goto_49
    return-void

    .line 6154
    :cond_4a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    invoke-static {v0, v1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 6155
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, p2, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6500(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 6156
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, p2, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPreviewKey(II)V

    .line 6158
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->resetTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6600(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V

    .line 6159
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->shouldIgnoreAutoAccept:Z

    .line 6160
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->touchCanceled:Z

    .line 6161
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z
    invoke-static {v0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 6162
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_49
.end method
