.class public final Lcom/nuance/swype/util/WordDecorator;
.super Ljava/lang/Object;
.source "WordDecorator.java"


# instance fields
.field private final inputView:Lcom/nuance/swype/input/InputView;

.field private underlineColor:I

.field private underlineThickness:F


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/InputView;)V
    .locals 2
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nuance/swype/util/WordDecorator;->inputView:Lcom/nuance/swype/input/InputView;

    .line 45
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1049
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1050
    sget v1, Lcom/nuance/swype/input/R$attr;->unrecognizedWordUnderlineHighlightColor:I

    .line 1051
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/util/WordDecorator;->underlineColor:I

    .line 1052
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
    .line 198
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "text":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    .line 200
    .local v1, "bi":Ljava/text/BreakIterator;
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "spanned":Landroid/text/Spanned;
    sget-object v8, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    if-eqz v8, :cond_0

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v8, v8, Landroid/text/Spanned;

    if-eqz v8, :cond_0

    .line 204
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .end local v3    # "spanned":Landroid/text/Spanned;
    check-cast v3, Landroid/text/Spanned;

    .line 208
    .restart local v3    # "spanned":Landroid/text/Spanned;
    :cond_0
    invoke-virtual {v1}, Ljava/text/BreakIterator;->first()I

    move-result v4

    .line 209
    .local v4, "start":I
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    .line 210
    .local v2, "end":I
    :goto_0
    const/4 v8, -0x1

    if-eq v2, v8, :cond_7

    .line 211
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "word":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    if-nez v3, :cond_2

    .line 216
    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v8, v4

    move-object/from16 v0, p2

    iget v9, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v9, v2

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/nuance/swype/util/WordDecorator;->replace(Landroid/view/inputmethod/InputConnection;IILjava/lang/CharSequence;)V

    .line 225
    :cond_1
    :goto_1
    move v4, v2

    .line 226
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    .line 227
    goto :goto_0

    .line 219
    :cond_2
    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v10, v8, v4

    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v11, v8, v2

    .line 2175
    sget-object v8, Lcom/nuance/android/compat/SuggestionSpanCompat;->CLASS_SuggestionSpan:Ljava/lang/Class;

    invoke-interface {v3, v10, v11, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    .line 2176
    if-eqz v12, :cond_6

    .line 2177
    const/4 v9, 0x0

    .line 2179
    array-length v13, v12

    const/4 v8, 0x0

    move/from16 v16, v8

    move-object v8, v9

    move/from16 v9, v16

    :goto_2
    if-ge v9, v13, :cond_5

    aget-object v14, v12, v9

    .line 2180
    invoke-static {v14}, Lcom/nuance/android/compat/SuggestionSpanCompat;->isAutoCorrectionSpan(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2185
    if-nez v8, :cond_3

    .line 2186
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-interface {v3, v10, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2189
    :cond_3
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 2179
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move-object v5, v8

    .line 220
    .local v5, "stripped":Ljava/lang/CharSequence;
    :goto_3
    if-eqz v5, :cond_1

    .line 221
    move-object/from16 v0, p2

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v8, v4

    move-object/from16 v0, p2

    iget v9, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v9, v2

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v5}, Lcom/nuance/swype/util/WordDecorator;->replace(Landroid/view/inputmethod/InputConnection;IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 2194
    .end local v5    # "stripped":Ljava/lang/CharSequence;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 228
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
    .line 162
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 163
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 164
    const/4 v0, 0x1

    invoke-interface {p0, p3, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 165
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 166
    return-void
.end method


# virtual methods
.method public final decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1066
    .local v0, "string":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/nuance/swype/util/WordDecorator;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/util/WordDecorator;->underlineColor:I

    iget v3, p0, Lcom/nuance/swype/util/WordDecorator;->underlineThickness:F

    float-to-int v3, v3

    .line 1070
    invoke-static {v1, v2, v3}, Lcom/nuance/android/compat/SuggestionSpanCompat;->createSpan(Landroid/content/Context;II)Landroid/text/ParcelableSpan;

    move-result-object v1

    .line 1071
    if-nez v1, :cond_0

    .line 1073
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2056
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 111
    return-object v0
.end method
