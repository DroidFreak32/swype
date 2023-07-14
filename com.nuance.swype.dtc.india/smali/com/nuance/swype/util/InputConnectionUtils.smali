.class public final Lcom/nuance/swype/util/InputConnectionUtils;
.super Ljava/lang/Object;
.source "InputConnectionUtils.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final terminals:Ljava/util/Set;
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
    const-string/jumbo v0, "InputConnectionUtils"

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

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 45
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
    .line 72
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
    invoke-static {v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

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
    .locals 11
    .param p0, "eText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v8, 0x0

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "range":[I
    if-eqz p0, :cond_0

    iget-object v7, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 182
    iget-object v5, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 183
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    instance-of v7, v5, Landroid/text/Spanned;

    if-eqz v7, :cond_0

    move-object v6, v5

    .line 184
    check-cast v6, Landroid/text/Spanned;

    .line 185
    .local v6, "textSpanned":Landroid/text/Spanned;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v9, Ljava/lang/Object;

    invoke-interface {v6, v8, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 186
    .local v3, "spans":[Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 187
    array-length v9, v3

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v2, v3, v7

    .line 188
    .local v2, "span":Ljava/lang/Object;
    invoke-interface {v6, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_1

    .line 192
    invoke-interface {v6, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    iget v9, p0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v4, v7, v9

    .line 193
    .local v4, "start":I
    invoke-interface {v6, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    iget v9, p0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v0, v7, v9

    .line 194
    .local v0, "end":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 195
    .end local v1    # "range":[I
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v1, v8

    const/4 v7, 0x1

    .line 196
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v1, v7

    .line 206
    .end local v0    # "end":I
    .end local v2    # "span":Ljava/lang/Object;
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "textSpanned":Landroid/text/Spanned;
    .restart local v1    # "range":[I
    :cond_0
    return-object v1

    .line 187
    .restart local v2    # "span":Ljava/lang/Object;
    .restart local v3    # "spans":[Ljava/lang/Object;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "textSpanned":Landroid/text/Spanned;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static getComposing(Landroid/view/inputmethod/InputConnection;)[I
    .locals 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v4, 0x1

    .line 140
    if-eqz p0, :cond_1

    .line 141
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 142
    .local v2, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v2, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 143
    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 144
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v1

    .line 148
    .local v1, "range":[I
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    const/16 v3, 0x40

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 151
    invoke-static {v3}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Ljava/lang/CharSequence;)[I

    move-result-object v1

    .line 155
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
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "range":[I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 162
    check-cast v3, Landroid/text/Spanned;

    .line 163
    .local v3, "textSpanned":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v5, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 164
    .local v2, "spans":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 165
    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v2, v4

    .line 166
    .local v1, "span":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_0

    .line 167
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 168
    .end local v0    # "range":[I
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aput v7, v0, v5

    const/4 v7, 0x1

    .line 169
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    aput v8, v0, v7

    .line 165
    .restart local v0    # "range":[I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "span":Ljava/lang/Object;
    .end local v2    # "spans":[Ljava/lang/Object;
    .end local v3    # "textSpanned":Landroid/text/Spanned;
    :cond_1
    return-object v0
.end method

.method public static getSelection(Landroid/view/inputmethod/ExtractedText;)[I
    .locals 6
    .param p0, "extractedText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 269
    if-eqz p0, :cond_2

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v1, :cond_2

    .line 271
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    iput v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 272
    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 273
    new-array v1, v3, [I

    iget v3, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    aput v3, v1, v2

    iget v2, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    aput v2, v1, v5

    .line 298
    :goto_1
    return-object v1

    :cond_1
    move v1, v2

    .line 271
    goto :goto_0

    .line 278
    :cond_2
    if-eqz p0, :cond_3

    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ltz v1, :cond_3

    .line 283
    iget-object v1, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 284
    .local v0, "textLength":I
    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gt v1, v0, :cond_3

    iget v1, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gt v1, v0, :cond_3

    .line 291
    new-array v1, v3, [I

    iget v3, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v4, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 292
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v1, v2

    iget v2, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 293
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v5

    goto :goto_1

    .line 298
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

    .line 309
    const-string/jumbo v2, ""

    .line 310
    .local v2, "wordBeforeCursor":Ljava/lang/CharSequence;
    if-eqz p0, :cond_1

    .line 311
    const/16 v3, 0x41

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 312
    .local v1, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 313
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 314
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    if-lez v3, :cond_1

    .line 319
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 323
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

    .line 96
    if-eqz p0, :cond_0

    .line 97
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 98
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 100
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

    .line 105
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v4

    .line 110
    :cond_1
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 111
    .local v2, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v5, v2, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 112
    invoke-interface {p0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 115
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v3

    .line 116
    .local v3, "selection":[I
    if-eqz v3, :cond_0

    aget v6, v3, v4

    aget v7, v3, v5

    if-eq v6, v7, :cond_0

    .line 121
    invoke-static {v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getComposing(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v0

    .line 122
    .local v0, "composing":[I
    if-eqz v0, :cond_0

    aget v6, v0, v4

    aget v7, v0, v5

    if-eq v6, v7, :cond_0

    .line 127
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
    .line 327
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

    .line 241
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 242
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    .line 243
    const/4 v0, 0x2

    .line 244
    .local v0, "reTryNum":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    move v1, v0

    .line 245
    .end local v0    # "reTryNum":I
    .local v1, "reTryNum":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "reTryNum":I
    .restart local v0    # "reTryNum":I
    if-lez v1, :cond_1

    .line 246
    invoke-static {p0, v4}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 247
    .local v2, "selectedStr":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :cond_0
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    move v1, v0

    .line 252
    .end local v0    # "reTryNum":I
    .restart local v1    # "reTryNum":I
    goto :goto_0

    .line 253
    .end local v1    # "reTryNum":I
    .end local v2    # "selectedStr":Ljava/lang/CharSequence;
    .restart local v0    # "reTryNum":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 255
    return-void
.end method

.method public static setComposingRegionBeforeCursor(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/util/CharacterUtilities;Ljava/lang/CharSequence;IZ)I
    .locals 10
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "charUtils"    # Lcom/nuance/swype/util/CharacterUtilities;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "skipNonWordCharMax"    # I
    .param p4, "includeSkippedNonWordChars"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 350
    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    .line 351
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v5, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 352
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_5

    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    .line 353
    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .local v2, "end":I
    move v4, p3

    .line 354
    .end local p3    # "skipNonWordCharMax":I
    .local v4, "skipNonWordCharMax":I
    :goto_0
    add-int/lit8 p3, v4, -0x1

    .end local v4    # "skipNonWordCharMax":I
    .restart local p3    # "skipNonWordCharMax":I
    if-lez v4, :cond_0

    .line 356
    if-lez v2, :cond_0

    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {p1, v5}, Lcom/nuance/swype/util/InputConnectionUtils;->isWordChar(Lcom/nuance/swype/util/CharacterUtilities;C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    add-int/lit8 v2, v2, -0x1

    move v4, p3

    .end local p3    # "skipNonWordCharMax":I
    .restart local v4    # "skipNonWordCharMax":I
    goto :goto_0

    .line 363
    .end local v4    # "skipNonWordCharMax":I
    .restart local p3    # "skipNonWordCharMax":I
    :cond_0
    if-lez v2, :cond_4

    .line 364
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v0, v2, v5

    .line 365
    .local v0, "begin":I
    if-ltz v0, :cond_4

    .line 366
    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 367
    .local v3, "prev":Ljava/lang/CharSequence;
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 368
    if-eqz p4, :cond_1

    .line 370
    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 372
    :cond_1
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v5, v0

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v6, v2

    invoke-static {p0, v5, v6}, Lcom/nuance/android/compat/InputConnectionCompat;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 375
    sget-object v5, Lcom/nuance/swype/util/InputConnectionUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "setComposingRegionBeforeCursor(): setComposingRegion failed (alternate approach)"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 376
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 377
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v5, v0

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v6, v2

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 378
    const-string/jumbo v5, ""

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 379
    invoke-interface {p0, p2, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 380
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 382
    :cond_2
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v5, v6

    .line 394
    .end local v0    # "begin":I
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "end":I
    .end local v3    # "prev":Ljava/lang/CharSequence;
    :goto_1
    return v5

    .line 384
    .restart local v0    # "begin":I
    .restart local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .restart local v2    # "end":I
    .restart local v3    # "prev":Ljava/lang/CharSequence;
    :cond_3
    sget-object v5, Lcom/nuance/swype/util/InputConnectionUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setComposingRegionBeforeCursor(): no match! prev: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; text: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 394
    .end local v0    # "begin":I
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "end":I
    .end local v3    # "prev":Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    const/4 v5, -0x1

    goto :goto_1

    .line 390
    .restart local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    :cond_5
    sget-object v5, Lcom/nuance/swype/util/InputConnectionUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "setComposingRegionBeforeCursor(): getExtractedText failed"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 211
    return-void
.end method

.method public static setSelection(Landroid/view/inputmethod/InputConnection;II)V
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 223
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 224
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 225
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 228
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 229
    return-void
.end method
