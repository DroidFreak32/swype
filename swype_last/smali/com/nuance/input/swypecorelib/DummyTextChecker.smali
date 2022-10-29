.class public Lcom/nuance/input/swypecorelib/DummyTextChecker;
.super Ljava/lang/Object;
.source "DummyTextChecker.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/TextChecker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private getSuggestion(Lcom/nuance/input/swypecorelib/Correction;ILjava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)Ljava/lang/String;
    .registers 10
    .param p1, "corr"    # Lcom/nuance/input/swypecorelib/Correction;
    .param p2, "listIndex"    # I
    .param p3, "buffer"    # Ljava/lang/String;
    .param p4, "region"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 57
    invoke-virtual {p4}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 60
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "corrStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_50

    .line 75
    const/4 v2, 0x0

    :goto_28
    add-int/lit8 v3, p2, -0x2

    if-eq v2, v3, :cond_4a

    .line 76
    const-string/jumbo v3, "X"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 67
    :pswitch_35
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_40
    :pswitch_40
    return-object v1

    .line 71
    :pswitch_41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 72
    goto :goto_40

    .line 78
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    .line 61
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_40
        :pswitch_35
        :pswitch_41
    .end packed-switch
.end method


# virtual methods
.method public checkRegion(Ljava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)V
    .registers 10
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    const/4 v6, 0x4

    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "count":I
    const/4 v3, 0x1

    .line 25
    .local v3, "inWord":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v5

    if-eq v2, v5, :cond_3e

    .line 26
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 27
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 28
    if-eqz v3, :cond_35

    if-ne v1, v6, :cond_35

    .line 29
    new-instance v0, Lcom/nuance/input/swypecorelib/Correction;

    add-int/lit8 v5, v2, -0x4

    invoke-direct {v0, v5, v6}, Lcom/nuance/input/swypecorelib/Correction;-><init>(II)V

    .line 30
    .local v0, "corr":Lcom/nuance/input/swypecorelib/Correction;
    invoke-virtual {p2, v0}, Lcom/nuance/input/swypecorelib/TextRegion;->addCorrection(Lcom/nuance/input/swypecorelib/Correction;)V

    .line 31
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    const/4 v5, 0x5

    if-eq v4, v5, :cond_35

    .line 32
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/nuance/input/swypecorelib/DummyTextChecker;->getSuggestion(Lcom/nuance/input/swypecorelib/Correction;ILjava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/input/swypecorelib/Correction;->addSuggestion(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 35
    .end local v0    # "corr":Lcom/nuance/input/swypecorelib/Correction;
    .end local v4    # "j":I
    :cond_35
    const/4 v1, 0x0

    .line 36
    const/4 v3, 0x0

    .line 25
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 38
    :cond_3a
    const/4 v3, 0x1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 42
    :cond_3e
    return-void
.end method
