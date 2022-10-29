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
    .registers 3

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
    .registers 10

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-ltz v3, :cond_1d

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    move v0, v1

    goto :goto_1c
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1a

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    move v0, v1

    goto :goto_19
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_2c

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

    if-eq v3, v4, :cond_29

    sub-int v0, v1, v0

    :goto_28
    return v0

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2c
    sub-int v0, v1, v2

    goto :goto_28
.end method

.method private static a(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getTokenType()Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    if-eq v0, v1, :cond_11

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getTokenType()Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    if-ne v0, v1, :cond_42

    :cond_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_44

    sget-object v8, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    :goto_16
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

    :cond_42
    move v0, v9

    goto :goto_12

    :cond_44
    sget-object v8, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->VOICE_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    goto :goto_16
.end method

.method private a(I)Ljava/util/Vector;
    .registers 7

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez p1, :cond_34

    add-int/lit8 v0, p1, -0x1

    :goto_11
    if-ge p1, v1, :cond_15

    add-int/lit8 p1, p1, 0x1

    :cond_15
    invoke-direct {p0, v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isOriginalData()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_34
    move v0, p1

    goto :goto_11

    :cond_36
    return-object v2
.end method

.method private a(II)Ljava/util/Vector;
    .registers 8

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isOriginalData()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_24
    return-object v2
.end method

.method private a(ILcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq p1, v0, :cond_16

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(I)V

    :cond_16
    iget-object v0, p2, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_2e

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    iget-object v3, p2, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_2e
    if-lez p1, :cond_7c

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v4

    if-eqz v4, :cond_9a

    add-int/lit8 v4, v0, -0x1

    if-ltz v4, :cond_98

    invoke-direct {p0, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    :goto_45
    invoke-direct {p2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceAfterDirective()Z

    move-result v6

    if-nez v6, :cond_55

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceBeforeDirective()Z

    move-result v6

    if-eqz v6, :cond_7c

    :cond_55
    invoke-static {v3, v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    if-nez v3, :cond_5c

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_63
    if-ltz v4, :cond_75

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_6f
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_5b

    :cond_75
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v4, v1

    goto :goto_6f

    :cond_7c
    if-lez p1, :cond_5b

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_5b

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(I)V

    goto :goto_5b

    :cond_98
    move-object v3, v2

    goto :goto_45

    :cond_9a
    move v4, v0

    move v0, v1

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_45
.end method

.method private a(Ljava/lang/String;)V
    .registers 12

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

    :goto_10
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_64

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v2, v8, :cond_5c

    if-ge v2, v9, :cond_5c

    if-le v3, v8, :cond_5c

    if-lt v3, v9, :cond_5c

    move v7, v4

    :goto_2e
    if-lt v2, v8, :cond_5e

    if-ge v2, v9, :cond_5e

    if-le v3, v8, :cond_5e

    if-gt v3, v9, :cond_5e

    move v6, v4

    :goto_37
    if-gt v2, v8, :cond_60

    if-le v3, v8, :cond_60

    if-ge v2, v9, :cond_60

    if-gt v3, v9, :cond_60

    move v5, v4

    :goto_40
    if-lt v2, v8, :cond_62

    if-le v3, v8, :cond_62

    if-ge v2, v9, :cond_62

    if-lt v3, v9, :cond_62

    move v2, v4

    :goto_49
    if-nez v7, :cond_51

    if-nez v6, :cond_51

    if-nez v5, :cond_51

    if-eqz v2, :cond_58

    :cond_51
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_58
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_10

    :cond_5c
    move v7, v1

    goto :goto_2e

    :cond_5e
    move v6, v1

    goto :goto_37

    :cond_60
    move v5, v1

    goto :goto_40

    :cond_62
    move v2, v1

    goto :goto_49

    :cond_64
    return-void
.end method

.method private a(Ljava/util/Vector;I)V
    .registers 14

    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    add-int/lit8 v5, p2, -0x1

    :goto_7
    if-ltz v5, :cond_18e

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_5c

    :goto_15
    if-eq v5, v2, :cond_af

    iget-object v9, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_20
    if-ltz v3, :cond_af

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_aa

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    move v4, v5

    move v8, v3

    :goto_42
    if-ltz v4, :cond_9f

    if-ltz v8, :cond_9f

    invoke-virtual {v9, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {p1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v10

    if-eqz v10, :cond_5f

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_42

    :cond_5c
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_5f
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v10

    if-eqz v10, :cond_69

    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_42

    :cond_69
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-nez v8, :cond_98

    move v0, v7

    :goto_7a
    if-eqz v0, :cond_aa

    :goto_7c
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_a1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_a1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_7c

    :cond_98
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v8, -0x1

    move v4, v0

    move v8, v1

    goto :goto_42

    :cond_9f
    move v0, v6

    goto :goto_7a

    :cond_a1
    move v0, v6

    :goto_a2
    if-gt v0, v3, :cond_af

    invoke-virtual {p1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_aa
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_20

    :cond_af
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    move v1, p2

    :goto_b2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_18b

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_112

    move v5, v1

    :goto_c5
    if-eq v5, v2, :cond_16b

    iget-object v8, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    move v3, v6

    :goto_ca
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_16b

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_167

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    move v2, v3

    move v4, v5

    :goto_f0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_14d

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_14d

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v9

    if-eqz v9, :cond_116

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_f0

    :cond_112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b2

    :cond_116
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v9

    if-eqz v9, :cond_120

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f0

    :cond_120
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_146

    move v0, v7

    :goto_137
    if-eqz v0, :cond_167

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_13e
    if-ge v6, v0, :cond_14f

    invoke-virtual {p1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13e

    :cond_146
    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_f0

    :cond_14d
    move v0, v6

    goto :goto_137

    :cond_14f
    add-int/lit8 v0, v3, -0x1

    move v1, v0

    :goto_152
    if-ltz v1, :cond_16b

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_16b

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_152

    :cond_167
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ca

    :cond_16b
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_177

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_176
    return-void

    :cond_177
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17d
    if-ltz v0, :cond_176

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17d

    :cond_18b
    move v5, v2

    goto/16 :goto_c5

    :cond_18e
    move v5, v2

    goto/16 :goto_15
.end method

.method private b(II)Ljava/util/Vector;
    .registers 11

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

    :goto_12
    iget-object v7, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v0, v7, :cond_3c

    if-ne p1, v4, :cond_20

    if-ne p2, v4, :cond_20

    move-object v0, v5

    :goto_1f
    return-object v0

    :cond_20
    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    if-ne v3, v2, :cond_32

    if-ge p1, v4, :cond_32

    move v3, v0

    :cond_32
    if-eq v3, v2, :cond_39

    if-ne v1, v2, :cond_39

    if-gt p2, v4, :cond_39

    move v1, v0

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3c
    if-ne v1, v2, :cond_48

    if-ne p2, v6, :cond_48

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :cond_48
    if-eq v3, v2, :cond_4c

    if-ne v1, v2, :cond_4e

    :cond_4c
    move-object v0, v5

    goto :goto_1f

    :cond_4e
    :goto_4e
    if-gt v3, v1, :cond_5a

    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_5a
    move-object v0, v5

    goto :goto_1f
.end method

.method private b(I)V
    .registers 11

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1c

    const-wide/16 v2, 0x0

    :goto_a
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    const-string/jumbo v1, " "

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDZ)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne p1, v0, :cond_2f

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v2

    goto :goto_a

    :cond_2f
    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v2

    goto :goto_a
.end method

.method private b(Ljava/lang/String;)V
    .registers 23

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

    if-ge v6, v5, :cond_f5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_f5

    if-le v4, v6, :cond_f5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    :goto_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v14, v5, :cond_f5

    if-lt v4, v6, :cond_f6

    const-wide/16 v4, 0x0

    if-eqz v14, :cond_112

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_54
    const-wide/16 v18, 0x0

    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_5e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_92

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x20

    if-eq v7, v9, :cond_78

    const/16 v9, 0x9

    if-eq v7, v9, :cond_78

    const/16 v9, 0xa

    if-eq v7, v9, :cond_78

    const/16 v9, 0xd

    if-ne v7, v9, :cond_80

    :cond_78
    const/4 v7, 0x1

    :goto_79
    if-eqz v7, :cond_82

    if-eqz v5, :cond_84

    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_80
    const/4 v7, 0x0

    goto :goto_79

    :cond_82
    if-eqz v5, :cond_7d

    :cond_84
    if-le v4, v6, :cond_10f

    invoke-virtual {v8, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v5, v7

    move v6, v4

    goto :goto_7d

    :cond_92
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v8, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-wide/from16 v6, v16

    move v15, v4

    :goto_a3
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v15, v4, :cond_df

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

    if-nez v5, :cond_10b

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    const-wide/16 v6, 0x1

    add-long v6, v6, v18

    invoke-virtual {v4, v8, v9}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setEndTime(J)V

    :goto_cf
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    add-int v10, v14, v15

    invoke-virtual {v5, v4, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v4, v15, 0x1

    move-wide/from16 v18, v6

    move v15, v4

    move-wide v6, v8

    goto :goto_a3

    :cond_df
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

    :cond_f5
    return-void

    :cond_f6
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

    goto/16 :goto_34

    :cond_10b
    move-wide v8, v6

    move-wide/from16 v6, v18

    goto :goto_cf

    :cond_10f
    move v5, v7

    goto/16 :goto_7d

    :cond_112
    move-wide/from16 v16, v4

    goto/16 :goto_54
.end method

.method private c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    return-object v0
.end method

.method private c(JJ)Ljava/util/Vector;
    .registers 14

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v6

    cmp-long v8, v4, p3

    if-gez v8, :cond_29

    cmp-long v6, v6, p1

    if-lez v6, :cond_29

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_29
    cmp-long v3, v4, p3

    if-lez v3, :cond_26

    :cond_2d
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_42

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_42
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5d

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_5d
    return-object v2
.end method

.method private f()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v2

    if-eqz v2, :cond_46

    add-int/lit8 v2, v1, 0x1

    :goto_1a
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_45

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1a

    :cond_45
    move v1, v2

    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4a
    return-void
.end method

.method private g()V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x0

    move-object v1, v2

    :goto_d
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2d
    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v4

    if-eqz v4, :cond_35

    move-object v1, v2

    goto :goto_2a

    :cond_35
    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceBeforeDirective()Z

    move-result v4

    if-eqz v4, :cond_3d

    move-object v1, v3

    goto :goto_2a

    :cond_3d
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceAfterDirective()Z

    move-result v4

    if-eqz v4, :cond_47

    move-object v1, v3

    goto :goto_2a

    :cond_47
    if-nez v1, :cond_4b

    move-object v1, v3

    goto :goto_2a

    :cond_4b
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

    goto :goto_2a
.end method

.method private h()V
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_25

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v2, :cond_21

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_21
    const/4 v2, 0x1

    goto :goto_1e

    :cond_23
    move v2, v1

    goto :goto_1e

    :cond_25
    return-void
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
    .registers 5

    new-instance v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-direct {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-wide v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    iput-wide v2, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    iget-object v2, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->copy()Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    return-object v1
.end method

.method final a(JI)V
    .registers 9

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p3, v0, :cond_1f

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

    :cond_1f
    return-void
.end method

.method final a(JJ)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1f

    add-long/2addr v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setEndTime(J)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p3, p4, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    :cond_1e
    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    return-void
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;JJJ)V
    .registers 16

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-object v2, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    if-ne v0, v2, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Insertion NOT supported on the same DictationResult instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    cmp-long v0, p2, v6

    if-ltz v0, :cond_1d

    cmp-long v0, p4, v6

    if-gez v0, :cond_26

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timings cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    cmp-long v0, p2, p4

    if-lez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The timings are corrupted, the timingEnd is greater than the timingBegin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_42

    if-eqz p1, :cond_41

    iget-object v0, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    :cond_41
    :goto_41
    return-void

    :cond_42
    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->f()V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(JJ)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    :goto_50
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_62

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_62
    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->h()V

    invoke-direct {p0, p2, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(J)I

    move-result v0

    if-eq v0, v5, :cond_6e

    invoke-virtual {p0, p6, p7, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    :cond_6e
    invoke-direct {p0, p2, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(J)I

    move-result v0

    if-ne v0, v5, :cond_7a

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :cond_7a
    if-eqz p1, :cond_8a

    iget-object v2, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_8a

    invoke-virtual {p1, p2, p3, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(ILcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    :cond_8a
    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->f()V

    goto :goto_41
.end method

.method public appendTokenToSentence(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceAfterDirective()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->hasNoSpaceBeforeDirective()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(I)V

    :cond_25
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method final b(JJ)Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(JJ)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;-><init>(Ljava/util/Vector;)V

    return-object v1
.end method

.method final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->d:Z

    return v0
.end method

.method final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->d:Z

    return-void
.end method

.method public chooseAlternative(Lcom/nuance/nmsp/client/util/dictationresult/Alternative;)V
    .registers 7

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    check-cast p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->getParentTokens()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Received an alternative with no words. This cannot happen. Please file a bug along with this error message and the binary you provided to the DictationResultFactory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
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

    if-eq v1, v4, :cond_3a

    if-ne v0, v4, :cond_43

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The provided alternative was not generated from this sentence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    :goto_43
    if-lt v0, v1, :cond_4d

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    :cond_4d
    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->getTokens()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/util/Vector;I)V

    return-void
.end method

.method public cloneSentence()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Sentence being cloned is not part of its parent DictationResult.Please set the correct parent DictationResult for this sentence before cloning. If this sentence is not supposed to have a parent DictationResult set parent DictationResult to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    goto :goto_8
.end method

.method final d()V
    .registers 10

    const/4 v8, -0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "\n"

    :cond_e
    move v1, v2

    :goto_f
    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_70

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v3, v2

    :goto_25
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v3, v6, :cond_46

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_46

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/16 v6, 0xa

    invoke-virtual {v5, v3, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_46
    move v3, v2

    :goto_47
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v3, v6, :cond_66

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_66

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_47

    :cond_66
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setWord(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_70
    return-void
.end method

.method final e()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide v0, v2

    :goto_b
    return-wide v0

    :cond_c
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/dictationresult/Token;

    if-nez v0, :cond_18

    move-wide v0, v2

    goto :goto_b

    :cond_18
    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Token;->getEndTime()J

    move-result-wide v0

    goto :goto_b
.end method

.method public getAlternatives(II)Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz p1, :cond_d

    if-le p2, v0, :cond_13

    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_13
    if-ge p2, p1, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cursor position end is less than begin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    if-ne p1, p2, :cond_35

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(I)Ljava/util/Vector;

    move-result-object v0

    :goto_24
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;-><init>(IILjava/util/Vector;)V

    :goto_34
    return-object v0

    :cond_35
    invoke-direct {p0, p1, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(II)Ljava/util/Vector;

    move-result-object v0

    goto :goto_24

    :cond_3a
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v2, p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v5

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_43
    iget-object v6, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_69

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_56

    move v3, v4

    :cond_56
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_66

    move v2, v4

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_69
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;

    invoke-direct {v0, v3, v2, v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;-><init>(IILjava/util/Vector;)V

    goto :goto_34
.end method

.method public getConfidenceScore()D
    .registers 3

    iget-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    return-wide v0
.end method

.method public setConfidenceScore(D)V
    .registers 4

    iput-wide p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    return-void
.end method

.method public size()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return v0

    :cond_a
    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_9

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, ""

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_12
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public tokenAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v3, v0

    :goto_3
    if-eq v0, p1, :cond_1f

    add-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v2, v3, :cond_11

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    invoke-direct {p0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_6d

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_3

    :cond_1f
    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_6b

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_6b

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_47
    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setLeadingSpaces(I)V

    if-eqz v3, :cond_66

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_66

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_66
    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setTrailingSpaces(I)V

    move-object v0, v2

    goto :goto_10

    :cond_6b
    move v0, v1

    goto :goto_47

    :cond_6d
    move v3, v2

    goto :goto_3
.end method

.method public tokenAtCursorPosition(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_b

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_a

    move v2, v1

    :cond_16
    :goto_16
    if-gt v2, p1, :cond_a

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/dictationresult/Token;

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_16
.end method

.method public updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;I)V
    .registers 3

    invoke-virtual {p0, p1, p2, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;II)V

    return-void
.end method

.method public updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;II)V
    .registers 16

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The new sentence in updateSentence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz p2, :cond_1e

    if-gt p2, v2, :cond_1e

    if-ltz p3, :cond_1e

    if-le p3, v2, :cond_27

    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "The provided cursor position is not within the sentence boundaries."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    if-le p2, p3, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The provided begin cursor selection is greater than the end cursor selection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
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

    if-nez v0, :cond_4f

    :goto_4e
    return-void

    :cond_4f
    invoke-direct {p0, p2, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_d3

    if-nez p2, :cond_9a

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_89

    move-wide v2, v4

    :goto_64
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

    goto :goto_4e

    :cond_89
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_64

    :cond_9a
    if-ne p2, v2, :cond_ae

    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(II)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_64

    :cond_ae
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

    if-ne v0, v2, :cond_cd

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v4

    goto :goto_64

    :cond_cd
    invoke-virtual {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_64

    :cond_d3
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

    goto/16 :goto_64
.end method

.method public updateSentence(Ljava/lang/String;I)V
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The new sentence in updateSentence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-ltz p2, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "The provided cursor position is not within the new sentence boundaries."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->g()V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->f()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b:Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->d(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    :cond_45
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c:D

    goto :goto_26
.end method
