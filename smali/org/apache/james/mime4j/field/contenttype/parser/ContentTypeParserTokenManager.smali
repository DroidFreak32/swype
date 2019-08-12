.class public final Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
.super Ljava/lang/Object;
.source "ContentTypeParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field private static commentNest:I

.field private static jjbitVec0:[J

.field private static jjnewLexState:[I

.field private static jjstrLiteralImages:[Ljava/lang/String;

.field private static jjtoSkip:[J

.field private static jjtoSpecial:[J

.field private static jjtoToken:[J


# instance fields
.field private curChar:C

.field private curLexState:I

.field private image:Ljava/lang/StringBuffer;

.field private input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field private jjimageLen:I

.field private jjmatchedKind:I

.field private jjmatchedPos:I

.field private jjnewStateCnt:I

.field private jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 109
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    .line 602
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    const-string v1, ";"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 607
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    .line 613
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    .line 616
    new-array v0, v5, [J

    const-wide/32 v2, 0x38003f

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    .line 619
    new-array v0, v5, [J

    const-wide/16 v2, 0x140

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    .line 622
    new-array v0, v5, [J

    const-wide/16 v2, 0x40

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    .line 625
    new-array v0, v5, [J

    const-wide/32 v2, 0x7fe80

    aput-wide v2, v0, v4

    return-void

    .line 109
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 613
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 629
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    .line 630
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 685
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 639
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 654
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    .line 655
    const/4 v0, 0x3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 656
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 657
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 86
    :cond_0
    return-void
.end method

.method private jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 4

    .prologue
    .line 673
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    .line 674
    .local v1, "t":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    .line 675
    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 676
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    .line 677
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget-object v3, v2, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v2, v2, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    aget v2, v3, v2

    iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginLine:I

    .line 678
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget-object v3, v2, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v2, v2, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    aget v2, v3, v2

    iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginColumn:I

    .line 679
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    .line 680
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    .line 681
    return-object v1
.end method

.method private final jjMoveNfa_0(II)I
    .locals 12
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "startsAt":I
    const/4 v8, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "i":I
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v9, 0x0

    aput p1, v8, v9

    .line 119
    const v2, 0x7fffffff

    .line 122
    .local v2, "kind":I
    :goto_0
    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 124
    :cond_0
    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v9, 0x40

    if-ge v8, v9, :cond_b

    .line 126
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v8, v10

    .line 129
    .local v4, "l":J
    :cond_1
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_0

    .line 170
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 213
    .end local v4    # "l":J
    :goto_2
    const v8, 0x7fffffff

    if-eq v2, v8, :cond_3

    .line 215
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 216
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 217
    const v2, 0x7fffffff

    .line 219
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 220
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_12

    .line 223
    :goto_3
    return p2

    .line 132
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v8, 0x3ff6cfafffffdffL

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 134
    const/16 v8, 0x15

    if-le v2, v8, :cond_4

    .line 135
    const/16 v2, 0x15

    .line 136
    :cond_4
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 144
    :cond_5
    :goto_4
    const-wide/high16 v8, 0x3ff000000000000L

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 146
    const/16 v8, 0x14

    if-le v2, v8, :cond_6

    .line 147
    const/16 v2, 0x14

    .line 148
    :cond_6
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 138
    :cond_7
    const-wide v8, 0x100000200L

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 140
    const/4 v8, 0x6

    if-le v2, v8, :cond_8

    .line 141
    const/4 v2, 0x6

    .line 142
    :cond_8
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 152
    :pswitch_1
    const-wide v8, 0x100000200L

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 153
    const/4 v2, 0x6

    .line 155
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 158
    :pswitch_2
    const-wide/high16 v8, 0x3ff000000000000L

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 159
    const/16 v8, 0x14

    if-le v2, v8, :cond_9

    .line 161
    const/16 v2, 0x14

    .line 162
    :cond_9
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 165
    :pswitch_3
    const-wide v8, 0x3ff6cfafffffdffL

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 166
    const/16 v8, 0x15

    if-le v2, v8, :cond_a

    .line 168
    const/16 v2, 0x15

    .line 169
    :cond_a
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 175
    .end local v4    # "l":J
    :cond_b
    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_e

    .line 177
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v4, v8, v10

    .line 180
    .restart local v4    # "l":J
    :cond_c
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_1

    .line 188
    :cond_d
    :goto_5
    if-ne v0, v3, :cond_c

    goto/16 :goto_2

    .line 184
    :pswitch_4
    const-wide/32 v8, -0x38000002

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 185
    const/16 v2, 0x15

    .line 187
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 195
    .end local v4    # "l":J
    :cond_e
    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v1, v8, 0x6

    .line 196
    .local v1, "i2":I
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v6, v8, v10

    .line 199
    .local v6, "l2":J
    :cond_f
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_2

    .line 208
    :cond_10
    :goto_6
    if-ne v0, v3, :cond_f

    goto/16 :goto_2

    .line 203
    :pswitch_5
    sget-object v8, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    .line 204
    const/16 v8, 0x15

    if-le v2, v8, :cond_11

    .line 206
    const/16 v2, 0x15

    .line 207
    :cond_11
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    .line 222
    .end local v1    # "i2":I
    .end local v6    # "l2":J
    :cond_12
    :try_start_0
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v8

    iput-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 199
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1$255f288(I)I
    .locals 14
    .param p1, "curPos"    # I

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0x7fffffff

    const/4 v7, 0x0

    const/16 v10, 0x9

    const/16 v9, 0xb

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 263
    const/4 v0, 0x1

    .line 264
    .local v0, "i":I
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    aput v7, v6, v7

    .line 265
    const v2, 0x7fffffff

    .line 268
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    if-ne v6, v11, :cond_0

    .line 269
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 270
    :cond_0
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 272
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    .line 275
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 287
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 334
    :goto_2
    if-eq v2, v11, :cond_3

    .line 336
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 337
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 338
    const v2, 0x7fffffff

    .line 340
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 341
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 344
    :goto_3
    return p1

    .line 278
    :pswitch_0
    if-le v2, v9, :cond_2

    .line 279
    const/16 v2, 0xb

    goto :goto_1

    .line 282
    :pswitch_1
    if-le v2, v10, :cond_2

    .line 283
    const/16 v2, 0x9

    goto :goto_1

    .line 289
    :cond_4
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 291
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    .line 294
    :cond_5
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 312
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 297
    :pswitch_2
    if-le v2, v9, :cond_7

    .line 298
    const/16 v2, 0xb

    .line 299
    :cond_7
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 300
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 303
    :pswitch_3
    if-le v2, v10, :cond_6

    .line 304
    const/16 v2, 0x9

    goto :goto_4

    .line 307
    :pswitch_4
    if-le v2, v9, :cond_6

    .line 308
    const/16 v2, 0xb

    goto :goto_4

    .line 316
    :cond_8
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 317
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 320
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 332
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto :goto_2

    .line 323
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v9, :cond_a

    .line 324
    const/16 v2, 0xb

    goto :goto_5

    .line 327
    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v10, :cond_a

    .line 328
    const/16 v2, 0x9

    goto :goto_5

    .line 343
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v6

    iput-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 344
    :catch_0
    move-exception v6

    goto :goto_3

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 294
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 320
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2$255f288(I)I
    .locals 14
    .param p1, "curPos"    # I

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0x7fffffff

    const/4 v7, 0x0

    const/16 v10, 0xc

    const/16 v9, 0xf

    .line 516
    const/4 v3, 0x0

    .line 517
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 518
    const/4 v0, 0x1

    .line 519
    .local v0, "i":I
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    aput v7, v6, v7

    .line 520
    const v2, 0x7fffffff

    .line 523
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    if-ne v6, v11, :cond_0

    .line 524
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 525
    :cond_0
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 527
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    .line 530
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 542
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 589
    :goto_2
    if-eq v2, v11, :cond_3

    .line 591
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 592
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 593
    const v2, 0x7fffffff

    .line 595
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 596
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 599
    :goto_3
    return p1

    .line 533
    :pswitch_0
    if-le v2, v9, :cond_2

    .line 534
    const/16 v2, 0xf

    goto :goto_1

    .line 537
    :pswitch_1
    if-le v2, v10, :cond_2

    .line 538
    const/16 v2, 0xc

    goto :goto_1

    .line 544
    :cond_4
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 546
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    .line 549
    :cond_5
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 567
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 552
    :pswitch_2
    if-le v2, v9, :cond_7

    .line 553
    const/16 v2, 0xf

    .line 554
    :cond_7
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 555
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 558
    :pswitch_3
    if-le v2, v10, :cond_6

    .line 559
    const/16 v2, 0xc

    goto :goto_4

    .line 562
    :pswitch_4
    if-le v2, v9, :cond_6

    .line 563
    const/16 v2, 0xf

    goto :goto_4

    .line 571
    :cond_8
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 572
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 575
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 587
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto :goto_2

    .line 578
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v9, :cond_a

    .line 579
    const/16 v2, 0xf

    goto :goto_5

    .line 582
    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v10, :cond_a

    .line 583
    const/16 v2, 0xc

    goto :goto_5

    .line 598
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v6

    iput-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 599
    :catch_0
    move-exception v6

    goto :goto_3

    .line 530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 549
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 575
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3$255f288(I)I
    .locals 12
    .param p1, "curPos"    # I

    .prologue
    .line 380
    const/4 v3, 0x0

    .line 381
    .local v3, "startsAt":I
    const/4 v8, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 382
    const/4 v0, 0x1

    .line 383
    .local v0, "i":I
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 384
    const v2, 0x7fffffff

    .line 387
    .local v2, "kind":I
    :goto_0
    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_0

    .line 388
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 389
    :cond_0
    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v9, 0x40

    if-ge v8, v9, :cond_5

    .line 391
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v8, v10

    .line 394
    .local v4, "l":J
    :cond_1
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_0

    .line 410
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 468
    .end local v4    # "l":J
    :goto_2
    const v8, 0x7fffffff

    if-eq v2, v8, :cond_3

    .line 470
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 471
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 472
    const v2, 0x7fffffff

    .line 474
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 475
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_f

    .line 478
    :goto_3
    return p1

    .line 398
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v8, -0x400000001L

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 399
    const/16 v8, 0x12

    if-le v2, v8, :cond_4

    .line 401
    const/16 v2, 0x12

    .line 402
    :cond_4
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 405
    :pswitch_1
    const/16 v8, 0x11

    if-le v2, v8, :cond_2

    .line 406
    const/16 v2, 0x11

    goto :goto_1

    .line 412
    .end local v4    # "l":J
    :cond_5
    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_b

    .line 414
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v4, v8, v10

    .line 417
    .restart local v4    # "l":J
    :cond_6
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_1

    .line 439
    :cond_7
    :goto_4
    if-ne v0, v3, :cond_6

    goto :goto_2

    .line 420
    :pswitch_2
    const-wide/32 v8, -0x10000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 422
    const/16 v8, 0x12

    if-le v2, v8, :cond_8

    .line 423
    const/16 v2, 0x12

    .line 424
    :cond_8
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 426
    :cond_9
    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_7

    .line 427
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x1

    aput v10, v8, v9

    goto :goto_4

    .line 430
    :pswitch_3
    const/16 v8, 0x11

    if-le v2, v8, :cond_7

    .line 431
    const/16 v2, 0x11

    goto :goto_4

    .line 434
    :pswitch_4
    const-wide/32 v8, -0x10000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 435
    const/16 v8, 0x12

    if-le v2, v8, :cond_a

    .line 437
    const/16 v2, 0x12

    .line 438
    :cond_a
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 446
    .end local v4    # "l":J
    :cond_b
    iget-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v1, v8, 0x6

    .line 447
    .local v1, "i2":I
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v6, v8, v10

    .line 450
    .local v6, "l2":J
    :cond_c
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_2

    .line 466
    :cond_d
    :goto_5
    if-ne v0, v3, :cond_c

    goto/16 :goto_2

    .line 454
    :pswitch_5
    sget-object v8, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 455
    const/16 v8, 0x12

    if-le v2, v8, :cond_e

    .line 457
    const/16 v2, 0x12

    .line 458
    :cond_e
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 461
    :pswitch_6
    sget-object v8, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    const/16 v8, 0x11

    if-le v2, v8, :cond_d

    .line 462
    const/16 v2, 0x11

    goto :goto_5

    .line 477
    .end local v1    # "i2":I
    .end local v6    # "l2":J
    :cond_f
    :try_start_0
    iget-object v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v8

    iput-char v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 478
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 417
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 450
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0$4868d301(I)I
    .locals 2
    .param p1, "kind"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 53
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final jjStopAtPos$255f288(I)I
    .locals 1
    .param p1, "kind"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 47
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 14

    .prologue
    .line 694
    const/4 v8, 0x0

    .line 696
    .local v8, "specialToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v6, 0x0

    .line 703
    .local v6, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v5, -0x1

    iput v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v5

    iget v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iput-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 717
    :goto_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    .line 740
    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_a

    .line 742
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v6, :cond_1

    .line 743
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    .line 744
    :cond_1
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_4

    .line 746
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v7

    .line 747
    .local v7, "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_1

    .line 749
    :goto_3
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 750
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 751
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_2
    :goto_4
    return-object v7

    .line 707
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 708
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v7

    goto :goto_4

    .line 720
    :pswitch_0
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 721
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 722
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v6

    .line 723
    :goto_5
    goto :goto_2

    .line 722
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0$4868d301(I)I

    move-result v6

    goto :goto_5

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0$4868d301(I)I

    move-result v6

    goto :goto_5

    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    .line 725
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 727
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1$255f288(I)I

    move-result v6

    .line 728
    :goto_6
    goto/16 :goto_2

    .line 727
    :pswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_6

    :pswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_6

    .line 730
    :pswitch_4
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 732
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2$255f288(I)I

    move-result v6

    .line 733
    :goto_7
    goto/16 :goto_2

    .line 732
    :pswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_7

    :pswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_7

    .line 735
    :pswitch_7
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 736
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 737
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3$255f288(I)I

    move-result v6

    :goto_8
    goto/16 :goto_2

    :pswitch_8
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_8

    .line 747
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :pswitch_9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v5, v9}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    goto/16 :goto_3

    .line 753
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_4
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_7

    .line 755
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_5

    .line 757
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v7

    .line 758
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    if-nez v8, :cond_6

    .line 759
    move-object v8, v7

    .line 766
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_5
    :goto_9
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 767
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 762
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_6
    iput-object v7, v8, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-object v8, v7

    goto :goto_9

    .line 770
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_7
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_5

    .line 771
    :cond_8
    :goto_a
    :pswitch_a
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    .line 772
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 773
    :cond_9
    const/4 v6, 0x0

    .line 774
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 776
    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 781
    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    .line 782
    .local v2, "error_line":I
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 783
    .local v3, "error_column":I
    const/4 v4, 0x0

    .line 784
    .local v4, "error_after":Ljava/lang/String;
    const/4 v1, 0x0

    .line 785
    .local v1, "EOFSeen":Z
    :try_start_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 796
    :goto_b
    if-nez v1, :cond_b

    .line 797
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    .line 798
    const/4 v0, 0x1

    if-gt v6, v0, :cond_16

    const-string v4, ""

    .line 800
    :cond_b
    :goto_c
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIILjava/lang/String;C)V

    throw v0

    .line 770
    .end local v1    # "EOFSeen":Z
    .end local v2    # "error_line":I
    .end local v3    # "error_column":I
    .end local v4    # "error_after":Ljava/lang/String;
    :pswitch_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    const/4 v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto/16 :goto_a

    :pswitch_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto/16 :goto_a

    :pswitch_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_10
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    goto/16 :goto_a

    :pswitch_10
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_12
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    .line 787
    .restart local v1    # "EOFSeen":Z
    .restart local v2    # "error_line":I
    .restart local v3    # "error_column":I
    .restart local v4    # "error_after":Ljava/lang/String;
    :catch_2
    move-exception v0

    const/4 v1, 0x1

    .line 788
    const/4 v0, 0x1

    if-gt v6, v0, :cond_14

    const-string v4, ""

    .line 789
    :goto_d
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v0, v5, :cond_13

    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v0, v5, :cond_15

    .line 790
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 791
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 788
    :cond_14
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 794
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 798
    :cond_16
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 747
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_9
    .end packed-switch

    .line 722
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch

    .line 727
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 732
    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 737
    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_8
    .end packed-switch

    .line 770
    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
