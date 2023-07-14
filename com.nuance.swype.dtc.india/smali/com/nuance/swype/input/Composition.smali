.class public Lcom/nuance/swype/input/Composition;
.super Ljava/lang/Object;
.source "Composition.java"


# instance fields
.field private mEndSelection:I

.field private mInline:Landroid/text/SpannableStringBuilder;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mStartSelection:I

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    .line 18
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/Composition;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 28
    return-void
.end method

.method private clearSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 136
    iput v3, p0, Lcom/nuance/swype/input/Composition;->mEndSelection:I

    .line 137
    iput v3, p0, Lcom/nuance/swype/input/Composition;->mStartSelection:I

    .line 138
    return-void
.end method

.method private clears()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/nuance/swype/input/Composition;->mStartSelection:I

    .line 170
    iput v0, p0, Lcom/nuance/swype/input/Composition;->mEndSelection:I

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 173
    return-void
.end method


# virtual methods
.method public acceptCurrentInline()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 61
    invoke-direct {p0}, Lcom/nuance/swype/input/Composition;->clears()V

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 65
    :cond_0
    return-void
.end method

.method public clearCurrentInline()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/Composition;->clears()V

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 77
    :cond_0
    return-void
.end method

.method public deleteWordToLeftOfCursor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    iget-object v3, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_0

    .line 143
    iget v3, p0, Lcom/nuance/swype/input/Composition;->mEndSelection:I

    iget v4, p0, Lcom/nuance/swype/input/Composition;->mStartSelection:I

    if-eq v3, v4, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/nuance/swype/input/Composition;->clearSelection()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p0, v3, v5}, Lcom/nuance/swype/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 149
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "deleteChars":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3, v0, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 155
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 156
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 155
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public deleteWordToRightOfCursor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    iget-object v3, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_0

    .line 109
    iget v3, p0, Lcom/nuance/swype/input/Composition;->mEndSelection:I

    iget v4, p0, Lcom/nuance/swype/input/Composition;->mStartSelection:I

    if-eq v3, v4, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/nuance/swype/input/Composition;->clearSelection()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p0, v3, v5}, Lcom/nuance/swype/input/Composition;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 115
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "deleteChars":I
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3, v5, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 121
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 122
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 125
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/nuance/swype/input/Composition;->clears()V

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 85
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 37
    invoke-direct {p0}, Lcom/nuance/swype/input/Composition;->clears()V

    .line 38
    return-void
.end method

.method public setSelection(II)V
    .locals 0
    .param p1, "startSel"    # I
    .param p2, "endSel"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/nuance/swype/input/Composition;->mStartSelection:I

    .line 32
    iput p2, p0, Lcom/nuance/swype/input/Composition;->mEndSelection:I

    .line 33
    return-void
.end method

.method public showInline(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 45
    invoke-direct {p0}, Lcom/nuance/swype/input/Composition;->clears()V

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/Composition;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v1, p0, Lcom/nuance/swype/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 54
    :cond_0
    return-void
.end method
