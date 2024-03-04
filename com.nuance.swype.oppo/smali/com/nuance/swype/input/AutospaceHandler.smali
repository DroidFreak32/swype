.class public Lcom/nuance/swype/input/AutospaceHandler;
.super Ljava/lang/Object;
.source "AutospaceHandler.java"


# instance fields
.field private alphaInputView:Lcom/nuance/swype/input/AlphaInputView;

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private forceSingleAutospace:Z

.field private ime:Lcom/nuance/swype/input/IME;

.field private imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private noAutospace:Z

.field private noAutospaceLanguage:Z

.field private suppressSingleAutospace:Z

.field private webSearchUrlBoxAutoSpace:Z


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "alphaInputView"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 62
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/IMEApplication;

    iput-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 64
    iput-object p2, p0, Lcom/nuance/swype/input/AutospaceHandler;->alphaInputView:Lcom/nuance/swype/input/AlphaInputView;

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 66
    return-void
.end method

.method private autoSpaceEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospace:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAutospace()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    .line 296
    return-void
.end method

.method private sendAutospaceWCheck()Z
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "isAutoSpaceSent":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutoSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->sendAutospace()V

    .line 284
    const/4 v0, 0x1

    .line 286
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    .line 287
    return v0
.end method

.method private shouldAutospaceText(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "lastInputType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    const/4 v2, 0x1

    .line 356
    .local v2, "outsideWord":Z
    iget-object v3, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 357
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2

    .line 358
    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    if-eq p2, v5, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    :cond_0
    move v2, v5

    .line 361
    :goto_0
    if-nez v2, :cond_2

    .line 362
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 363
    .local v0, "charAfter":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    move v3, v5

    :goto_1
    or-int/lit8 v2, v3, 0x0

    .line 368
    .end local v0    # "charAfter":Ljava/lang/CharSequence;
    :cond_2
    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/util/CharacterUtilities;->isEmbeddedPunct(C)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctSpace(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutoSpace()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    return v5

    :cond_3
    move v2, v4

    .line 358
    goto :goto_0

    .restart local v0    # "charAfter":Ljava/lang/CharSequence;
    :cond_4
    move v3, v4

    .line 363
    goto :goto_1

    .end local v0    # "charAfter":Ljava/lang/CharSequence;
    :cond_5
    move v5, v4

    .line 368
    goto :goto_2
.end method


# virtual methods
.method public onCharKey(II)V
    .locals 3
    .param p1, "charKey"    # I
    .param p2, "lastInputType"    # I

    .prologue
    const/4 v2, 0x0

    .line 126
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->alphaInputView:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 133
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->sendAutospaceWCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->alphaInputView:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->alphaInputView:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 139
    :cond_1
    iput-boolean v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    .line 140
    iput-boolean v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    .line 141
    return-void
.end method

.method public onKey(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    const/16 v2, -0x6a

    if-ne p1, v2, :cond_0

    .line 151
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    .line 152
    iput-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    .line 160
    :goto_0
    return v0

    .line 154
    :cond_0
    const/16 v2, 0x8

    if-ne p1, v2, :cond_3

    .line 155
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    .line 156
    iget-object v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    :cond_1
    :goto_2
    move v0, v1

    .line 160
    goto :goto_0

    :cond_2
    move v0, v1

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 158
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    goto :goto_2
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/WordCandidate;I)V
    .locals 14
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "defaultCandidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "selectedCandidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p4, "lastInput"    # I

    .prologue
    .line 195
    sget-object v12, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v12, :cond_5

    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/WordCandidate;->shouldRemoveSpaceBefore()Z

    move-result v12

    if-nez v12, :cond_2

    iget-boolean v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospaceLanguage:Z

    if-nez v12, :cond_2

    .line 197
    const/4 v12, 0x6

    move/from16 v0, p4

    if-ne v0, v12, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->sendAutospace()V

    .line 274
    :cond_0
    :goto_0
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    .line 275
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->sendAutospaceWCheck()Z

    goto :goto_0

    .line 204
    :cond_2
    iget-object v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    .line 205
    .local v4, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v4, :cond_3

    .line 208
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 209
    .local v10, "seq":Ljava/lang/CharSequence;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_3

    .line 211
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 214
    .end local v10    # "seq":Ljava/lang/CharSequence;
    :cond_3
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 217
    .local v5, "lastChar":C
    iget-object v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v12, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isEmbeddedPunct(C)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v12, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 222
    .end local v4    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v5    # "lastChar":C
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/WordCandidate;->shouldRemoveSpaceBefore()Z

    move-result v9

    .line 223
    .local v9, "removeSpaceBeforeSelected":Z
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/input/swypecorelib/WordCandidate;->shouldRemoveSpaceBefore()Z

    move-result v8

    .line 227
    .local v8, "removeSpaceBeforeDefault":Z
    if-eq v9, v8, :cond_8

    .line 229
    iget-object v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    .line 230
    .restart local v4    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v4, :cond_8

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v12

    add-int/lit8 v7, v12, 0x1

    .line 233
    .local v7, "lengthWordPlusOne":I
    const/4 v12, 0x0

    invoke-virtual {v4, v7, v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 234
    .local v11, "textBefore":Ljava/lang/CharSequence;
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 237
    .local v6, "lengthTextBefore":I
    :goto_2
    if-ne v6, v7, :cond_8

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "hasSpaceBefore":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v6, :cond_7

    if-nez v2, :cond_7

    .line 243
    invoke-interface {v11, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 234
    .end local v2    # "hasSpaceBefore":Z
    .end local v3    # "i":I
    .end local v6    # "lengthTextBefore":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 248
    .restart local v2    # "hasSpaceBefore":Z
    .restart local v3    # "i":I
    .restart local v6    # "lengthTextBefore":I
    :cond_7
    if-eqz v9, :cond_9

    if-eqz v2, :cond_9

    .line 249
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 260
    .end local v2    # "hasSpaceBefore":Z
    .end local v3    # "i":I
    .end local v4    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v6    # "lengthTextBefore":I
    .end local v7    # "lengthWordPlusOne":I
    .end local v11    # "textBefore":Ljava/lang/CharSequence;
    :cond_8
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 261
    iget-object v12, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 263
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 264
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 265
    .local v1, "cSeqAfter":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 266
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 267
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 250
    .end local v1    # "cSeqAfter":Ljava/lang/CharSequence;
    .restart local v2    # "hasSpaceBefore":Z
    .restart local v3    # "i":I
    .local v4, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .restart local v6    # "lengthTextBefore":I
    .restart local v7    # "lengthWordPlusOne":I
    .restart local v11    # "textBefore":Ljava/lang/CharSequence;
    :cond_9
    if-nez v9, :cond_8

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->autoSpaceEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 253
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->sendAutospace()V

    goto :goto_4
.end method

.method public onText(Ljava/lang/CharSequence;IZ)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "lastInputType"    # I
    .param p3, "sendSpace"    # Z

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutospaceText(Ljava/lang/CharSequence;I)Z

    move-result v1

    .line 171
    .local v1, "shouldSendSpace":Z
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->sendAutospace()V

    .line 175
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    .line 179
    if-eqz p1, :cond_2

    .line 181
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 183
    .local v0, "lastChar":C
    iget-object v3, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isEmbeddedPunct(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    .line 185
    .end local v0    # "lastChar":C
    :cond_2
    return v1
.end method

.method public onTrace(Lcom/nuance/input/swypecorelib/WordCandidate;I)V
    .locals 2
    .param p1, "newWord"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "lastInputType"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->shouldRemoveSpaceBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    .line 112
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/nuance/swype/input/AutospaceHandler;->onText(Ljava/lang/CharSequence;IZ)Z

    goto :goto_0
.end method

.method public onUpdateEditorInfo(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 3
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospace:Z

    .line 74
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->webSearchUrlBoxAutoSpace:Z

    .line 75
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospace:Z

    .line 90
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospace:Z

    if-nez v0, :cond_2

    .line 91
    iput-boolean v1, p0, Lcom/nuance/swype/input/AutospaceHandler;->suppressSingleAutospace:Z

    .line 93
    :cond_2
    return-void

    .line 78
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldAutoSpaceInUrlField()Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    iput-boolean v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospace:Z

    goto :goto_0

    .line 87
    :cond_4
    iput-boolean v2, p0, Lcom/nuance/swype/input/AutospaceHandler;->webSearchUrlBoxAutoSpace:Z

    goto :goto_0
.end method

.method public setEnabled(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "disabledLang"    # Z

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospace:Z

    .line 102
    iput-boolean p2, p0, Lcom/nuance/swype/input/AutospaceHandler;->noAutospaceLanguage:Z

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAutoSpace()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->autoSpaceEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 309
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v2, :cond_1

    .line 310
    const v4, 0xffff

    invoke-virtual {v2, v4, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/nuance/swype/input/AutospaceHandler;->webSearchUrlBoxAutoSpace:Z

    if-eqz v4, :cond_1

    .line 313
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 314
    .local v1, "cursorStart":I
    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutoSpace(Ljava/lang/CharSequence;I)Z

    move-result v3

    .line 324
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v1    # "cursorStart":I
    .end local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_1
    :goto_0
    return v3

    .line 320
    .restart local v0    # "cs":Ljava/lang/CharSequence;
    .restart local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/AutospaceHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldAutoSpaceOnTextExtractFailure()Z

    move-result v3

    goto :goto_0
.end method

.method public shouldAutoSpace(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    iget-boolean v3, p0, Lcom/nuance/swype/input/AutospaceHandler;->forceSingleAutospace:Z

    if-eqz v3, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AutospaceHandler;->autoSpaceEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    if-lez p2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p2, v3, :cond_6

    .line 336
    invoke-static {p1}, Lcom/nuance/swype/util/CharacterUtilities;->isEmoji(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 337
    goto :goto_0

    .line 339
    :cond_2
    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 340
    .local v0, "c":C
    iget-object v4, p0, Lcom/nuance/swype/input/AutospaceHandler;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    const/16 v3, 0x20

    if-ge v0, v3, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/16 v3, 0x7f

    if-ne v0, v3, :cond_7

    :cond_4
    move v3, v1

    :goto_1
    if-nez v3, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v4, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isEmbeddedPunct(C)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v4, Lcom/nuance/swype/util/CharacterUtilities;->leftPunct:[C

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    if-ltz v3, :cond_8

    move v3, v1

    :goto_2
    if-eqz v3, :cond_9

    :cond_5
    move v3, v1

    :goto_3
    if-eqz v3, :cond_0

    .end local v0    # "c":C
    :cond_6
    move v1, v2

    .line 344
    goto :goto_0

    .restart local v0    # "c":C
    :cond_7
    move v3, v2

    .line 340
    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    move v3, v2

    goto :goto_3
.end method
