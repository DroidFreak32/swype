.class public final Lcom/nuance/swype/util/WordDecorator;
.super Ljava/lang/Object;
.source "WordDecorator.java"


# instance fields
.field private final inputView:Lcom/nuance/swype/input/InputView;

.field private isImplicitDecorationEnabled:Z

.field public isRemoveDecorationForAllWordsEnabled:Z

.field private underlineColor:I

.field private underlineThickness:F


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/InputView;)V
    .locals 2
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/nuance/swype/util/WordDecorator;->isImplicitDecorationEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/nuance/swype/util/WordDecorator;->isRemoveDecorationForAllWordsEnabled:Z

    .line 44
    iput-object p1, p0, Lcom/nuance/swype/util/WordDecorator;->inputView:Lcom/nuance/swype/input/InputView;

    .line 45
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->unrecognizedWordUnderlineHighlightColor:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/util/WordDecorator;->underlineColor:I

    sget v1, Lcom/nuance/swype/input/R$attr;->unrecognizedWordUnderlineThickness:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/util/WordDecorator;->underlineThickness:F

    .line 46
    return-void
.end method

.method public static removeDecoration(Landroid/content/Context;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/ExtractedText;Ljava/lang/CharSequence;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "eText"    # Landroid/view/inputmethod/ExtractedText;
    .param p3, "what"    # Ljava/lang/CharSequence;

    .prologue
    .line 204
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "text":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    .line 206
    .local v1, "bi":Ljava/text/BreakIterator;
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 208
    const/4 v3, 0x0

    .line 209
    .local v3, "spanned":Landroid/text/Spanned;
    sget-object v8, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    if-eqz v8, :cond_0

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v8, v8, Landroid/text/Spanned;

    if-eqz v8, :cond_0

    .line 210
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .end local v3    # "spanned":Landroid/text/Spanned;
    check-cast v3, Landroid/text/Spanned;

    .line 214
    .restart local v3    # "spanned":Landroid/text/Spanned;
    :cond_0
    invoke-virtual {v1}, Ljava/text/BreakIterator;->first()I

    move-result v4

    .line 215
    .local v4, "start":I
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    .line 216
    .local v2, "end":I
    :goto_0
    const/4 v8, -0x1

    if-eq v2, v8, :cond_7

    .line 217
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "word":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    if-nez v3, :cond_2

    .line 222
    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v8, v4

    move-object/from16 v0, p2

    iget v9, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v9, v2

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/nuance/swype/util/WordDecorator;->replace(Landroid/view/inputmethod/InputConnection;IILjava/lang/CharSequence;)V

    .line 231
    :cond_1
    :goto_1
    move v4, v2

    .line 232
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    .line 233
    goto :goto_0

    .line 225
    :cond_2
    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v11, v8, v4

    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v12, v8, v2

    sget-object v8, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    invoke-interface {v3, v11, v12, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    if-eqz v8, :cond_6

    const/4 v10, 0x0

    array-length v13, v8

    const/4 v9, 0x0

    move/from16 v16, v9

    move-object v9, v10

    move/from16 v10, v16

    :goto_2
    if-ge v10, v13, :cond_5

    aget-object v14, v8, v10

    invoke-static {v14}, Lcom/nuance/android/compat/SuggestionSpanCompat;->isAutoCorrectionSpan(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-nez v9, :cond_3

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-interface {v3, v11, v12}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v9, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object v5, v9

    .line 226
    .local v5, "stripped":Ljava/lang/CharSequence;
    :goto_3
    if-eqz v5, :cond_1

    .line 227
    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v8, v4

    move-object/from16 v0, p2

    iget v9, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v9, v2

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v5}, Lcom/nuance/swype/util/WordDecorator;->replace(Landroid/view/inputmethod/InputConnection;IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 225
    .end local v5    # "stripped":Ljava/lang/CharSequence;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 234
    .end local v7    # "word":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static replace(Landroid/view/inputmethod/InputConnection;IILjava/lang/CharSequence;)V
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "with"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 169
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 170
    const/4 v0, 0x1

    invoke-interface {p0, p3, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 171
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 172
    return-void
.end method


# virtual methods
.method public final decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .local v0, "string":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/nuance/swype/util/WordDecorator;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/util/WordDecorator;->underlineColor:I

    iget v3, p0, Lcom/nuance/swype/util/WordDecorator;->underlineThickness:F

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/nuance/android/compat/SuggestionSpanCompat;->createSpan(Landroid/content/Context;II)Landroid/text/ParcelableSpan;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    return-object v0
.end method

.method public final decorateUnrecognizedWord(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "implicit"    # Z

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/nuance/swype/util/WordDecorator;->isImplicitDecorationEnabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-object p1
.end method
