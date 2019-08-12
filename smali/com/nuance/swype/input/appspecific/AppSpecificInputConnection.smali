.class public Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "AppSpecificInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;
    }
.end annotation


# static fields
.field private static EXTRACTED_TEXT_OFFSET_SEARCH:I = 0x0

.field private static final INVALID_CURSOR_POSITION:I = -0x1

.field private static MAX_SURROUNDING_TEXT:I

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

.field private byPassCache:Z

.field private final cachedAfterCursorText:Ljava/lang/StringBuilder;

.field private final cachedCommittedText:Ljava/lang/StringBuilder;

.field private final cachedComposingText:Ljava/lang/StringBuilder;

.field private cachedCursorPosition:I

.field private final cachedSelectedText:Ljava/lang/StringBuilder;

.field private cachedSelectionEnd:I

.field private final clipboard:Landroid/text/ClipboardManager;

.field private editorComposingEnd:I

.field private editorComposingStart:I

.field private editorExtractedTextOffset:I

.field private final extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

.field private isCacheUpdatesReliable:Z

.field private isEditorTextRetrievable:Z

.field private mBatchLevel:I

.field private mSkipCacheChangeInSendKeyEvent:Z

.field private target:Landroid/view/inputmethod/InputConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "AppSpecificInputConnection"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 31
    const/16 v0, 0x64

    sput v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->MAX_SURROUNDING_TEXT:I

    .line 32
    const/16 v0, 0x3e8

    sput v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->EXTRACTED_TEXT_OFFSET_SEARCH:I

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;Landroid/text/ClipboardManager;)V
    .locals 3
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "extractViewState"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;
    .param p3, "appSpecific"    # Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .param p4, "clipboard"    # Landroid/text/ClipboardManager;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 45
    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 46
    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 47
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    .line 48
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 49
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    .line 70
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    .line 80
    iput-object p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    .line 81
    iput-object p3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 82
    iput-object p4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    .line 83
    iput-object p2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    .line 84
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 85
    invoke-virtual {p3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldByPassInternalCache()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheUpdatesReliable:Z

    .line 86
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    .line 87
    return-void

    :cond_0
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method private adjustCacheAfterDeletion(II)V
    .locals 7
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 438
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v6, v4, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int v2, v4, p1

    .line 440
    .local v2, "remainingChars":I
    if-ltz v2, :cond_1

    .line 442
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 443
    move v0, v2

    .line 451
    .local v0, "composingLen":I
    :goto_0
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-le v4, p1, :cond_2

    .line 452
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 456
    :goto_1
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 457
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 458
    if-nez v0, :cond_3

    .line 459
    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 464
    :goto_2
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 465
    .local v3, "textLength":I
    if-lez p2, :cond_0

    if-lez v3, :cond_0

    .line 466
    if-ge p2, v3, :cond_4

    .line 467
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 474
    .end local v0    # "composingLen":I
    .end local v2    # "remainingChars":I
    .end local v3    # "textLength":I
    :cond_0
    :goto_3
    return-void

    .line 445
    .restart local v2    # "remainingChars":I
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 446
    const/4 v0, 0x0

    .line 447
    .restart local v0    # "composingLen":I
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 449
    .local v1, "len":I
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 454
    .end local v1    # "len":I
    :cond_2
    iput v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    goto :goto_1

    .line 461
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 462
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    goto :goto_2

    .line 470
    .restart local v3    # "textLength":I
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3
.end method

.method private commitText(Ljava/lang/CharSequence;IZ)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "bAction"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldClearComposingAddDeleteSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 131
    const-string v2, " "

    invoke-virtual {p0, v2, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0

    .line 135
    :cond_2
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor commitText cachedCursorPosition before:"

    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 138
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 139
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor commitText cachedCursorPosition after:"

    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " cachedComposingText:"

    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 141
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 142
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 143
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 146
    :cond_3
    if-eqz p3, :cond_0

    .line 147
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_0
.end method

.method private getSelectedTextInEditor()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1007
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    :goto_0
    return-object v0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v0}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedTextString(Landroid/view/inputmethod/InputConnection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1015
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCacheSyncedWithEditor()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheUpdatesReliable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebuildInternalStrings(IIZ)V
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "shouldSyncFromEditor"    # Z

    .prologue
    const/4 v10, 0x0

    .line 568
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v6

    if-nez v6, :cond_0

    .line 602
    :goto_0
    return-void

    .line 571
    :cond_0
    if-eqz p3, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    goto :goto_0

    .line 576
    :cond_1
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int v1, v6, v7

    .line 577
    .local v1, "cachIndexStart":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int v2, v6, v7

    .line 578
    .local v2, "cacheIndexEnd":I
    sget-object v6, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rebuildInternalStrings - cachIndexStart:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cacheIndexEnd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, " cursor cachedCursorPosition old:"

    iget v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    if-ne v1, v6, :cond_3

    if-lt p1, v1, :cond_3

    if-gt p2, v2, :cond_3

    .line 581
    iput p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 582
    sget-object v6, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "cursor new cachedCursorPosition"

    iget v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    iput p2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 585
    .local v0, "allString":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 586
    .local v5, "txtLength":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int/2addr v6, v7

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 587
    .local v4, "internalStart":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int/2addr v6, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 588
    .local v3, "internalEnd":I
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 589
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v6, v7, :cond_2

    .line 590
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 593
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 595
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .end local v0    # "allString":Ljava/lang/StringBuilder;
    .end local v3    # "internalEnd":I
    .end local v4    # "internalStart":I
    .end local v5    # "txtLength":I
    :goto_1
    sget-object v6, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rebuildInternalStrings - cachedCommittedText:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cachedComposingText:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cachedSelectedText:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cachedAfterCursorText:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 597
    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 598
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {p0, v6, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    goto :goto_1
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 3

    .prologue
    .line 104
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 107
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Begin Batch Nest level too deep : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearExtractedTextCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 851
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 852
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    .line 853
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 854
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 855
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 856
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 6
    .param p1, "completionInfo"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    const/4 v5, 0x0

    .line 684
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 687
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 688
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 689
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 690
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 691
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor commitCompletion set cachedComposingText 0"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 692
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 693
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 694
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 696
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x1

    .line 697
    .local v0, "bVal":Z
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_2

    .line 698
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    .line 701
    :cond_2
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 9
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 480
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_1

    if-lez p2, :cond_1

    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    invoke-interface {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;->isExtractViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 483
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {p0, v6, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 484
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_1

    .line 485
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v5, v6

    add-int v2, v5, p2

    .line 486
    .local v2, "end":I
    invoke-virtual {p0, v2, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 487
    add-int v5, p2, p1

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v7, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v6, v7

    add-int v4, v5, v6

    .line 488
    .local v4, "newBeforeLength":I
    invoke-direct {p0, v4, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->adjustCacheAfterDeletion(II)V

    .line 489
    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v5, v4, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    .line 510
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "end":I
    .end local v4    # "newBeforeLength":I
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->adjustCacheAfterDeletion(II)V

    .line 495
    if-ne p1, v5, :cond_2

    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDeleteSurroundingTextUsingKeyEvent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 498
    iput-boolean v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    .line 499
    const/16 v6, 0x43

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendDownUpKeyEvents(I)V

    move v0, v5

    .line 500
    goto :goto_0

    .line 502
    :cond_2
    if-nez p2, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDeleteSurroundingBeforeTextCharByChar()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 504
    const/4 v0, 0x1

    .line 505
    .local v0, "bVal":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_0

    if-eqz v0, :cond_0

    .line 506
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v6, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 510
    .end local v0    # "bVal":Z
    .end local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v5, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    if-gtz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Batch Edit level mis-match"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 671
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 674
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 675
    sget-object v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "cursor finishComposingText set cachedComposingText 0"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 677
    :cond_0
    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCapsModeAtCursor(Landroid/view/inputmethod/EditorInfo;)I
    .locals 4
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v1, p1}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    .line 804
    :goto_0
    return v1

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v1, 0x1000

    goto :goto_0

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eqz v1, :cond_2

    .line 798
    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 800
    .local v0, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 801
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 804
    .end local v0    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_0
.end method

.method public getComposingRangeInEditor()[I
    .locals 4

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    if-ltz v0, :cond_0

    .line 902
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 909
    :goto_0
    return-object v0

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/InputConnection;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 35
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 159
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v2, v3, :cond_1

    if-nez p2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v2, :cond_1

    .line 163
    new-instance v17, Landroid/view/inputmethod/ExtractedText;

    invoke-direct/range {v17 .. v17}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 165
    .local v17, "eText":Landroid/view/inputmethod/ExtractedText;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v30, v2, v3

    .line 166
    .local v30, "textBeforeCount":I
    sget v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->MAX_SURROUNDING_TEXT:I

    sub-int v27, v30, v2

    .line 167
    .local v27, "startOffset":I
    if-gez v27, :cond_0

    .line 168
    const/16 v27, 0x0

    .line 169
    move/from16 v0, v30

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 174
    :goto_0
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    .local v21, "s":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    sget v4, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->MAX_SURROUNDING_TEXT:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 182
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int v2, v2, v27

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 183
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 184
    const/4 v2, -0x1

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 185
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    move-object/from16 v2, v17

    .line 344
    .end local v21    # "s":Ljava/lang/StringBuilder;
    .end local v27    # "startOffset":I
    .end local v30    # "textBeforeCount":I
    :goto_1
    return-object v2

    .line 171
    .restart local v27    # "startOffset":I
    .restart local v30    # "textBeforeCount":I
    :cond_0
    sget v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->MAX_SURROUNDING_TEXT:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    goto :goto_0

    .line 190
    .end local v17    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v27    # "startOffset":I
    .end local v30    # "textBeforeCount":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor getExtractedText set cachedComposingText:0"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 195
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v17

    .line 199
    .restart local v17    # "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v17, :cond_a

    .line 206
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ltz v2, :cond_2

    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v2, :cond_3

    .line 208
    :cond_2
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_2
    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 209
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 213
    :cond_3
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-le v2, v3, :cond_4

    .line 214
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v33, v0

    .line 215
    .local v33, "tmp":I
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 216
    move/from16 v0, v33

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 219
    .end local v33    # "tmp":I
    :cond_4
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 220
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v34

    .line 221
    .local v34, "txtLength":I
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v0, v34

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 222
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v0, v34

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 223
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v2, v3, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 227
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v0, v34

    invoke-interface {v3, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 228
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_6

    .line 229
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    check-cast v32, Landroid/text/Spanned;

    .line 230
    .local v32, "textSpanned":Landroid/text/Spanned;
    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v25

    .line 231
    .local v25, "spans":[Ljava/lang/Object;
    if-eqz v25, :cond_6

    .line 232
    move-object/from16 v15, v25

    .local v15, "arr$":[Ljava/lang/Object;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v24, v15, v19

    .line 233
    .local v24, "span":Ljava/lang/Object;
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 234
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 235
    .local v26, "start":I
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    .line 236
    .local v18, "end":I
    move/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 237
    move/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 239
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor getExtractedText append cachedComposingText:"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 249
    .end local v15    # "arr$":[Ljava/lang/Object;
    .end local v18    # "end":I
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .end local v24    # "span":Ljava/lang/Object;
    .end local v25    # "spans":[Ljava/lang/Object;
    .end local v26    # "start":I
    .end local v32    # "textSpanned":Landroid/text/Spanned;
    .end local v34    # "txtLength":I
    :cond_6
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 250
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 251
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    if-lt v2, v3, :cond_9

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 256
    :goto_4
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    .line 258
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 259
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getExtractedText from target - cachedCursorPosition:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cachedSelectionEnd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v2, v17

    .line 260
    goto/16 :goto_1

    .line 208
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 232
    .restart local v15    # "arr$":[Ljava/lang/Object;
    .restart local v19    # "i$":I
    .restart local v20    # "len$":I
    .restart local v24    # "span":Ljava/lang/Object;
    .restart local v25    # "spans":[Ljava/lang/Object;
    .restart local v32    # "textSpanned":Landroid/text/Spanned;
    .restart local v34    # "txtLength":I
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 254
    .end local v15    # "arr$":[Ljava/lang/Object;
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .end local v24    # "span":Ljava/lang/Object;
    .end local v25    # "spans":[Ljava/lang/Object;
    .end local v32    # "textSpanned":Landroid/text/Spanned;
    .end local v34    # "txtLength":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 264
    :cond_a
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_b

    .line 265
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 274
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    sget v3, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->MAX_SURROUNDING_TEXT:I

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v29

    .line 275
    .local v29, "textBefore":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    const v3, 0xffff

    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v28

    .line 276
    .local v28, "textAfter":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    invoke-static {v2, v3}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 277
    .local v23, "selectedTextInEditor":Ljava/lang/CharSequence;
    if-eqz v29, :cond_c

    if-nez v28, :cond_d

    .line 278
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 283
    :cond_d
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v30

    .line 284
    .restart local v30    # "textBeforeCount":I
    sget v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->MAX_SURROUNDING_TEXT:I

    mul-int/lit8 v22, v2, 0x2

    .line 285
    .local v22, "searchSize":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 286
    sget v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->EXTRACTED_TEXT_OFFSET_SEARCH:I

    add-int v22, v22, v2

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v31

    .line 288
    .local v31, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 289
    const/16 v30, 0x0

    goto :goto_5

    .line 291
    :cond_e
    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v30

    .line 293
    goto :goto_5

    .line 296
    .end local v31    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_f
    sget v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->MAX_SURROUNDING_TEXT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v27, v30, v2

    .line 297
    .restart local v27    # "startOffset":I
    if-gez v27, :cond_10

    .line 298
    const/16 v27, 0x0

    .line 302
    :cond_10
    if-nez v23, :cond_11

    .line 303
    const-string v23, ""

    .line 307
    :cond_11
    new-instance v17, Landroid/view/inputmethod/ExtractedText;

    .end local v17    # "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-direct/range {v17 .. v17}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 308
    .restart local v17    # "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 309
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 310
    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 312
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v29, v2, v3

    const/4 v3, 0x1

    aput-object v23, v2, v3

    const/4 v3, 0x2

    aput-object v28, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    invoke-static/range {v29 .. v29}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Ljava/lang/CharSequence;)[I

    move-result-object v16

    .line 320
    .local v16, "composingRange":[I
    if-eqz v16, :cond_12

    .line 321
    const/4 v2, 0x0

    aget v2, v16, v2

    const/4 v3, 0x1

    aget v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 322
    const/4 v2, 0x0

    aget v2, v16, v2

    const/4 v3, 0x1

    aget v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 327
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    if-eq v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    if-lt v2, v3, :cond_13

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 332
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 334
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 335
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 336
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    .line 337
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor getExtractedText new cachedCursorPosition:"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " cachedSelectionEnd:"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " cachedAfterCursorText"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    const-string v9, " cachedSelectedText"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    const-string v11, " editorExtractedTextOffset"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, " cachedCommittedText:"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v14}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    move-object/from16 v2, v17

    .line 344
    goto/16 :goto_1

    .line 315
    .end local v16    # "composingRange":[I
    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearExtractedTextCache()V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    goto/16 :goto_1

    .line 330
    .restart local v16    # "composingRange":[I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_6
.end method

.method public getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 999
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x0

    .line 1003
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectionRangeInEditor()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 886
    iget-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v1, v2, :cond_0

    .line 888
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    aput v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    aput v3, v1, v2

    .line 895
    :goto_0
    return-object v1

    .line 893
    :cond_0
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 894
    .local v0, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 895
    invoke-static {v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 835
    .local v0, "cachedLength":I
    const/4 v1, -0x1

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v1, v2, :cond_1

    .line 836
    if-le v0, p1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 847
    .end local v0    # "cachedLength":I
    :goto_0
    return-object v1

    .line 839
    .restart local v0    # "cachedLength":I
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 843
    .end local v0    # "cachedLength":I
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_2

    .line 844
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 847
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 810
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 812
    .local v0, "cachedLength":I
    const/4 v2, -0x1

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v2, v3, :cond_2

    if-ge v0, p1, :cond_0

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_2

    .line 814
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 816
    .local v1, "s":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    if-le v0, p1, :cond_1

    .line 818
    const/4 v2, 0x0

    sub-int v3, v0, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 828
    .end local v0    # "cachedLength":I
    .end local v1    # "s":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-object v1

    .line 825
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_3

    .line 826
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 828
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasComposing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 924
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v2, :cond_2

    .line 925
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    if-eq v2, v3, :cond_1

    .line 927
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 925
    goto :goto_0

    .line 927
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v2}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/InputConnection;)[I

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hasSelection()Z
    .locals 2

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v0, :cond_1

    .line 916
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 918
    :goto_0
    return v0

    .line 916
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->hasSelection(Landroid/view/inputmethod/InputConnection;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCursorUpdateFromKeyboard(IIII)Z
    .locals 5
    .param p1, "oldSelStart"    # I
    .param p2, "newSelStart"    # I
    .param p3, "oldSelEnd"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 863
    add-int v0, p2, p4

    .line 864
    .local v0, "sum":I
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 865
    sub-int p4, v0, p2

    .line 866
    add-int v0, p1, p3

    .line 867
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 868
    sub-int p3, v0, p1

    .line 871
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-ne v3, p2, :cond_1

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-ne v3, p4, :cond_1

    .line 882
    :cond_0
    :goto_0
    return v1

    .line 875
    :cond_1
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-ne p1, v3, :cond_2

    if-ne p1, p2, :cond_3

    :cond_2
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-ne p3, v3, :cond_4

    if-eq p3, p4, :cond_4

    :cond_3
    move v1, v2

    .line 878
    goto :goto_0

    .line 882
    :cond_4
    sub-int v3, p2, p1

    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    sub-int/2addr v4, p2

    mul-int/2addr v3, v4

    if-gez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isCursorWithinWord(Lcom/nuance/swype/util/CharacterUtilities;)Z
    .locals 5
    .param p1, "charUtils"    # Lcom/nuance/swype/util/CharacterUtilities;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return v2

    .line 1023
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1025
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1026
    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1027
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 351
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->noContextMenuEditing()Z

    move-result v0

    .line 352
    .local v0, "bTakeAction":Z
    packed-switch p1, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v6, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v6

    :cond_1
    :goto_1
    return v6

    .line 354
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v0, :cond_3

    .line 355
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 356
    .local v4, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 357
    invoke-virtual {p0, v4, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 358
    .local v3, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v3}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v7

    if-eqz v7, :cond_2

    .line 359
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    invoke-interface {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;->onFlushActiveWord()V

    .line 361
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    iget v8, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget-object v9, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-interface {v7, v10, v8}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 365
    .end local v3    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v4    # "request":Landroid/view/inputmethod/ExtractedTextRequest;
    :goto_2
    if-eqz v0, :cond_0

    goto :goto_1

    .line 363
    :cond_3
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v10, v7, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(IIZ)Z

    goto :goto_2

    .line 370
    :pswitch_1
    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "selectionStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    instance-of v7, v7, Landroid/content/ClipboardManager;

    if-eqz v7, :cond_4

    .line 373
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    check-cast v2, Landroid/content/ClipboardManager;

    .line 374
    .local v2, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 375
    invoke-static {v5, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1

    .line 379
    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 380
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v7, v5}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 387
    .end local v5    # "selectionStr":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor()Ljava/lang/String;

    move-result-object v5

    .line 388
    .restart local v5    # "selectionStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 389
    if-eqz v0, :cond_7

    .line 390
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    instance-of v7, v7, Landroid/content/ClipboardManager;

    if-eqz v7, :cond_6

    .line 391
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    check-cast v2, Landroid/content/ClipboardManager;

    .line 392
    .restart local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 393
    invoke-static {v5, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 399
    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    :cond_5
    :goto_3
    const-string v7, ""

    invoke-virtual {p0, v7, v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    .line 397
    :cond_6
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v7, v5}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 402
    :cond_7
    const-string v7, ""

    invoke-direct {p0, v7, v6, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    goto/16 :goto_0

    .line 407
    .end local v5    # "selectionStr":Ljava/lang/String;
    :pswitch_3
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    instance-of v7, v7, Landroid/content/ClipboardManager;

    if-eqz v7, :cond_9

    .line 408
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    check-cast v2, Landroid/content/ClipboardManager;

    .line 409
    .restart local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 410
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 411
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 412
    if-eqz v0, :cond_8

    .line 413
    invoke-virtual {v1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    .line 416
    :cond_8
    invoke-virtual {v1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v7, v6, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    goto/16 :goto_0

    .line 422
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    :cond_9
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v7}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 423
    if-eqz v0, :cond_a

    .line 424
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v7}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    .line 427
    :cond_a
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v7}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v7, v6, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    goto/16 :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public reSyncFromEditor()V
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearExtractedTextCache()V

    .line 562
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 563
    .local v0, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 564
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 565
    return-void
.end method

.method public resetInternalEditingStates(IIZ)Z
    .locals 3
    .param p1, "newSelStart"    # I
    .param p2, "newSelEnd"    # I
    .param p3, "shouldSyncFromEditor"    # Z

    .prologue
    .line 781
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 782
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 784
    .local v0, "end":I
    invoke-direct {p0, v1, v0, p3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->rebuildInternalStrings(IIZ)V

    .line 785
    const/4 v2, 0x1

    return v2
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 767
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    .line 778
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 772
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 775
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 706
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    if-nez v2, :cond_1

    .line 707
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 741
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    new-instance v0, Ljava/lang/String;

    new-array v2, v4, [I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    aput v3, v2, v1

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([III)V

    .line 743
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 746
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 747
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 753
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 754
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 757
    :cond_1
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    .line 759
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_2

    .line 760
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 762
    :cond_2
    return v1

    .line 709
    :sswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 711
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 712
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 715
    :sswitch_1
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 716
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 717
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 726
    :cond_3
    :goto_1
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-lez v2, :cond_4

    .line 727
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 729
    :cond_4
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 730
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 722
    :cond_5
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor befoer sendKeyEvent cachedComposingText,"

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 723
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 724
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor after sendKeyEvent cachedComposingText,"

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 733
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 736
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 737
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 707
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public setByPassCache(Z)V
    .locals 0
    .param p1, "bVal"    # Z

    .prologue
    .line 1040
    iput-boolean p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    .line 1041
    return-void
.end method

.method public setComposingRegion(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 606
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v4}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldAvoidSetComposingRegion()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    :goto_0
    return v3

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int v0, v4, v5

    .line 612
    .local v0, "cachedLength":I
    if-lez v0, :cond_1

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 614
    .local v2, "s":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 616
    sub-int v4, p2, p1

    sub-int v4, v0, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 618
    .local v1, "indexOfStartOfComposingText":I
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 620
    sget-object v4, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "cursor setComposingRegion cachedComposingText,"

    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 621
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 623
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 624
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 628
    .end local v0    # "cachedLength":I
    .end local v1    # "indexOfStartOfComposingText":I
    .end local v2    # "s":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v3, p1, p2}, Lcom/nuance/android/compat/InputConnectionCompat;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v3

    goto :goto_0
.end method

.method public setComposingRegionBeforeCursor(Lcom/nuance/swype/util/CharacterUtilities;Ljava/lang/String;IZ)I
    .locals 8
    .param p1, "charUtils"    # Lcom/nuance/swype/util/CharacterUtilities;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "skipNonWordCharMax"    # I
    .param p4, "includeSkippedNonWordChars"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 953
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 954
    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 995
    :cond_0
    :goto_0
    return v4

    .line 957
    :cond_1
    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int v1, v5, v6

    .local v1, "end":I
    move v3, p3

    .line 958
    .end local p3    # "skipNonWordCharMax":I
    .local v3, "skipNonWordCharMax":I
    :goto_1
    add-int/lit8 p3, v3, -0x1

    .end local v3    # "skipNonWordCharMax":I
    .restart local p3    # "skipNonWordCharMax":I
    if-lez v3, :cond_2

    .line 960
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-static {p1, v5}, Lcom/nuance/swype/util/InputConnectionUtils;->isWordChar(Lcom/nuance/swype/util/CharacterUtilities;C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 961
    add-int/lit8 v1, v1, -0x1

    move v3, p3

    .end local p3    # "skipNonWordCharMax":I
    .restart local v3    # "skipNonWordCharMax":I
    goto :goto_1

    .line 967
    .end local v3    # "skipNonWordCharMax":I
    .restart local p3    # "skipNonWordCharMax":I
    :cond_2
    if-lez v1, :cond_0

    .line 968
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v0, v1, v5

    .line 969
    .local v0, "begin":I
    if-ltz v0, :cond_0

    .line 970
    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 971
    .local v2, "prev":Ljava/lang/CharSequence;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 972
    if-eqz p4, :cond_3

    .line 974
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int v1, v4, v5

    .line 976
    :cond_3
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegion(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 978
    sget-object v4, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "setComposingRegionBeforeCursor(): setComposingRegion failed (alternate approach)"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 979
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 980
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 981
    const-string v4, ""

    invoke-virtual {p0, v4, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 982
    invoke-virtual {p0, p2, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 983
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 985
    :cond_4
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    goto :goto_0

    .line 987
    :cond_5
    sget-object v5, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setComposingRegionBeforeCursor(): no match! prev: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; text: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 993
    .end local v0    # "begin":I
    .end local v1    # "end":I
    .end local v2    # "prev":Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v4, p1, p2, p3, p4}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingRegionBeforeCursor(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/util/CharacterUtilities;Ljava/lang/String;IZ)I

    move-result v4

    goto/16 :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v12, 0x0

    .line 634
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 635
    .local v2, "cachedCursorPositionBackup":I
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 636
    .local v4, "cachedSelectionEndBackup":I
    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 637
    .local v5, "editorComposingEndBackup":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 638
    .local v6, "editorComposingStartBackup":I
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "cachedComposingTextBackup":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "cachedSelectedTextBackup":Ljava/lang/String;
    sget-object v7, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "cursor setComposingText cachedCursorPosition before:"

    iget v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 641
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 642
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget-object v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 643
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 644
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 645
    sget-object v7, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "cursor setComposingText cachedCursorPosition:"

    iget v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, " cachedComposingText:"

    iget-object v11, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 646
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 647
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 648
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 649
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 651
    :cond_0
    sget-object v7, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "cursor setComposingText cachedCursorPosition after:"

    iget v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, " cachedComposingText:"

    iget-object v11, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 652
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 653
    .local v0, "bVal":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSkipWrongStartInputView()Z

    move-result v7

    if-nez v7, :cond_1

    .line 654
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v7, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 656
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 657
    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 658
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 659
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 661
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 662
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iput v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 664
    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 666
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelection(III)Z
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "reTryNum"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 537
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "bVal":Ljava/lang/Boolean;
    move v1, p3

    .line 538
    .end local p3    # "reTryNum":I
    .local v1, "reTryNum":I
    :goto_0
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "reTryNum":I
    .restart local p3    # "reTryNum":I
    if-lez v1, :cond_1

    .line 539
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 541
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 543
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectionRangeInEditor()[I

    move-result-object v2

    .line 545
    .local v2, "selection":[I
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getComposingRangeInEditor()[I

    move-result-object v3

    .line 546
    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    invoke-interface {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;->onFlushActiveWord()V

    .line 550
    :cond_0
    if-eqz v2, :cond_2

    aget v3, v2, v4

    if-ne v3, p1, :cond_2

    aget v3, v2, v5

    if-ne v3, p2, :cond_2

    .line 551
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 556
    .end local v2    # "selection":[I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .restart local v2    # "selection":[I
    :cond_2
    move v1, p3

    .line 554
    .end local p3    # "reTryNum":I
    .restart local v1    # "reTryNum":I
    goto :goto_0
.end method

.method public setSelection(IIZ)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bSet"    # Z

    .prologue
    const/4 v3, 0x0

    .line 519
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 520
    .local v0, "bVal":Ljava/lang/Boolean;
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->noSetSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 533
    :goto_0
    return v1

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    invoke-interface {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;->onFlushActiveWord()V

    .line 527
    :cond_1
    if-eqz p3, :cond_2

    .line 528
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 531
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->rebuildInternalStrings(IIZ)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public setTarget(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;)V
    .locals 2
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "appSpecific"    # Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    .line 93
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearExtractedTextCache()V

    .line 94
    iput-object p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    .line 95
    iput-object p2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 96
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 97
    invoke-virtual {p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldByPassInternalCache()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheUpdatesReliable:Z

    .line 98
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    .line 100
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0
.end method
