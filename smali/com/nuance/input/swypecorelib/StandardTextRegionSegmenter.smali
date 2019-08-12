.class public Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;
.super Ljava/lang/Object;
.source "StandardTextRegionSegmenter.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/TextRegionSegmenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;,
        Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;,
        Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;,
        Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;,
        Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;
    }
.end annotation


# instance fields
.field protected cursorPos:I

.field private delims:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private delimsNoWS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field protected maxPos:I

.field protected minPos:I

.field protected val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;II)V
    .locals 2
    .param p3, "buff"    # Ljava/lang/String;
    .param p4, "pos"    # I
    .param p5, "maxChars"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, "delims":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .local p2, "delimsNoWS":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    .line 28
    iput v1, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    .line 29
    iput v1, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    .line 47
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delims:Ljava/util/Set;

    .line 48
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delimsNoWS:Ljava/util/Set;

    .line 50
    invoke-virtual {p0, p3, p4, p5}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->reset(Ljava/lang/String;II)V

    .line 51
    return-void
.end method


# virtual methods
.method public extractTextRegion()Lcom/nuance/input/swypecorelib/TextRegion;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 263
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 264
    if-nez v5, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v4

    .line 269
    :cond_1
    iget v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    iget v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_0

    .line 273
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    iget v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    if-ne v4, v5, :cond_2

    .line 274
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    invoke-virtual {p0, v4, v9}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->searchRight(IZ)Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;

    move-result-object v1

    .line 277
    .local v1, "res":Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;
    new-instance v4, Lcom/nuance/input/swypecorelib/TextRegion;

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    iget v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    iget v7, v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;->pos:I

    iget v8, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iget-boolean v8, v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;->isTerm:Z

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/input/swypecorelib/TextRegion;-><init>(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 282
    .end local v1    # "res":Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;
    :cond_2
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->searchLeft(I)Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;

    move-result-object v0

    .line 285
    .local v0, "leftRes":Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;
    iget-boolean v4, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->foundTerm:Z

    if-eqz v4, :cond_4

    .line 287
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    invoke-virtual {p0, v4}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->searchRightForWs(I)I

    move-result v3

    .line 288
    .local v3, "rightWsPos":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 292
    new-instance v4, Lcom/nuance/input/swypecorelib/TextRegion;

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    iget v6, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    iget v7, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    iget v8, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    sub-int/2addr v7, v8

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/nuance/input/swypecorelib/TextRegion;-><init>(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 296
    :cond_3
    new-instance v4, Lcom/nuance/input/swypecorelib/TextRegion;

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    iget v6, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    iget v7, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    sub-int v7, v3, v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/nuance/input/swypecorelib/TextRegion;-><init>(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 300
    .end local v3    # "rightWsPos":I
    :cond_4
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    iget v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    if-le v4, v5, :cond_5

    .line 301
    new-instance v4, Lcom/nuance/input/swypecorelib/TextRegion;

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    iget v6, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    iget v7, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    iget v8, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/nuance/input/swypecorelib/TextRegion;-><init>(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 305
    :cond_5
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    iget-boolean v5, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->foundTermFrag:Z

    invoke-virtual {p0, v4, v5}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->searchRight(IZ)Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;

    move-result-object v2

    .line 306
    .local v2, "rightRes":Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;
    new-instance v4, Lcom/nuance/input/swypecorelib/TextRegion;

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    iget v6, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    iget v7, v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;->pos:I

    iget v8, v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;->beginPos:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iget-boolean v8, v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;->isTerm:Z

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/input/swypecorelib/TextRegion;-><init>(Ljava/lang/String;IIZ)V

    goto/16 :goto_0
.end method

.method public reset(Ljava/lang/String;II)V
    .locals 3
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "curPos"    # I
    .param p3, "maxChars"    # I

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v1, v2, p2

    .line 69
    .local v1, "rightChars":I
    if-ge p2, v1, :cond_2

    .line 70
    div-int/lit8 v2, p3, 0x2

    if-le p2, v2, :cond_0

    div-int/lit8 v0, p3, 0x2

    .line 71
    .local v0, "leftChars":I
    :goto_0
    sub-int v2, p3, v0

    if-le v2, v1, :cond_1

    .line 79
    :goto_1
    sub-int v2, p2, v0

    iput v2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    .line 80
    add-int v2, p2, v1

    iput v2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    .line 81
    iput p2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->cursorPos:I

    .line 82
    return-void

    .end local v0    # "leftChars":I
    :cond_0
    move v0, p2

    .line 70
    goto :goto_0

    .line 71
    .restart local v0    # "leftChars":I
    :cond_1
    sub-int v1, p3, v0

    goto :goto_1

    .line 74
    .end local v0    # "leftChars":I
    :cond_2
    div-int/lit8 v2, p3, 0x2

    if-le v1, v2, :cond_3

    div-int/lit8 v1, p3, 0x2

    .line 75
    :cond_3
    sub-int v2, p3, v1

    if-le v2, p2, :cond_4

    move v0, p2

    .restart local v0    # "leftChars":I
    :goto_2
    goto :goto_1

    .end local v0    # "leftChars":I
    :cond_4
    sub-int v0, p3, v1

    goto :goto_2
.end method

.method public searchLeft(I)Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;
    .locals 8
    .param p1, "startPos"    # I

    .prologue
    .line 102
    iget v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    if-gt p1, v6, :cond_0

    iget v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    if-ge p1, v6, :cond_1

    .line 103
    :cond_0
    const/4 v6, 0x0

    .line 169
    :goto_0
    return-object v6

    .line 106
    :cond_1
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->start:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    .line 107
    .local v5, "s":Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;
    move v4, p1

    .line 109
    .local v4, "index":I
    const/4 v2, 0x0

    .line 110
    .local v2, "foundTerm":Z
    const/4 v3, 0x0

    .line 111
    .local v3, "foundTermFrag":Z
    const/4 v0, -0x1

    .line 113
    .local v0, "beginPos":I
    :goto_1
    iget v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    if-lt v4, v6, :cond_b

    .line 114
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 116
    .local v1, "c":C
    sget-object v6, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchLeftState:[I

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 166
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 167
    goto :goto_1

    .line 118
    :pswitch_0
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delimsNoWS:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    const/4 v2, 0x1

    .line 120
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    goto :goto_2

    .line 122
    :cond_3
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delims:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 123
    const/4 v3, 0x1

    .line 124
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    goto :goto_2

    .line 126
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 127
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_initial_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    goto :goto_2

    .line 129
    :cond_5
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    .line 133
    goto :goto_2

    .line 135
    :pswitch_1
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delimsNoWS:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    const/4 v2, 0x1

    .line 137
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    goto :goto_2

    .line 139
    :cond_6
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delims:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 140
    const/4 v2, 0x1

    .line 141
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    goto :goto_2

    .line 143
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 144
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    goto :goto_2

    .line 150
    :pswitch_2
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delimsNoWS:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 151
    new-instance v6, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;

    add-int/lit8 v7, v4, 0x1

    invoke-direct {v6, v2, v3, v7}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;-><init>(ZZI)V

    goto/16 :goto_0

    .line 153
    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    .line 155
    add-int/lit8 v0, v4, 0x1

    goto :goto_2

    .line 159
    :pswitch_3
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delimsNoWS:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delims:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 160
    :cond_9
    new-instance v6, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;

    invoke-direct {v6, v2, v3, v0}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;-><init>(ZZI)V

    goto/16 :goto_0

    .line 162
    :cond_a
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 163
    sget-object v5, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    goto/16 :goto_2

    .line 169
    .end local v1    # "c":C
    :cond_b
    new-instance v6, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;

    iget v7, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    invoke-direct {v6, v2, v3, v7}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftResult;-><init>(ZZI)V

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected searchRight(IZ)Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;
    .locals 7
    .param p1, "startPos"    # I
    .param p2, "leftSideHasTermFragment"    # Z

    .prologue
    const/4 v3, 0x1

    .line 188
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->minPos:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    if-le p1, v4, :cond_1

    .line 189
    :cond_0
    const/4 v3, 0x0

    .line 239
    :goto_0
    return-object v3

    .line 192
    :cond_1
    sget-object v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_TEXT:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    .line 193
    .local v2, "s":Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;
    if-eqz p2, :cond_2

    .line 194
    sget-object v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    .line 196
    :cond_2
    move v1, p1

    .line 198
    .local v1, "index":I
    :goto_1
    iget v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    if-gt v1, v4, :cond_6

    .line 199
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 200
    .local v0, "c":C
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delimsNoWS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    sget-object v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_NO_WS_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    .line 236
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 237
    goto :goto_1

    .line 205
    :cond_4
    sget-object v4, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$1;->$SwitchMap$com$nuance$input$swypecorelib$StandardTextRegionSegmenter$SearchRightState:[I

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 207
    :pswitch_0
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->delims:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    sget-object v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    goto :goto_2

    .line 214
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 215
    new-instance v4, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v4, v5, v3}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;-><init>(IZ)V

    move-object v3, v4

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    sget-object v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_WS:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    goto :goto_2

    .line 224
    :cond_5
    sget-object v2, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_TEXT:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    .line 226
    goto :goto_2

    .line 230
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 231
    new-instance v4, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v4, v5, v3}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;-><init>(IZ)V

    move-object v3, v4

    goto :goto_0

    .line 239
    .end local v0    # "c":C
    :cond_6
    new-instance v4, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;

    iget v5, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    sget-object v6, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_WS:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    if-eq v2, v6, :cond_7

    sget-object v6, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_NO_WS_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    if-ne v2, v6, :cond_8

    :cond_7
    :goto_3
    invoke-direct {v4, v5, v3}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightResult;-><init>(IZ)V

    move-object v3, v4

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected searchRightForWs(I)I
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 244
    const/4 v1, -0x1

    .line 245
    .local v1, "res":I
    move v0, p1

    .line 247
    .local v0, "index":I
    :goto_0
    iget v2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->maxPos:I

    if-gt v0, v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;->val:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 249
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    move v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    goto :goto_0

    .line 258
    :cond_0
    return v1
.end method
