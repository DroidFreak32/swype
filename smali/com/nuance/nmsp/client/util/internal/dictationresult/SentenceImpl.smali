.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/dictationresult/Sentence;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

.field private c:D

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->d:Z

    return-void
.end method

.method private a(J)I
    .locals 7

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    sub-int v0, v1, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v1, v2

    goto :goto_1
.end method

.method private static a(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getTokenType()Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getTokenType()Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v8, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    :goto_1
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct/range {v0 .. v9}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDLcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;Z)V

    return-object v0

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->VOICE_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    goto :goto_1
.end method

.method private a(I)Ljava/util/Vector;
    .locals 5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ge p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isOriginalData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private a(II)Ljava/util/Vector;
    .locals 5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isOriginalData()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private a(ILcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(I)V

    :cond_0
    iget-object v0, p2, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    iget-object v3, p2, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_7

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v0, -0x1

    if-ltz v4, :cond_8

    invoke-direct {p0, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    :goto_1
    invoke-direct {p2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceAfterDirective()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceBeforeDirective()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    invoke-static {v3, v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_5
    if-ltz v4, :cond_6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v4, v1

    goto :goto_3

    :cond_7
    if-lez p1, :cond_3

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(I)V

    goto :goto_2

    :cond_8
    move-object v3, v2

    goto :goto_1

    :cond_9
    move v4, v0

    move v0, v1

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {p1, v0, v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v2, v8, :cond_2

    if-ge v2, v9, :cond_2

    if-le v3, v8, :cond_2

    if-lt v3, v9, :cond_2

    move v7, v4

    :goto_1
    if-lt v2, v8, :cond_3

    if-ge v2, v9, :cond_3

    if-le v3, v8, :cond_3

    if-gt v3, v9, :cond_3

    move v6, v4

    :goto_2
    if-gt v2, v8, :cond_4

    if-le v3, v8, :cond_4

    if-ge v2, v9, :cond_4

    if-gt v3, v9, :cond_4

    move v5, v4

    :goto_3
    if-lt v2, v8, :cond_5

    if-le v3, v8, :cond_5

    if-ge v2, v9, :cond_5

    if-lt v3, v9, :cond_5

    move v2, v4

    :goto_4
    if-nez v7, :cond_0

    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    move v7, v1

    goto :goto_1

    :cond_3
    move v6, v1

    goto :goto_2

    :cond_4
    move v5, v1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    return-void
.end method

.method private a(Ljava/util/Vector;I)V
    .locals 11

    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    add-int/lit8 v5, p2, -0x1

    :goto_0
    if-ltz v5, :cond_13

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    if-eq v5, v2, :cond_7

    iget-object v9, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_7

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v4, v5

    move v8, v3

    :goto_3
    if-ltz v4, :cond_4

    if-ltz v8, :cond_4

    invoke-virtual {v9, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {p1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v8, :cond_3

    move v0, v7

    :goto_4
    if-eqz v0, :cond_6

    :goto_5
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v8, -0x1

    move v4, v0

    move v8, v1

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_4

    :cond_5
    move v0, v6

    :goto_6
    if-gt v0, v3, :cond_7

    invoke-virtual {p1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_2

    :cond_7
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    move v1, p2

    :goto_7
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_8

    move v5, v1

    :goto_8
    if-eq v5, v2, :cond_f

    iget-object v8, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    move v3, v6

    :goto_9
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v2, v3

    move v4, v5

    :goto_a
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_b

    move v0, v7

    :goto_b
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_c
    if-ge v6, v0, :cond_d

    invoke-virtual {p1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_b
    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_a

    :cond_c
    move v0, v6

    goto :goto_b

    :cond_d
    add-int/lit8 v0, v3, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_f

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_f
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_10
    return-void

    :cond_11
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_10

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_12
    move v5, v2

    goto/16 :goto_8

    :cond_13
    move v5, v2

    goto/16 :goto_1
.end method

.method private b(II)Ljava/util/Vector;
    .locals 8

    const/4 v0, 0x0

    const/4 v2, -0x1

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v2

    move v3, v2

    move v4, v0

    :goto_0
    iget-object v7, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    if-ne p1, v4, :cond_0

    if-ne p2, v4, :cond_0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    if-ne v3, v2, :cond_1

    if-ge p1, v4, :cond_1

    move v3, v0

    :cond_1
    if-eq v3, v2, :cond_2

    if-ne v1, v2, :cond_2

    if-gt p2, v4, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    if-ne p2, v6, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :cond_4
    if-eq v3, v2, :cond_5

    if-ne v1, v2, :cond_6

    :cond_5
    move-object v0, v5

    goto :goto_1

    :cond_6
    :goto_2
    if-gt v3, v1, :cond_7

    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move-object v0, v5

    goto :goto_1
.end method

.method private b(I)V
    .locals 9

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    const-string v1, " "

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDZ)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v4, v5, v4

    sub-int v4, v7, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_7

    if-le v4, v6, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v14, v5, :cond_7

    if-lt v4, v6, :cond_8

    const-wide/16 v4, 0x0

    if-eqz v14, :cond_b

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_1
    const-wide/16 v18, 0x0

    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_5

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x20

    if-eq v7, v9, :cond_0

    const/16 v9, 0x9

    if-eq v7, v9, :cond_0

    const/16 v9, 0xa

    if-eq v7, v9, :cond_0

    const/16 v9, 0xd

    if-ne v7, v9, :cond_2

    :cond_0
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    :cond_1
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_1

    :cond_4
    if-le v4, v6, :cond_a

    invoke-virtual {v8, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v5, v7

    move v6, v4

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v8, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-wide/from16 v6, v16

    move v15, v4

    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v15, v4, :cond_6

    new-instance v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    sget-object v12, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    const/4 v13, 0x0

    move-wide v8, v6

    invoke-direct/range {v4 .. v13}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDLcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;Z)V

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    const-wide/16 v6, 0x1

    add-long v6, v6, v18

    invoke-virtual {v4, v8, v9}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setEndTime(J)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    add-int v10, v14, v15

    invoke-virtual {v5, v4, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v4, v15, 0x1

    move-wide/from16 v18, v6

    move v15, v4

    move-wide v6, v8

    goto :goto_5

    :cond_6
    add-int v4, v14, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    move-object/from16 v5, p0

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    invoke-virtual/range {v4 .. v9}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;JJ)V

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v4, v5

    goto/16 :goto_0

    :cond_9
    move-wide v8, v6

    move-wide/from16 v6, v18

    goto :goto_6

    :cond_a
    move v5, v7

    goto/16 :goto_4

    :cond_b
    move-wide/from16 v16, v4

    goto/16 :goto_1
.end method

.method private c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    return-object v0
.end method

.method private c(JJ)Ljava/util/Vector;
    .locals 9

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v6

    cmp-long v8, v4, p3

    if-gez v8, :cond_1

    cmp-long v6, v6, p1

    if-lez v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmp-long v3, v4, p3

    if-lez v3, :cond_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_4
    return-object v2
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    :goto_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceBeforeDirective()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, v3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceAfterDirective()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v1, v3

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    move-object v1, v3

    goto :goto_1

    :cond_6
    invoke-static {v1, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private h()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
    .locals 4

    new-instance v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-direct {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-wide v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    iput-wide v2, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->copy()Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method final a(JI)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-direct {p0, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setStartTime(J)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setEndTime(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(JJ)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    add-long/2addr v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setEndTime(J)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p3, p4, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    return-void
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;JJJ)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-object v2, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insertion NOT supported on the same DictationResult instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p2, v6

    if-ltz v0, :cond_1

    cmp-long v0, p4, v6

    if-gez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timings cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v0, p2, p4

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The timings are corrupted, the timingEnd is greater than the timingBegin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->f()V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(JJ)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->h()V

    invoke-direct {p0, p2, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(J)I

    move-result v0

    if-eq v0, v5, :cond_7

    invoke-virtual {p0, p6, p7, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(J)I

    move-result v0

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :cond_8
    if-eqz p1, :cond_9

    iget-object v2, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, p2, p3, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(ILcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    :cond_9
    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->f()V

    goto :goto_0
.end method

.method public appendTokenToSentence(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceAfterDirective()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceBeforeDirective()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method final b(JJ)Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(JJ)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;-><init>(Ljava/util/Vector;)V

    return-object v1
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->d:Z

    return v0
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->d:Z

    return-void
.end method

.method public chooseAlternative(Lcom/nuance/nmsp/client/util/dictationresult/Alternative;)V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    check-cast p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->getParentTokens()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received an alternative with no words. This cannot happen. Please file a bug along with this error message and the binary you provided to the DictationResultFactory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v1, v4, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided alternative was not generated from this sentence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-lt v0, v1, :cond_3

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->getTokens()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/util/Vector;I)V

    return-void
.end method

.method public cloneSentence()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sentence being cloned is not part of its parent DictationResult.Please set the correct parent DictationResult for this sentence before cloning. If this sentence is not supposed to have a parent DictationResult set parent DictationResult to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    goto :goto_0
.end method

.method final d()V
    .locals 9

    const/4 v8, -0x1

    const/4 v2, 0x0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v3, v2

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/16 v6, 0xa

    invoke-virtual {v5, v3, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setWord(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method final e()J
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/dictationresult/Token;

    if-nez v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Token;->getEndTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAlternatives(II)Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz p1, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-ge p2, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cursor position end is less than begin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne p1, p2, :cond_3

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(I)Ljava/util/Vector;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;-><init>(IILjava/util/Vector;)V

    :goto_1
    return-object v0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(II)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v2, p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v5

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_2
    iget-object v6, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_6

    move v2, v4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;

    invoke-direct {v0, v3, v2, v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;-><init>(IILjava/util/Vector;)V

    goto :goto_1
.end method

.method public getConfidenceScore()D
    .locals 2

    iget-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    return-wide v0
.end method

.method public setConfidenceScore(D)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    return-void
.end method

.method public size()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public tokenAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v3, v0

    :goto_0
    if-eq v0, p1, :cond_1

    add-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setLeadingSpaces(I)V

    if-eqz v3, :cond_2

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setTrailingSpaces(I)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method public tokenAtCursorPosition(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_0

    move v2, v1

    :cond_2
    :goto_0
    if-gt v2, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/dictationresult/Token;

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;II)V

    return-void
.end method

.method public updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;II)V
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new sentence in updateSentence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    if-ltz p3, :cond_1

    if-le p3, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The provided cursor position is not within the sentence boundaries."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-le p2, p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided begin cursor selection is greater than the end cursor selection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->cloneSentence()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->i()V

    invoke-direct {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->i()V

    invoke-direct {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->i()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_9

    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    move-wide v2, v4

    :goto_1
    sub-long v6, v4, v2

    iget-object v0, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v8

    iget-object v0, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sub-long v6, v8, v6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-object v1, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;JJJ)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_1

    :cond_6
    if-ne p2, v2, :cond_7

    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_1

    :cond_7
    add-int/lit8 v0, p2, -0x1

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    if-ne v0, v2, :cond_8

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    move-wide v2, v6

    goto/16 :goto_1
.end method

.method public updateSentence(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new sentence in updateSentence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The provided cursor position is not within the new sentence boundaries."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->g()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->f()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->d(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    :cond_4
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    goto :goto_0
.end method
