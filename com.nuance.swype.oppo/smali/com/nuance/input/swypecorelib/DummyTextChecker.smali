.class public Lcom/nuance/input/swypecorelib/DummyTextChecker;
.super Ljava/lang/Object;
.source "DummyTextChecker.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/TextChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private getSuggestion(Lcom/nuance/input/swypecorelib/Correction;ILjava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)Ljava/lang/String;
    .locals 5
    .param p1, "corr"    # Lcom/nuance/input/swypecorelib/Correction;
    .param p2, "listIndex"    # I
    .param p3, "buffer"    # Ljava/lang/String;
    .param p4, "region"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 55
    invoke-virtual {p4}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "corrStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 73
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, p2, -0x2

    if-eq v2, v3, :cond_1

    .line 74
    const-string v3, "X"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_2
    :pswitch_1
    return-object v1

    .line 69
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 70
    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkRegion(Ljava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    const/4 v6, 0x4

    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, "count":I
    const/4 v3, 0x1

    .line 23
    .local v3, "inWord":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 24
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 25
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    if-eqz v3, :cond_0

    if-ne v1, v6, :cond_0

    .line 27
    new-instance v0, Lcom/nuance/input/swypecorelib/Correction;

    add-int/lit8 v5, v2, -0x4

    invoke-direct {v0, v5, v6}, Lcom/nuance/input/swypecorelib/Correction;-><init>(II)V

    .line 28
    .local v0, "corr":Lcom/nuance/input/swypecorelib/Correction;
    invoke-virtual {p2, v0}, Lcom/nuance/input/swypecorelib/TextRegion;->addCorrection(Lcom/nuance/input/swypecorelib/Correction;)V

    .line 29
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 30
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/nuance/input/swypecorelib/DummyTextChecker;->getSuggestion(Lcom/nuance/input/swypecorelib/Correction;ILjava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/input/swypecorelib/Correction;->addSuggestion(Ljava/lang/String;)V

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    .end local v0    # "corr":Lcom/nuance/input/swypecorelib/Correction;
    .end local v4    # "j":I
    :cond_0
    const/4 v1, 0x0

    .line 34
    const/4 v3, 0x0

    .line 23
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 40
    :cond_2
    return-void
.end method
