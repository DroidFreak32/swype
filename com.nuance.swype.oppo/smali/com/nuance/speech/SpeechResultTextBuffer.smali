.class public abstract Lcom/nuance/speech/SpeechResultTextBuffer;
.super Ljava/lang/Object;
.source "SpeechResultTextBuffer.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field protected mCursorBegin:I

.field protected mCursorEnd:I

.field protected mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

.field protected mTextBuffer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "SpeechResultTextBuffer"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/SpeechResultTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private static isLikelyDomain(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "domain":Ljava/lang/String;
    const-string v1, ".com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".gov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".edu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    const/4 v1, 0x1

    .line 164
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static onResultCheckLeadingSpace(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 143
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-static {p1}, Lcom/nuance/speech/SpeechResultTextBuffer;->isLikelyDomain(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    invoke-interface {p0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    .local v0, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 148
    invoke-interface {p0, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 152
    .end local v0    # "seqBeforeCursor":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract chooseCandidate(I)V
.end method

.method public abstract getCandidates()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public getCursorBegin()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorBegin:I

    return v0
.end method

.method public getCursorEnd()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorEnd:I

    return v0
.end method

.method public getHighlightedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorBegin:I

    iget v1, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorEnd:I

    if-ne v0, v1, :cond_1

    .line 105
    :cond_0
    const-string v0, ""

    .line 108
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorBegin:I

    iget v2, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    return-object v0
.end method

.method public getTextBuffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    return-object v0
.end method

.method public isCursorInRange()Z
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorBegin:I

    iget v2, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorEnd:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/speech/SpeechResultTextBuffer;->isCursorInRange(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isCursorInRange(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cursorBegin"    # I
    .param p3, "cursorEnd"    # I

    .prologue
    .line 59
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract isTextDictated()Z
.end method

.method public setFieldInputInfo(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 0
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 52
    return-void
.end method

.method public abstract updateResult(Ljava/lang/Object;Z)Ljava/lang/CharSequence;
.end method

.method public updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "oldSelStart"    # I
    .param p3, "oldSelEnd"    # I
    .param p4, "newSelStart"    # I
    .param p5, "newSelEnd"    # I
    .param p6, "candidatesStart"    # I
    .param p7, "candidatesEnd"    # I

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 123
    .local v0, "text":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/speech/SpeechResultTextBuffer;->getTextBuffer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 125
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateText(Ljava/lang/String;II)V

    .line 129
    :cond_1
    invoke-virtual {p0, p4, p5}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateSentence(II)V

    goto :goto_0
.end method

.method public updateSentence(II)V
    .locals 7
    .param p1, "cursorBegin"    # I
    .param p2, "cursorEnd"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/speech/SpeechResultTextBuffer;->isCursorInRange(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/nuance/speech/SpeechResultTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "updateSentence(): invalid: beg: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "; end: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "; len: "

    iget-object v6, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorBegin:I

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorEnd:I

    goto :goto_0
.end method

.method public updateText(Ljava/lang/String;II)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cursorBegin"    # I
    .param p3, "cursorEnd"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/speech/SpeechResultTextBuffer;->isCursorInRange(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/nuance/speech/SpeechResultTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "updateText(): invalid: beg: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "; end: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "; len: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorBegin:I

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mCursorEnd:I

    .line 77
    iput-object p1, p0, Lcom/nuance/speech/SpeechResultTextBuffer;->mTextBuffer:Ljava/lang/String;

    goto :goto_0
.end method
