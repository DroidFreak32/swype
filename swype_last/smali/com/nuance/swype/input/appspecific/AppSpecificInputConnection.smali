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
.field private static final EXTRACTED_TEXT_OFFSET_SEARCH:I = 0x3e8

.field private static final INVALID_CURSOR_POSITION:I = -0x1

.field private static final MAX_SURROUNDING_TEXT:I = 0x64

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

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

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
    .registers 1

    .prologue
    .line 29
    const-string/jumbo v0, "AppSpecificInputConnection"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;Landroid/text/ClipboardManager;Lcom/nuance/swype/util/CharacterUtilities;)V
    .registers 9
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "extractViewState"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;
    .param p3, "appSpecific"    # Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .param p4, "clipboard"    # Landroid/text/ClipboardManager;
    .param p5, "charUtils"    # Lcom/nuance/swype/util/CharacterUtilities;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 81
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

    .line 82
    iput-object p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    .line 83
    iput-object p3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 84
    iput-object p4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    .line 85
    iput-object p2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    .line 86
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 87
    invoke-virtual {p3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldByPassInternalCache()Z

    move-result v2

    if-nez v2, :cond_45

    :goto_3e
    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheUpdatesReliable:Z

    .line 88
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    .line 89
    iput-object p5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 90
    return-void

    :cond_45
    move v0, v1

    .line 87
    goto :goto_3e
.end method

.method private adjustCacheAfterDeletion(II)V
    .registers 10
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 446
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v6, v4, :cond_45

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 447
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int v2, v4, p1

    .line 449
    .local v2, "remainingChars":I
    if-ltz v2, :cond_46

    .line 450
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 451
    move v0, v2

    .line 459
    .local v0, "composingLen":I
    :goto_1c
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-le v4, p1, :cond_5d

    .line 460
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 464
    :goto_25
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 465
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 466
    if-nez v0, :cond_60

    .line 467
    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 472
    :goto_34
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 473
    .local v3, "textLength":I
    if-lez p2, :cond_45

    if-lez v3, :cond_45

    .line 474
    if-ge p2, v3, :cond_6e

    .line 475
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 482
    .end local v0    # "composingLen":I
    .end local v2    # "remainingChars":I
    .end local v3    # "textLength":I
    :cond_45
    :goto_45
    return-void

    .line 453
    .restart local v2    # "remainingChars":I
    :cond_46
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 454
    const/4 v0, 0x0

    .line 455
    .restart local v0    # "composingLen":I
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 457
    .local v1, "len":I
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1c

    .line 462
    .end local v1    # "len":I
    :cond_5d
    iput v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    goto :goto_25

    .line 469
    :cond_60
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 470
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    goto :goto_34

    .line 478
    .restart local v3    # "textLength":I
    :cond_6e
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_45
.end method

.method private commitText(Ljava/lang/CharSequence;IZ)Z
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "bAction"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    if-nez p1, :cond_6

    .line 154
    :cond_5
    :goto_5
    return v0

    .line 133
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 134
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldClearComposingAddDeleteSpace()Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz p3, :cond_27

    .line 135
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_5

    .line 139
    :cond_27
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "cursor commitText cachedCursorPosition before:"

    aput-object v4, v3, v0

    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 141
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 142
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 143
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "cursor commitText cachedCursorPosition after:"

    aput-object v4, v3, v0

    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, " cachedComposingText:"

    aput-object v4, v3, v5

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 144
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 145
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 146
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 147
    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 150
    :cond_8b
    if-eqz p3, :cond_95

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto/16 :goto_5

    :cond_95
    move v0, v1

    .line 154
    goto/16 :goto_5
.end method

.method private getCachedExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 12
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    const/16 v8, 0x64

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v7, v4, :cond_74

    if-nez p2, :cond_74

    .line 166
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v4

    if-eqz v4, :cond_74

    iget v4, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    if-nez v4, :cond_74

    iget-boolean v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v4, :cond_74

    .line 167
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 169
    .restart local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 170
    .local v3, "textBeforeCount":I
    add-int/lit8 v2, v3, -0x64

    .line 171
    .local v2, "startOffset":I
    if-gez v2, :cond_75

    .line 172
    const/4 v2, 0x0

    .line 173
    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 178
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .local v1, "s":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 181
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 186
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 187
    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 188
    iput v7, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 189
    iput v6, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 191
    .end local v1    # "s":Ljava/lang/StringBuilder;
    .end local v2    # "startOffset":I
    .end local v3    # "textBeforeCount":I
    :cond_74
    return-object v0

    .line 175
    .restart local v2    # "startOffset":I
    .restart local v3    # "textBeforeCount":I
    :cond_75
    iput v8, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    goto :goto_33
.end method

.method private getSelectedTextInEditor()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1016
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v1, v0, :cond_16

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v1, v0, :cond_16

    .line 1017
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1018
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    :goto_15
    return-object v0

    .line 1020
    :cond_16
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_21

    .line 1021
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v0}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedTextString(Landroid/view/inputmethod/InputConnection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 1024
    :cond_21
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getTextBeforeCursor(IIZ)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "n"    # I
    .param p2, "flags"    # I
    .param p3, "includeComposing"    # Z

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 815
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 817
    .local v0, "cachedLength":I
    const/4 v2, -0x1

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v2, v3, :cond_3d

    if-ge v0, p1, :cond_22

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_3d

    .line 819
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 821
    .local v1, "s":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3c

    .line 822
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    if-le v0, p1, :cond_3c

    .line 824
    const/4 v2, 0x0

    sub-int v3, v0, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 835
    .end local v0    # "cachedLength":I
    .end local v1    # "s":Ljava/lang/StringBuilder;
    :cond_3c
    :goto_3c
    return-object v1

    .line 832
    :cond_3d
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_48

    .line 833
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3c

    .line 835
    :cond_48
    const/4 v1, 0x0

    goto :goto_3c
.end method

.method private isCacheSyncedWithEditor()Z
    .registers 2

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheUpdatesReliable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private rebuildInternalStrings(IIZ)V
    .registers 15
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "shouldSyncFromEditor"    # Z

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v6

    if-nez v6, :cond_7

    .line 598
    :goto_6
    return-void

    .line 567
    :cond_7
    if-eqz p3, :cond_d

    .line 568
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    goto :goto_6

    .line 572
    :cond_d
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int v1, v6, v7

    .line 573
    .local v1, "cachIndexStart":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int v2, v6, v7

    .line 574
    .local v2, "cacheIndexEnd":I
    sget-object v6, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "rebuildInternalStrings - cachIndexStart:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cacheIndexEnd:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " start:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " end:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, " cursor cachedCursorPosition old:"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 575
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 574
    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 576
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    if-ne v1, v6, :cond_144

    if-lt p1, v1, :cond_144

    if-gt p2, v2, :cond_144

    .line 577
    iput p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 578
    sget-object v6, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "cursor new cachedCursorPosition"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 579
    iput p2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 580
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

    .line 581
    .local v0, "allString":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 582
    .local v5, "txtLength":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 583
    .local v4, "internalStart":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int/2addr v6, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 584
    .local v3, "internalEnd":I
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 585
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v6, v7, :cond_df

    .line 586
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_df
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 589
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 591
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .end local v0    # "allString":Ljava/lang/StringBuilder;
    .end local v3    # "internalEnd":I
    .end local v4    # "internalStart":I
    .end local v5    # "txtLength":I
    :goto_fe
    sget-object v6, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "rebuildInternalStrings - cachedCommittedText:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cachedComposingText:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cachedSelectedText:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cachedAfterCursorText:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 593
    :cond_144
    const/4 v6, -0x1

    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 594
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    goto :goto_fe
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 107
    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_15

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    .line 111
    :goto_14
    return v0

    .line 110
    :cond_15
    sget-object v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Begin Batch Nest level too deep : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public clearExtractedTextCache()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 862
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 863
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    .line 864
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 865
    iput v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 866
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 867
    return-void
.end method

.method public clearHighlightedText()V
    .registers 3

    .prologue
    const/16 v1, 0x43

    .line 1057
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->useBackspaceKeyToClearHighlightedText()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1058
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendDownUpKeyEvents(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1061
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendDownUpKeyEvents(I)V

    .line 1063
    :cond_16
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 1067
    :goto_19
    return-void

    .line 1065
    :cond_1a
    const-string/jumbo v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_19
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 8
    .param p1, "completionInfo"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    const/4 v5, 0x0

    .line 689
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 690
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 692
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_10

    const-string/jumbo v1, ""

    .line 693
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 694
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 695
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 696
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "cursor commitCompletion set cachedComposingText 0"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 697
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 698
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 699
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 701
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_45
    const/4 v0, 0x1

    .line 702
    .local v0, "bVal":Z
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_50

    .line 703
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    .line 706
    :cond_50
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4
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
    .registers 8
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v2, 0x1

    .line 489
    if-ne p1, v2, :cond_16

    if-nez p2, :cond_16

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDeleteSurroundingTextUsingKeyEvent()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 492
    iput-boolean v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    .line 493
    const/16 v3, 0x43

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendDownUpKeyEvents(I)V

    move v0, v2

    .line 506
    :cond_15
    :goto_15
    return v0

    .line 496
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->adjustCacheAfterDeletion(II)V

    .line 498
    if-nez p2, :cond_33

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 499
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDeleteSurroundingBeforeTextCharByChar()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 500
    const/4 v0, 0x1

    .line 501
    .local v0, "bVal":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, p1, :cond_15

    if-eqz v0, :cond_15

    .line 502
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 506
    .end local v0    # "bVal":Z
    .end local v1    # "i":I
    :cond_33
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_15
.end method

.method public endBatchEdit()Z
    .registers 3

    .prologue
    .line 117
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    if-gtz v0, :cond_d

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Batch Edit level mis-match"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_d
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mBatchLevel:I

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public finishComposingText()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 674
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 675
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 676
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 677
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 679
    :cond_1c
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 680
    sget-object v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "cursor finishComposingText set cachedComposingText 0"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 682
    :cond_2e
    iput v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iput v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 684
    :cond_32
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCachedContextBuffer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getCachedExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 159
    .local v0, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_1b

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    return-object v1

    :cond_1b
    const-string/jumbo v1, ""

    goto :goto_1a
.end method

.method public getCapsModeAtCursor(Landroid/view/inputmethod/EditorInfo;)I
    .registers 6
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v1

    if-nez v1, :cond_d

    .line 791
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v1, p1}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    .line 805
    :goto_c
    return v1

    .line 794
    :cond_d
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 796
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v1, 0x1000

    goto :goto_c

    .line 798
    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eqz v1, :cond_38

    .line 799
    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 801
    .local v0, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 802
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 805
    .end local v0    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_38
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_c
.end method

.method public getComposingRangeInEditor()[I
    .registers 5

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 912
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    if-eq v0, v1, :cond_32

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    if-ltz v0, :cond_32

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    if-ltz v0, :cond_32

    .line 913
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 914
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 915
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 920
    :goto_31
    return-object v0

    .line 918
    :cond_32
    const/4 v0, 0x0

    goto :goto_31

    .line 920
    :cond_34
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/InputConnection;)[I

    move-result-object v0

    goto :goto_31
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 28
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 201
    invoke-direct/range {p0 .. p2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getCachedExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    .line 202
    .local v5, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v5, :cond_9

    move-object/from16 v20, v5

    .line 354
    :goto_8
    return-object v20

    .line 206
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    sget-object v20, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "cursor getExtractedText set cachedComposingText:0"

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 211
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    .line 215
    if-eqz v5, :cond_2ae

    .line 222
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    if-ltz v20, :cond_75

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v20, v0

    if-gez v20, :cond_8f

    .line 224
    :cond_75
    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_28e

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v20

    :goto_83
    move/from16 v0, v20

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 225
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 229
    :cond_8f
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_ad

    .line 230
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v18, v0

    .line 231
    .local v18, "tmp":I
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 232
    move/from16 v0, v18

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 235
    .end local v18    # "tmp":I
    :cond_ad
    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1df

    .line 236
    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 237
    .local v19, "txtLength":I
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 238
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 239
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_102

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v22, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 243
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v20, v0

    if-eqz v20, :cond_1df

    .line 245
    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spanned;

    .line 246
    .local v17, "textSpanned":Landroid/text/Spanned;
    const/16 v20, 0x0

    const-class v21, Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .line 247
    .local v10, "spans":[Ljava/lang/Object;
    if-eqz v10, :cond_1df

    .line 248
    array-length v0, v10

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_146
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1df

    aget-object v9, v10, v20

    .line 249
    .local v9, "span":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    if-eqz v22, :cond_292

    .line 250
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 251
    .local v11, "start":I
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 252
    .local v6, "end":I
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 253
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 255
    sget-object v20, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "cursor getExtractedText append cachedComposingText:"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 265
    .end local v6    # "end":I
    .end local v9    # "span":Ljava/lang/Object;
    .end local v10    # "spans":[Ljava/lang/Object;
    .end local v11    # "start":I
    .end local v17    # "textSpanned":Landroid/text/Spanned;
    .end local v19    # "txtLength":I
    :cond_1df
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 266
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_296

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_296

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v23, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-interface/range {v21 .. v23}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 272
    :goto_240
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    .line 274
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 275
    sget-object v20, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "getExtractedText from target - cachedCursorPosition:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " cachedSelectionEnd"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move-object/from16 v20, v5

    .line 276
    goto/16 :goto_8

    .line 224
    :cond_28e
    const/16 v20, 0x0

    goto/16 :goto_83

    .line 248
    .restart local v9    # "span":Ljava/lang/Object;
    .restart local v10    # "spans":[Ljava/lang/Object;
    .restart local v17    # "textSpanned":Landroid/text/Spanned;
    .restart local v19    # "txtLength":I
    :cond_292
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_146

    .line 270
    .end local v9    # "span":Ljava/lang/Object;
    .end local v10    # "spans":[Ljava/lang/Object;
    .end local v17    # "textSpanned":Landroid/text/Spanned;
    .end local v19    # "txtLength":I
    :cond_296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_240

    .line 280
    :cond_2ae
    and-int/lit8 v20, p2, 0x1

    if-eqz v20, :cond_2b6

    .line 281
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 290
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v20, v0

    const/16 v21, 0xc8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 291
    .local v14, "textBefore":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v20, v0

    const v21, 0xffff

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    .line 292
    .local v13, "textAfter":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 293
    .local v8, "selectedTextInEditor":Ljava/lang/CharSequence;
    if-eqz v14, :cond_2ef

    if-nez v13, :cond_2f3

    .line 294
    :cond_2ef
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 299
    :cond_2f3
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 300
    .local v15, "textBeforeCount":I
    const/16 v7, 0xc8

    .line 301
    .local v7, "searchSize":I
    :goto_2f9
    if-ne v15, v7, :cond_31a

    .line 302
    add-int/lit16 v7, v7, 0x3e8

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v0, v7, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 304
    .local v16, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_315

    .line 305
    const/4 v15, 0x0

    goto :goto_2f9

    .line 307
    :cond_315
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 309
    goto :goto_2f9

    .line 312
    .end local v16    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_31a
    add-int/lit16 v12, v15, -0xc8

    .line 313
    .local v12, "startOffset":I
    if-gez v12, :cond_31f

    .line 314
    const/4 v12, 0x0

    .line 318
    :cond_31f
    if-nez v8, :cond_324

    .line 319
    const-string/jumbo v8, ""

    .line 323
    :cond_324
    new-instance v5, Landroid/view/inputmethod/ExtractedText;

    .end local v5    # "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 324
    .restart local v5    # "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 325
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 326
    iput v12, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 327
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x1

    aput-object v8, v20, v21

    const/16 v21, 0x2

    aput-object v13, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 329
    invoke-static {v14}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Ljava/lang/CharSequence;)[I

    move-result-object v4

    .line 330
    .local v4, "composingRange":[I
    if-eqz v4, :cond_3c8

    .line 331
    const/16 v20, 0x0

    aget v20, v4, v20

    const/16 v21, 0x1

    aget v21, v4, v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 332
    const/16 v20, 0x0

    aget v20, v4, v20

    const/16 v21, 0x1

    aget v21, v4, v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 337
    :cond_3c8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4ce

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4ce

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    move/from16 v23, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-interface/range {v21 .. v23}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 342
    :goto_409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 344
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 345
    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v20, v0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 346
    move-object/from16 v0, p0

    iput v12, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    .line 347
    sget-object v20, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "cursor getExtractedText new cachedCursorPosition:"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string/jumbo v23, " cachedSelectionEnd:"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    move/from16 v23, v0

    .line 348
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string/jumbo v23, " cachedAfterCursorText"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x6

    const-string/jumbo v23, " cachedSelectedText"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x8

    const-string/jumbo v23, " editorExtractedTextOffset"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    move/from16 v23, v0

    .line 349
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0xa

    const-string/jumbo v23, " cachedCommittedText:"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    .line 347
    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 352
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    move-object/from16 v20, v5

    .line 354
    goto/16 :goto_8

    .line 340
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_409
.end method

.method public getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "info"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 1008
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1009
    const/4 v0, 0x0

    .line 1012
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getSelectionRangeInEditor()[I
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 897
    iget-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v1, :cond_21

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-eq v1, v2, :cond_21

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v1, v2, :cond_21

    .line 899
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    aput v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    aput v3, v1, v2

    .line 906
    :goto_20
    return-object v1

    .line 904
    :cond_21
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 905
    .local v0, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 906
    invoke-static {v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v1

    goto :goto_20
.end method

.method public getTarget()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 845
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 846
    .local v0, "cachedLength":I
    const/4 v1, -0x1

    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v1, v2, :cond_1e

    .line 847
    if-le v0, p1, :cond_1b

    .line 848
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 858
    .end local v0    # "cachedLength":I
    :goto_1a
    return-object v1

    .line 850
    .restart local v0    # "cachedLength":I
    :cond_1b
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 854
    .end local v0    # "cachedLength":I
    :cond_1e
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_29

    .line 855
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1a

    .line 858
    :cond_29
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 810
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(IIZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursorWithOutComposingText(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "n"    # I
    .param p2, "flag"    # I

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(IIZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasComposing()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 935
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v2, :cond_15

    .line 936
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    if-eq v2, v3, :cond_13

    .line 938
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 936
    goto :goto_12

    .line 938
    :cond_15
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v2}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/InputConnection;)[I

    move-result-object v2

    if-nez v2, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method public hasSelection()Z
    .registers 3

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    if-nez v0, :cond_14

    .line 927
    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    .line 929
    :goto_11
    return v0

    .line 927
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 929
    :cond_14
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->hasSelection(Landroid/view/inputmethod/InputConnection;)Z

    move-result v0

    goto :goto_11
.end method

.method public isCursorUpdateFromKeyboard(IIII)Z
    .registers 10
    .param p1, "oldSelStart"    # I
    .param p2, "newSelStart"    # I
    .param p3, "oldSelEnd"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 874
    add-int v0, p2, p4

    .line 875
    .local v0, "sum":I
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 876
    sub-int p4, v0, p2

    .line 877
    add-int v0, p1, p3

    .line 878
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 879
    sub-int p3, v0, p1

    .line 882
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-ne v3, p2, :cond_1b

    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-ne v3, p4, :cond_1b

    .line 893
    :cond_1a
    :goto_1a
    return v1

    .line 886
    :cond_1b
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-ne p1, v3, :cond_21

    if-ne p1, p2, :cond_27

    :cond_21
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-ne p3, v3, :cond_29

    if-eq p3, p4, :cond_29

    :cond_27
    move v1, v2

    .line 889
    goto :goto_1a

    .line 893
    :cond_29
    sub-int v3, p2, p1

    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    sub-int/2addr v4, p2

    mul-int/2addr v3, v4

    if-gez v3, :cond_1a

    move v1, v2

    goto :goto_1a
.end method

.method public isCursorWithinWord(Lcom/nuance/swype/util/CharacterUtilities;)Z
    .registers 7
    .param p1, "charUtils"    # Lcom/nuance/swype/util/CharacterUtilities;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1028
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1039
    :cond_8
    :goto_8
    return v2

    .line 1032
    :cond_9
    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1034
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1035
    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1036
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move v2, v3

    goto :goto_8
.end method

.method public performContextMenuAction(I)Z
    .registers 13
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 361
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->noContextMenuEditing()Z

    move-result v0

    .line 362
    .local v0, "bTakeAction":Z
    packed-switch p1, :pswitch_data_124

    .line 442
    :cond_b
    :goto_b
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v6, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v6

    :goto_11
    return v6

    .line 364
    :pswitch_12
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v6

    if-nez v6, :cond_42

    if-eqz v0, :cond_42

    .line 365
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 366
    .local v4, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v7, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 367
    invoke-virtual {p0, v4, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 368
    .local v3, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v3}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v6

    if-eqz v6, :cond_30

    .line 369
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    invoke-interface {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;->onFlushActiveWord()V

    .line 371
    :cond_30
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    iget v8, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget-object v9, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-interface {v6, v10, v8}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 375
    .end local v3    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v4    # "request":Landroid/view/inputmethod/ExtractedTextRequest;
    :goto_3e
    if-eqz v0, :cond_b

    move v6, v7

    .line 376
    goto :goto_11

    .line 373
    :cond_42
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedAfterCursorText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {p0, v10, v6, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(IIZ)Z

    goto :goto_3e

    .line 380
    :pswitch_64
    if-eqz v0, :cond_b

    .line 381
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor()Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "selectionStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    instance-of v6, v6, Landroid/content/ClipboardManager;

    if-eqz v6, :cond_89

    .line 383
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    check-cast v2, Landroid/content/ClipboardManager;

    .line 384
    .local v2, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    if-eqz v6, :cond_87

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 385
    invoke-static {v5, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    :cond_87
    :goto_87
    move v6, v7

    .line 393
    goto :goto_11

    .line 388
    :cond_89
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 389
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6, v5}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_87

    .line 397
    .end local v5    # "selectionStr":Ljava/lang/String;
    :pswitch_95
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor()Ljava/lang/String;

    move-result-object v5

    .line 398
    .restart local v5    # "selectionStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 399
    if-eqz v0, :cond_c1

    .line 400
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    instance-of v6, v6, Landroid/content/ClipboardManager;

    if-eqz v6, :cond_bb

    .line 401
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    check-cast v6, Landroid/content/ClipboardManager;

    .line 402
    invoke-static {v5, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 407
    :goto_b2
    const-string/jumbo v6, ""

    invoke-direct {p0, v6, v7, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    move v6, v7

    .line 408
    goto/16 :goto_11

    .line 405
    :cond_bb
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6, v5}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b2

    .line 410
    :cond_c1
    const-string/jumbo v6, ""

    invoke-direct {p0, v6, v7, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    goto/16 :goto_b

    .line 415
    .end local v5    # "selectionStr":Ljava/lang/String;
    :pswitch_c9
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    instance-of v6, v6, Landroid/content/ClipboardManager;

    if-eqz v6, :cond_102

    .line 416
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    check-cast v2, Landroid/content/ClipboardManager;

    .line 417
    .restart local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 418
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 419
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-lez v6, :cond_b

    .line 420
    if-eqz v0, :cond_f5

    .line 421
    invoke-virtual {v1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move v6, v7

    .line 422
    goto/16 :goto_11

    .line 424
    :cond_f5
    invoke-virtual {v1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v7, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    goto/16 :goto_b

    .line 430
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    :cond_102
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 431
    if-eqz v0, :cond_118

    .line 432
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move v6, v7

    .line 433
    goto/16 :goto_11

    .line 435
    :cond_118
    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v7, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;IZ)Z

    goto/16 :goto_b

    .line 362
    nop

    :pswitch_data_124
    .packed-switch 0x102001f
        :pswitch_12
        :pswitch_95
        :pswitch_64
        :pswitch_c9
    .end packed-switch
.end method

.method public reSyncFromEditor()V
    .registers 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearExtractedTextCache()V

    .line 558
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 559
    .local v0, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 560
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 561
    return-void
.end method

.method public resetInternalEditingStates(IIZ)Z
    .registers 7
    .param p1, "newSelStart"    # I
    .param p2, "newSelEnd"    # I
    .param p3, "shouldSyncFromEditor"    # Z

    .prologue
    .line 782
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 783
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 785
    .local v0, "end":I
    invoke-direct {p0, v1, v0, p3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->rebuildInternalStrings(IIZ)V

    .line 786
    const/4 v2, 0x1

    return v2
.end method

.method public sendDownUpKeyEvents(I)V
    .registers 15
    .param p1, "keyEventCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 772
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 773
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

    .line 776
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

    .line 779
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 711
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5d

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-boolean v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    if-nez v2, :cond_5d

    .line 712
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_11c

    .line 746
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 747
    new-instance v0, Ljava/lang/String;

    new-array v2, v5, [I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    aput v3, v2, v1

    invoke-direct {v0, v2, v1, v5}, Ljava/lang/String;-><init>([III)V

    .line 748
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    .line 749
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 751
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 752
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 758
    .end local v0    # "text":Ljava/lang/String;
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 759
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 762
    :cond_5d
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->mSkipCacheChangeInSendKeyEvent:Z

    .line 764
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_69

    .line 765
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 767
    :cond_69
    return v1

    .line 714
    :sswitch_6a
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 716
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 717
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4a

    .line 720
    :sswitch_82
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_b9

    .line 721
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_a5

    .line 722
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 722
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 731
    :cond_a5
    :goto_a5
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-lez v2, :cond_af

    .line 732
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 734
    :cond_af
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 735
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4a

    .line 727
    :cond_b9
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "cursor befoer sendKeyEvent cachedComposingText,"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 728
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 729
    sget-object v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "cursor after sendKeyEvent cachedComposingText,"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_a5

    .line 738
    :sswitch_f5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 739
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 741
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 742
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_4a

    .line 712
    :sswitch_data_11c
    .sparse-switch
        0x0 -> :sswitch_f5
        0x42 -> :sswitch_6a
        0x43 -> :sswitch_82
    .end sparse-switch
.end method

.method public setByPassCache(Z)V
    .registers 2
    .param p1, "bVal"    # Z

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    .line 1050
    return-void
.end method

.method public setComposingRegion(II)Z
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 602
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v4}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldAvoidSetComposingRegion()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 624
    :goto_9
    return v3

    .line 605
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 606
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int v0, v4, v5

    .line 608
    .local v0, "cachedLength":I
    if-lez v0, :cond_75

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 610
    .local v2, "s":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 612
    sub-int v4, p2, p1

    sub-int v4, v0, v4

    .line 613
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 614
    .local v1, "indexOfStartOfComposingText":I
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 616
    sget-object v4, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "cursor setComposingRegion cachedComposingText,"

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 617
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 617
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 619
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 620
    iget v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 624
    .end local v0    # "cachedLength":I
    .end local v1    # "indexOfStartOfComposingText":I
    .end local v2    # "s":Ljava/lang/StringBuilder;
    :cond_75
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-static {v3, p1, p2}, Lcom/nuance/android/compat/InputConnectionCompat;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v3

    goto :goto_9
.end method

.method public setComposingRegionBeforeCursor(Ljava/lang/CharSequence;IZ)I
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skipNonWordCharMax"    # I
    .param p3, "includeSkippedNonWordChars"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x1

    .line 962
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 963
    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_12

    .line 1004
    :cond_11
    :goto_11
    return v4

    .line 966
    :cond_12
    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int v1, v5, v6

    .local v1, "end":I
    move v3, p2

    .line 967
    .end local p2    # "skipNonWordCharMax":I
    .local v3, "skipNonWordCharMax":I
    :goto_19
    add-int/lit8 p2, v3, -0x1

    .end local v3    # "skipNonWordCharMax":I
    .restart local p2    # "skipNonWordCharMax":I
    if-lez v3, :cond_33

    .line 969
    if-lez v1, :cond_33

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    iget-object v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lcom/nuance/swype/util/InputConnectionUtils;->isWordChar(Lcom/nuance/swype/util/CharacterUtilities;C)Z

    move-result v5

    if-nez v5, :cond_33

    .line 970
    add-int/lit8 v1, v1, -0x1

    move v3, p2

    .end local p2    # "skipNonWordCharMax":I
    .restart local v3    # "skipNonWordCharMax":I
    goto :goto_19

    .line 976
    .end local v3    # "skipNonWordCharMax":I
    .restart local p2    # "skipNonWordCharMax":I
    :cond_33
    if-lez v1, :cond_11

    .line 977
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v0, v1, v5

    .line 978
    .local v0, "begin":I
    if-ltz v0, :cond_11

    .line 979
    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 980
    .local v2, "prev":Ljava/lang/CharSequence;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 981
    if-eqz p3, :cond_51

    .line 983
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    sub-int v1, v4, v5

    .line 985
    :cond_51
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegion(II)Z

    move-result v4

    if-nez v4, :cond_81

    .line 987
    sget-object v4, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "setComposingRegionBeforeCursor(): setComposingRegion failed (alternate approach)"

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 988
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 989
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorExtractedTextOffset:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 990
    const-string/jumbo v4, ""

    invoke-virtual {p0, v4, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 991
    invoke-virtual {p0, p1, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 992
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 994
    :cond_81
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    goto :goto_11

    .line 996
    :cond_84
    sget-object v5, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setComposingRegionBeforeCursor(): no match! prev: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; text: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 1002
    .end local v0    # "begin":I
    .end local v1    # "end":I
    .end local v2    # "prev":Ljava/lang/CharSequence;
    :cond_aa
    iget-object v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    iget-object v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-static {v4, v5, p1, p2, p3}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingRegionBeforeCursor(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/util/CharacterUtilities;Ljava/lang/CharSequence;IZ)I

    move-result v4

    goto/16 :goto_11
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 630
    iget v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 631
    .local v2, "cachedCursorPositionBackup":I
    iget v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 632
    .local v4, "cachedSelectionEndBackup":I
    iget v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 633
    .local v5, "editorComposingEndBackup":I
    iget v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 634
    .local v6, "editorComposingStartBackup":I
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "cachedComposingTextBackup":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "cachedSelectedTextBackup":Ljava/lang/String;
    sget-object v7, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "cursor setComposingText cachedCursorPosition before:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 637
    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 638
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 639
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5c

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    if-ltz v7, :cond_5c

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    if-ge v7, v8, :cond_5c

    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-gt v7, v8, :cond_5c

    .line 642
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCommittedText:Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iget v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 645
    :cond_5c
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget-object v9, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 646
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 647
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 648
    sget-object v7, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "cursor setComposingText cachedCursorPosition:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " cachedComposingText:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 649
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 650
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 651
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 652
    iget v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    iget-object v8, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 654
    :cond_b6
    sget-object v7, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "cursor setComposingText cachedCursorPosition after:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " cachedComposingText:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 655
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 656
    .local v0, "bVal":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSkipWrongStartInputView()Z

    move-result v7

    if-nez v7, :cond_f3

    .line 657
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v7, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 659
    :cond_f3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_11d

    invoke-direct {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheSyncedWithEditor()Z

    move-result v7

    if-eqz v7, :cond_11d

    .line 660
    iput v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedCursorPosition:I

    .line 661
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 662
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iput v4, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectionEnd:I

    .line 664
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 665
    iget-object v7, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->cachedSelectedText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iput v5, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingEnd:I

    .line 667
    iput v6, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->editorComposingStart:I

    .line 669
    :cond_11d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7
.end method

.method public setSelection(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelection(III)Z
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "reTryNum"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 533
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "bVal":Ljava/lang/Boolean;
    move v1, p3

    .line 534
    .end local p3    # "reTryNum":I
    .local v1, "reTryNum":I
    :goto_7
    add-int/lit8 p3, v1, -0x1

    .end local v1    # "reTryNum":I
    .restart local p3    # "reTryNum":I
    if-lez v1, :cond_30

    .line 535
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 537
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 539
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectionRangeInEditor()[I

    move-result-object v2

    .line 541
    .local v2, "selection":[I
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getComposingRangeInEditor()[I

    move-result-object v3

    .line 542
    if-eqz v3, :cond_22

    .line 543
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    invoke-interface {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;->onFlushActiveWord()V

    .line 546
    :cond_22
    if-eqz v2, :cond_35

    aget v3, v2, v4

    if-ne v3, p1, :cond_35

    aget v3, v2, v5

    if-ne v3, p2, :cond_35

    .line 547
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 552
    .end local v2    # "selection":[I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .restart local v2    # "selection":[I
    :cond_35
    move v1, p3

    .line 550
    .end local p3    # "reTryNum":I
    .restart local v1    # "reTryNum":I
    goto :goto_7
.end method

.method public setSelection(IIZ)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bSet"    # Z

    .prologue
    const/4 v3, 0x0

    .line 515
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 516
    .local v0, "bVal":Ljava/lang/Boolean;
    if-eqz p3, :cond_14

    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->noSetSelection()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 517
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 529
    :goto_13
    return v1

    .line 519
    :cond_14
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 520
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->extractViewState:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;

    invoke-interface {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;->onFlushActiveWord()V

    .line 523
    :cond_1f
    if-eqz p3, :cond_2b

    .line 524
    iget-object v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 527
    :cond_2b
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->rebuildInternalStrings(IIZ)V

    .line 529
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_13
.end method

.method public setTarget(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;)V
    .registers 5
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "appSpecific"    # Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_1c

    .line 95
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    .line 96
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearExtractedTextCache()V

    .line 97
    iput-object p1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->target:Landroid/view/inputmethod/InputConnection;

    .line 98
    iput-object p2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->appSpecific:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 99
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isEditorTextRetrievable:Z

    .line 100
    invoke-virtual {p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldByPassInternalCache()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCacheUpdatesReliable:Z

    .line 101
    iput-boolean v1, p0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->byPassCache:Z

    .line 103
    :cond_1c
    return-void

    :cond_1d
    move v0, v1

    .line 100
    goto :goto_18
.end method
