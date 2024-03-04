.class public final Lcom/nuance/swype/util/InputConnectionUtils;
.super Ljava/lang/Object;
.source "InputConnectionUtils.java"


# static fields
.field private static log:Lcom/nuance/swype/util/LogManager$Log;

.field private static terminals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    const-string v0, "InputConnectionUtils"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/InputConnectionUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Character;

    const/4 v2, 0x0

    const/16 v3, 0xbf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xa1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xb7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nuance/swype/util/InputConnectionUtils;->terminals:Ljava/util/Set;

    return-void
.end method

.method public static getCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I
    .locals 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "caps":I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 44
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 51
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    return v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 75
    .local v1, "caps":I
    if-nez v1, :cond_1

    and-int/lit16 v3, p2, 0x4000

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 77
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, p1, -0x2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 78
    const/16 v3, 0x4000

    .line 92
    :goto_0
    return v3

    .line 81
    :cond_0
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 82
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 83
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x27

    if-eq v0, v3, :cond_2

    const/16 v3, 0x22

    if-eq v0, v3, :cond_2

    .line 84
    sget-object v3, Lcom/nuance/swype/util/InputConnectionUtils;->terminals:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const/16 v1, 0x4000

    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_1
    move v3, v1

    .line 92
    goto :goto_0

    .line 81
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static getComposing(Landroid/view/inputmethod/ExtractedText;)[I
    .locals 13
    .param p0, "eText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v12, 0x0

    .line 193
    const/4 v4, 0x0

    .line 195
    .local v4, "range":[I
    if-eqz p0, :cond_0

    iget-object v10, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 196
    iget-object v8, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 197
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    instance-of v10, v8, Landroid/text/Spanned;

    if-eqz v10, :cond_0

    move-object v9, v8

    .line 198
    check-cast v9, Landroid/text/Spanned;

    .line 199
    .local v9, "textSpanned":Landroid/text/Spanned;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v11, Ljava/lang/Object;

    invoke-interface {v9, v12, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 200
    .local v6, "spans":[Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 201
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v6

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 202
    .local v5, "span":Ljava/lang/Object;
    invoke-interface {v9, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_1

    .line 206
    invoke-interface {v9, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    iget v11, p0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v7, v10, v11

    .line 207
    .local v7, "start":I
    invoke-interface {v9, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    iget v11, p0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v1, v10, v11

    .line 208
    .local v1, "end":I
    const/4 v10, 0x2

    new-array v4, v10, [I

    .end local v4    # "range":[I
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v4, v12

    const/4 v10, 0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v4, v10

    .line 220
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "end":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "spans":[Ljava/lang/Object;
    .end local v7    # "start":I
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "textSpanned":Landroid/text/Spanned;
    .restart local v4    # "range":[I
    :cond_0
    return-object v4

    .line 201
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "span":Ljava/lang/Object;
    .restart local v6    # "spans":[Ljava/lang/Object;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    .restart local v9    # "textSpanned":Landroid/text/Spanned;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getComposing(Landroid/view/inputmethod/InputConnection;)[I
    .locals 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v4, 0x1

    .line 154
    if-eqz p0, :cond_1

    .line 155
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 156
    .local v2, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v2, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 157
    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 158
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v1

    .line 162
    .local v1, "range":[I
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    const/16 v3, 0x40

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 165
    invoke-static {v3}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Ljava/lang/CharSequence;)[I

    move-result-object v1

    .line 169
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v1    # "range":[I
    .end local v2    # "request":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getComposing(Ljava/lang/CharSequence;)[I
    .locals 10
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x0

    .line 173
    const/4 v3, 0x0

    .line 175
    .local v3, "range":[I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v6, p0

    .line 176
    check-cast v6, Landroid/text/Spanned;

    .line 177
    .local v6, "textSpanned":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 178
    .local v5, "spans":[Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 179
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v5

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 180
    .local v4, "span":Ljava/lang/Object;
    invoke-interface {v6, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_0

    .line 181
    const/4 v7, 0x2

    new-array v3, v7, [I

    .end local v3    # "range":[I
    invoke-interface {v6, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aput v7, v3, v9

    const/4 v7, 0x1

    invoke-interface {v6, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    aput v8, v3, v7

    .line 179
    .restart local v3    # "range":[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "span":Ljava/lang/Object;
    .end local v5    # "spans":[Ljava/lang/Object;
    .end local v6    # "textSpanned":Landroid/text/Spanned;
    :cond_1
    return-object v3
.end method

.method public static getSelection(Landroid/view/inputmethod/ExtractedText;)[I
    .locals 6
    .param p0, "extractedText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 306
    if-eqz p0, :cond_2

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v1, :cond_2

    .line 308
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    iput v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 309
    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 310
    new-array v1, v3, [I

    iget v3, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    aput v3, v1, v2

    iget v2, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    aput v2, v1, v5

    .line 335
    :goto_1
    return-object v1

    :cond_1
    move v1, v2

    .line 308
    goto :goto_0

    .line 315
    :cond_2
    if-eqz p0, :cond_3

    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ltz v1, :cond_3

    .line 320
    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 321
    .local v0, "textLength":I
    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gt v1, v0, :cond_3

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gt v1, v0, :cond_3

    .line 328
    new-array v1, v3, [I

    iget v3, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v4, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v1, v2

    iget v2, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v5

    goto :goto_1

    .line 335
    .end local v0    # "textLength":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getWordBeforeCursor$498a830e(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/util/CharacterUtilities;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "charUtil"    # Lcom/nuance/swype/util/CharacterUtilities;

    .prologue
    const/4 v4, 0x0

    .line 346
    const-string v2, ""

    .line 347
    .local v2, "wordBeforeCursor":Ljava/lang/CharSequence;
    if-eqz p0, :cond_1

    .line 348
    const/16 v3, 0x41

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 349
    .local v1, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 350
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 351
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    if-lez v3, :cond_1

    .line 356
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 360
    .end local v0    # "index":I
    .end local v1    # "seqBeforeCursor":Ljava/lang/CharSequence;
    :cond_1
    return-object v2
.end method

.method public static hasSelection(Landroid/view/inputmethod/InputConnection;)Z
    .locals 4
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, 0x0

    .line 109
    if-eqz p0, :cond_0

    .line 110
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 111
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 113
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    return v1
.end method

.method public static isComposingTextSelected(Landroid/view/inputmethod/InputConnection;)Z
    .locals 8
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v4

    .line 123
    :cond_1
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 124
    .local v2, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v5, v2, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 125
    invoke-interface {p0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 128
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v3

    .line 129
    .local v3, "selection":[I
    if-eqz v3, :cond_0

    aget v6, v3, v4

    aget v7, v3, v5

    if-eq v6, v7, :cond_0

    .line 134
    invoke-static {v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v0

    .line 135
    .local v0, "composing":[I
    if-eqz v0, :cond_0

    aget v6, v0, v4

    aget v7, v0, v5

    if-eq v6, v7, :cond_0

    .line 140
    aget v6, v3, v4

    aget v7, v0, v4

    if-ne v6, v7, :cond_0

    aget v6, v3, v5

    aget v7, v0, v5

    if-ne v6, v7, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public static isWordChar(Lcom/nuance/swype/util/CharacterUtilities;C)Z
    .locals 1
    .param p0, "charUtils"    # Lcom/nuance/swype/util/CharacterUtilities;
    .param p1, "ch"    # C

    .prologue
    .line 364
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordSeparator(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static selectAll(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V
    .locals 6
    .param p0, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .prologue
    const v5, 0x102001f

    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 279
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    .line 280
    const/4 v0, 0x2

    .line 281
    .local v0, "reTryNum":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    move v1, v0

    .line 282
    .end local v0    # "reTryNum":I
    .local v1, "reTryNum":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "reTryNum":I
    .restart local v0    # "reTryNum":I
    if-lez v1, :cond_1

    .line 283
    invoke-static {p0, v4}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 284
    .local v2, "selectedStr":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    :cond_0
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    move v1, v0

    .line 289
    .end local v0    # "reTryNum":I
    .restart local v1    # "reTryNum":I
    goto :goto_0

    .line 290
    .end local v1    # "reTryNum":I
    .end local v2    # "selectedStr":Ljava/lang/CharSequence;
    .restart local v0    # "reTryNum":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 292
    return-void
.end method

.method public static setComposingRegionBeforeCursor(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/util/CharacterUtilities;Ljava/lang/String;IZ)I
    .locals 8
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "charUtils"    # Lcom/nuance/swype/util/CharacterUtilities;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "skipNonWordCharMax"    # I
    .param p4, "includeSkippedNonWordChars"    # Z

    .prologue
    const/4 v7, 0x1

    .line 387
    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    .line 388
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 389
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_5

    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    .line 390
    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .local v2, "end":I
    move v4, p3

    .line 391
    .end local p3    # "skipNonWordCharMax":I
    .local v4, "skipNonWordCharMax":I
    :goto_0
    add-int/lit8 p3, v4, -0x1

    .end local v4    # "skipNonWordCharMax":I
    .restart local p3    # "skipNonWordCharMax":I
    if-lez v4, :cond_0

    .line 393
    if-lez v2, :cond_0

    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {p1, v5}, Lcom/nuance/swype/util/InputConnectionUtils;->isWordChar(Lcom/nuance/swype/util/CharacterUtilities;C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 394
    add-int/lit8 v2, v2, -0x1

    move v4, p3

    .end local p3    # "skipNonWordCharMax":I
    .restart local v4    # "skipNonWordCharMax":I
    goto :goto_0

    .line 400
    .end local v4    # "skipNonWordCharMax":I
    .restart local p3    # "skipNonWordCharMax":I
    :cond_0
    if-lez v2, :cond_4

    .line 401
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v0, v2, v5

    .line 402
    .local v0, "begin":I
    if-ltz v0, :cond_4

    .line 403
    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 404
    .local v3, "prev":Ljava/lang/CharSequence;
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 405
    if-eqz p4, :cond_1

    .line 407
    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 409
    :cond_1
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v5, v0

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v6, v2

    invoke-static {p0, v5, v6}, Lcom/nuance/android/compat/InputConnectionCompat;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 412
    sget-object v5, Lcom/nuance/swype/util/InputConnectionUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "setComposingRegionBeforeCursor(): setComposingRegion failed (alternate approach)"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 413
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 414
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v5, v0

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v6, v2

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 415
    const-string v5, ""

    invoke-interface {p0, v5, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 416
    invoke-interface {p0, p2, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 417
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 419
    :cond_2
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v5, v6

    .line 431
    .end local v0    # "begin":I
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "end":I
    .end local v3    # "prev":Ljava/lang/CharSequence;
    :goto_1
    return v5

    .line 421
    .restart local v0    # "begin":I
    .restart local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .restart local v2    # "end":I
    .restart local v3    # "prev":Ljava/lang/CharSequence;
    :cond_3
    sget-object v5, Lcom/nuance/swype/util/InputConnectionUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setComposingRegionBeforeCursor(): no match! prev: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; text: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 431
    .end local v0    # "begin":I
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "end":I
    .end local v3    # "prev":Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    const/4 v5, -0x1

    goto :goto_1

    .line 427
    .restart local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    :cond_5
    sget-object v5, Lcom/nuance/swype/util/InputConnectionUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "setComposingRegionBeforeCursor(): getExtractedText failed"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 248
    return-void
.end method

.method public static setSelection(Landroid/view/inputmethod/InputConnection;II)V
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 260
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 261
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 265
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 266
    return-void
.end method
