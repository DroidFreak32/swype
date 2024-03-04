.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/dictationresult/Token;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:D

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJDLcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;Z)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->e:Z

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->f:Z

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->g:Z

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->k:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->b:J

    iput-wide p4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->c:J

    iput-wide p6, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->d:D

    iput-boolean p9, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->e:Z

    iput-object p8, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->k:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_0

    iput-boolean v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->g:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_1

    iput-boolean v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->h:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->f:Z

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x11

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;JJDZ)V
    .locals 10

    sget-object v8, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->VOICE_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDLcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;Z)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public copy()Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
    .locals 9

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->b:J

    iget-wide v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->c:J

    iget-wide v6, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->d:D

    iget-boolean v8, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->e:Z

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDZ)V

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->f:Z

    iput-boolean v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->f:Z

    iget v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->i:I

    iput v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->i:I

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->h:Z

    iput-boolean v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->h:Z

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->g:Z

    iput-boolean v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->g:Z

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->k:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    iput-object v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->k:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    iget v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->j:I

    iput v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->j:I

    return-object v0
.end method

.method public getConfidenceScore()D
    .locals 2

    iget-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->d:D

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->c:J

    return-wide v0
.end method

.method public getLeadingSpaces()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->i:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->b:J

    return-wide v0
.end method

.method public getTokenType()Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->k:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    return-object v0
.end method

.method public getTrailingSpaces()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->j:I

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hasNoSpaceAfterDirective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->h:Z

    return v0
.end method

.method public hasNoSpaceBeforeDirective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->g:Z

    return v0
.end method

.method public isOriginalData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->e:Z

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->f:Z

    return v0
.end method

.method public setConfidenceScore(D)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->d:D

    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->c:J

    return-void
.end method

.method public setLeadingSpaces(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->i:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->b:J

    return-void
.end method

.method public setTrailingSpaces(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->j:I

    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->a:Ljava/lang/String;

    return-object v0
.end method
