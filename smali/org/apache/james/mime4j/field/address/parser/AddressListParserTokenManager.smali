.class public final Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;


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

.field private input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

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

    .line 244
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    .line 713
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, ","

    aput-object v2, v0, v1

    const-string v1, ":"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "."

    aput-object v2, v0, v1

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

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 719
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INDOMAINLITERAL"

    aput-object v1, v0, v5

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "NESTED_COMMENT"

    aput-object v2, v0, v1

    const-string v1, "INQUOTEDSTRING"

    aput-object v1, v0, v6

    .line 726
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    .line 730
    new-array v0, v5, [J

    const-wide v2, 0x800443ffL

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    .line 733
    new-array v0, v5, [J

    const-wide/32 v2, 0x100400

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    .line 736
    new-array v0, v5, [J

    const-wide/16 v2, 0x400

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    .line 739
    new-array v0, v5, [J

    const-wide/32 v2, 0x7feb8000

    aput-wide v2, v0, v4

    return-void

    .line 244
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 726
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x0
        0x2
        0x0
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 743
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    .line 744
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 799
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 753
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 768
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    .line 769
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

    .line 770
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 771
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 93
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 95
    :cond_0
    return-void
.end method

.method private jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 4

    .prologue
    .line 787
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    .line 788
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    .line 789
    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 790
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    .line 791
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    aget v2, v3, v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginLine:I

    .line 792
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    aget v2, v3, v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginColumn:I

    .line 793
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    .line 794
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    .line 795
    return-object v1
.end method

.method private final jjMoveNfa_0$255f288(I)I
    .locals 14
    .param p1, "curPos"    # I

    .prologue
    const v13, 0x7fffffff

    const/16 v12, 0xe

    const/4 v11, 0x2

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "startsAt":I
    const/4 v5, 0x3

    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, "i":I
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v6, 0x1

    aput v6, v5, v10

    .line 125
    const v1, 0x7fffffff

    .line 128
    .local v1, "kind":I
    :goto_0
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-ne v5, v13, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 130
    :cond_0
    iget-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v6, 0x40

    if-ge v5, v6, :cond_8

    .line 132
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v2, v6, v5

    .line 135
    .local v2, "l":J
    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_0

    .line 163
    :cond_2
    :goto_1
    if-ne v0, v4, :cond_1

    .line 199
    .end local v2    # "l":J
    :goto_2
    if-eq v1, v13, :cond_3

    .line 201
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 202
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 203
    const v1, 0x7fffffff

    .line 205
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 206
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v0, v4, :cond_e

    .line 209
    :goto_3
    return p1

    .line 138
    .restart local v2    # "l":J
    :pswitch_0
    const-wide v6, -0x5c00530600000000L

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5

    .line 140
    if-le v1, v12, :cond_4

    .line 141
    const/16 v1, 0xe

    .line 142
    :cond_4
    invoke-direct {p0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 144
    :cond_5
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 146
    const/16 v5, 0xa

    if-le v1, v5, :cond_6

    .line 147
    const/16 v1, 0xa

    .line 148
    :cond_6
    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 152
    :pswitch_1
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 153
    const/16 v1, 0xa

    .line 155
    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 158
    :pswitch_2
    const-wide v6, -0x5c00130600000000L

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 159
    if-le v1, v12, :cond_7

    .line 161
    const/16 v1, 0xe

    .line 162
    :cond_7
    invoke-direct {p0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 168
    .end local v2    # "l":J
    :cond_8
    iget-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v6, 0x80

    if-ge v5, v6, :cond_c

    .line 170
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long v2, v6, v5

    .line 173
    .restart local v2    # "l":J
    :cond_9
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_1

    .line 182
    :cond_a
    :goto_4
    if-ne v0, v4, :cond_9

    goto :goto_2

    .line 177
    :pswitch_3
    const-wide v6, 0x7fffffffc7fffffeL

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_a

    .line 178
    if-le v1, v12, :cond_b

    .line 180
    const/16 v1, 0xe

    .line 181
    :cond_b
    invoke-direct {p0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 189
    .end local v2    # "l":J
    :cond_c
    iget-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    .line 190
    iget-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    .line 193
    :cond_d
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    .line 197
    if-ne v0, v4, :cond_d

    goto/16 :goto_2

    .line 208
    :cond_e
    :try_start_0
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v5

    goto/16 :goto_3

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final jjMoveNfa_1$255f288(I)I
    .locals 12
    .param p1, "curPos"    # I

    .prologue
    .line 624
    const/4 v3, 0x0

    .line 625
    .local v3, "startsAt":I
    const/4 v8, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 626
    const/4 v0, 0x1

    .line 627
    .local v0, "i":I
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 628
    const v2, 0x7fffffff

    .line 631
    .local v2, "kind":I
    :goto_0
    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_0

    .line 632
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 633
    :cond_0
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x40

    if-ge v8, v9, :cond_4

    .line 635
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    .line 638
    :cond_1
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_0

    .line 650
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 700
    :goto_2
    const v8, 0x7fffffff

    if-eq v2, v8, :cond_3

    .line 702
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 703
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 704
    const v2, 0x7fffffff

    .line 706
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 707
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 710
    :goto_3
    return p1

    .line 641
    :pswitch_0
    const/16 v8, 0x11

    if-le v2, v8, :cond_2

    .line 642
    const/16 v2, 0x11

    goto :goto_1

    .line 645
    :pswitch_1
    const/16 v8, 0x10

    if-le v2, v8, :cond_2

    .line 646
    const/16 v2, 0x10

    goto :goto_1

    .line 652
    :cond_4
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_8

    .line 654
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v4, v8, v10

    .line 657
    .local v4, "l":J
    :cond_5
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_1

    .line 678
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 660
    :pswitch_2
    const-wide/32 v8, -0x38000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 662
    const/16 v8, 0x11

    if-le v2, v8, :cond_6

    .line 663
    const/16 v2, 0x11

    goto :goto_4

    .line 665
    :cond_7
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_6

    .line 666
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x1

    aput v10, v8, v9

    goto :goto_4

    .line 669
    :pswitch_3
    const/16 v8, 0x10

    if-le v2, v8, :cond_6

    .line 670
    const/16 v2, 0x10

    goto :goto_4

    .line 673
    :pswitch_4
    const-wide/32 v8, -0x38000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    const/16 v8, 0x11

    if-le v2, v8, :cond_6

    .line 674
    const/16 v2, 0x11

    goto :goto_4

    .line 682
    .end local v4    # "l":J
    :cond_8
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v1, v8, 0x6

    .line 683
    .local v1, "i2":I
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v6, v8, v10

    .line 686
    .local v6, "l2":J
    :cond_9
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_2

    .line 698
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto/16 :goto_2

    .line 689
    :pswitch_5
    sget-object v8, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    const/16 v8, 0x11

    if-le v2, v8, :cond_a

    .line 690
    const/16 v2, 0x11

    goto :goto_5

    .line 693
    :pswitch_6
    sget-object v8, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    const/16 v8, 0x10

    if-le v2, v8, :cond_a

    .line 694
    const/16 v2, 0x10

    goto :goto_5

    .line 709
    .end local v1    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v8

    iput-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 710
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 657
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 686
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

    const/16 v10, 0x15

    const/16 v9, 0x17

    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 252
    const/4 v0, 0x1

    .line 253
    .local v0, "i":I
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    aput v7, v6, v7

    .line 254
    const v2, 0x7fffffff

    .line 257
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-ne v6, v11, :cond_0

    .line 258
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 259
    :cond_0
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 261
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    .line 264
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 276
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 323
    :goto_2
    if-eq v2, v11, :cond_3

    .line 325
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 326
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 327
    const v2, 0x7fffffff

    .line 329
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 330
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 333
    :goto_3
    return p1

    .line 267
    :pswitch_0
    if-le v2, v9, :cond_2

    .line 268
    const/16 v2, 0x17

    goto :goto_1

    .line 271
    :pswitch_1
    if-le v2, v10, :cond_2

    .line 272
    const/16 v2, 0x15

    goto :goto_1

    .line 278
    :cond_4
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 280
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    .line 283
    :cond_5
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 301
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 286
    :pswitch_2
    if-le v2, v9, :cond_7

    .line 287
    const/16 v2, 0x17

    .line 288
    :cond_7
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 289
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 292
    :pswitch_3
    if-le v2, v10, :cond_6

    .line 293
    const/16 v2, 0x15

    goto :goto_4

    .line 296
    :pswitch_4
    if-le v2, v9, :cond_6

    .line 297
    const/16 v2, 0x17

    goto :goto_4

    .line 305
    :cond_8
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 306
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 309
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 321
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto :goto_2

    .line 312
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v9, :cond_a

    .line 313
    const/16 v2, 0x17

    goto :goto_5

    .line 316
    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v10, :cond_a

    .line 317
    const/16 v2, 0x15

    goto :goto_5

    .line 332
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v6

    iput-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 333
    :catch_0
    move-exception v6

    goto :goto_3

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 309
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3$255f288(I)I
    .locals 14
    .param p1, "curPos"    # I

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0x7fffffff

    const/4 v7, 0x0

    const/16 v10, 0x18

    const/16 v9, 0x1b

    .line 505
    const/4 v3, 0x0

    .line 506
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 507
    const/4 v0, 0x1

    .line 508
    .local v0, "i":I
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    aput v7, v6, v7

    .line 509
    const v2, 0x7fffffff

    .line 512
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-ne v6, v11, :cond_0

    .line 513
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 514
    :cond_0
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 516
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    .line 519
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 531
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 578
    :goto_2
    if-eq v2, v11, :cond_3

    .line 580
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 581
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 582
    const v2, 0x7fffffff

    .line 584
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 585
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 588
    :goto_3
    return p1

    .line 522
    :pswitch_0
    if-le v2, v9, :cond_2

    .line 523
    const/16 v2, 0x1b

    goto :goto_1

    .line 526
    :pswitch_1
    if-le v2, v10, :cond_2

    .line 527
    const/16 v2, 0x18

    goto :goto_1

    .line 533
    :cond_4
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 535
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    .line 538
    :cond_5
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 556
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 541
    :pswitch_2
    if-le v2, v9, :cond_7

    .line 542
    const/16 v2, 0x1b

    .line 543
    :cond_7
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 544
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 547
    :pswitch_3
    if-le v2, v10, :cond_6

    .line 548
    const/16 v2, 0x18

    goto :goto_4

    .line 551
    :pswitch_4
    if-le v2, v9, :cond_6

    .line 552
    const/16 v2, 0x1b

    goto :goto_4

    .line 560
    :cond_8
    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 561
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 564
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 576
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto :goto_2

    .line 567
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v9, :cond_a

    .line 568
    const/16 v2, 0x1b

    goto :goto_5

    .line 571
    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v10, :cond_a

    .line 572
    const/16 v2, 0x18

    goto :goto_5

    .line 587
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v6

    iput-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 588
    :catch_0
    move-exception v6

    goto :goto_3

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 538
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 564
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_4$255f288(I)I
    .locals 12
    .param p1, "curPos"    # I

    .prologue
    .line 369
    const/4 v3, 0x0

    .line 370
    .local v3, "startsAt":I
    const/4 v8, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 371
    const/4 v0, 0x1

    .line 372
    .local v0, "i":I
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 373
    const v2, 0x7fffffff

    .line 376
    .local v2, "kind":I
    :goto_0
    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_0

    .line 377
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 378
    :cond_0
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x40

    if-ge v8, v9, :cond_5

    .line 380
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v8, v10

    .line 383
    .local v4, "l":J
    :cond_1
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_0

    .line 399
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 457
    .end local v4    # "l":J
    :goto_2
    const v8, 0x7fffffff

    if-eq v2, v8, :cond_3

    .line 459
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 460
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 461
    const v2, 0x7fffffff

    .line 463
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 464
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_f

    .line 467
    :goto_3
    return p1

    .line 387
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v8, -0x400000001L

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 388
    const/16 v8, 0x1e

    if-le v2, v8, :cond_4

    .line 390
    const/16 v2, 0x1e

    .line 391
    :cond_4
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 394
    :pswitch_1
    const/16 v8, 0x1d

    if-le v2, v8, :cond_2

    .line 395
    const/16 v2, 0x1d

    goto :goto_1

    .line 401
    .end local v4    # "l":J
    :cond_5
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_b

    .line 403
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v4, v8, v10

    .line 406
    .restart local v4    # "l":J
    :cond_6
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_1

    .line 428
    :cond_7
    :goto_4
    if-ne v0, v3, :cond_6

    goto :goto_2

    .line 409
    :pswitch_2
    const-wide/32 v8, -0x10000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 411
    const/16 v8, 0x1e

    if-le v2, v8, :cond_8

    .line 412
    const/16 v2, 0x1e

    .line 413
    :cond_8
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 415
    :cond_9
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_7

    .line 416
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x1

    aput v10, v8, v9

    goto :goto_4

    .line 419
    :pswitch_3
    const/16 v8, 0x1d

    if-le v2, v8, :cond_7

    .line 420
    const/16 v2, 0x1d

    goto :goto_4

    .line 423
    :pswitch_4
    const-wide/32 v8, -0x10000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 424
    const/16 v8, 0x1e

    if-le v2, v8, :cond_a

    .line 426
    const/16 v2, 0x1e

    .line 427
    :cond_a
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 435
    .end local v4    # "l":J
    :cond_b
    iget-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v1, v8, 0x6

    .line 436
    .local v1, "i2":I
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v6, v8, v10

    .line 439
    .local v6, "l2":J
    :cond_c
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_2

    .line 455
    :cond_d
    :goto_5
    if-ne v0, v3, :cond_c

    goto/16 :goto_2

    .line 443
    :pswitch_5
    sget-object v8, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 444
    const/16 v8, 0x1e

    if-le v2, v8, :cond_e

    .line 446
    const/16 v2, 0x1e

    .line 447
    :cond_e
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 450
    :pswitch_6
    sget-object v8, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    const/16 v8, 0x1d

    if-le v2, v8, :cond_d

    .line 451
    const/16 v2, 0x1d

    goto :goto_5

    .line 466
    .end local v1    # "i2":I
    .end local v6    # "l2":J
    :cond_f
    :try_start_0
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v8

    iput-char v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 406
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 439
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjStopAtPos$255f288(I)I
    .locals 1
    .param p1, "kind"    # I

    .prologue
    .line 44
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 46
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 14

    .prologue
    .line 808
    const/4 v9, 0x0

    .line 810
    .local v9, "specialToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/4 v6, 0x0

    .line 817
    .local v6, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v5, -0x1

    iput v5, v0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v5

    iget v10, v0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v10, v0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iput-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 831
    :goto_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    .line 859
    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_b

    .line 861
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v6, :cond_1

    .line 862
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 863
    :cond_1
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_5

    .line 865
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v7

    .line 866
    .local v7, "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iput-object v9, v7, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 867
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_0

    .line 868
    :goto_3
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 869
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_2
    move-object v8, v7

    .line 870
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v8, "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_4
    return-object v8

    .line 821
    .end local v8    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 822
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v7

    .line 823
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iput-object v9, v7, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v8, v7

    .line 824
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v8    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_4

    .line 834
    .end local v8    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :pswitch_0
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 836
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0$255f288(I)I

    move-result v6

    .line 837
    :goto_5
    goto :goto_2

    .line 836
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_2
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_6
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_7
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_8
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    :sswitch_b
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_5

    .line 839
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 840
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 841
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1$255f288(I)I

    move-result v6

    .line 842
    :goto_6
    goto/16 :goto_2

    .line 841
    :pswitch_2
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_6

    .line 844
    :pswitch_3
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 845
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 846
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2$255f288(I)I

    move-result v6

    .line 847
    :goto_7
    goto/16 :goto_2

    .line 846
    :pswitch_4
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_7

    :pswitch_5
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_7

    .line 849
    :pswitch_6
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 850
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 851
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3$255f288(I)I

    move-result v6

    .line 852
    :goto_8
    goto/16 :goto_2

    .line 851
    :pswitch_7
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_8

    :pswitch_8
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_8

    .line 854
    :pswitch_9
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 855
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 856
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4$255f288(I)I

    move-result v6

    :goto_9
    goto/16 :goto_2

    :pswitch_a
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos$255f288(I)I

    move-result v6

    goto :goto_9

    .line 867
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto/16 :goto_3

    :sswitch_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    iget-object v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v5, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto/16 :goto_3

    .line 872
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_5
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_8

    .line 874
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_6

    .line 876
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v7

    .line 877
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    if-nez v9, :cond_7

    .line 878
    move-object v9, v7

    .line 885
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_6
    :goto_a
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 886
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 881
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_7
    iput-object v9, v7, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 882
    iput-object v7, v9, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v9, v7

    goto :goto_a

    .line 889
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_8
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_5

    .line 890
    :cond_9
    :goto_b
    :pswitch_b
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    .line 891
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 892
    :cond_a
    const/4 v6, 0x0

    .line 893
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 895
    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 900
    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    .line 901
    .local v2, "error_line":I
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 902
    .local v3, "error_column":I
    const/4 v4, 0x0

    .line 903
    .local v4, "error_after":Ljava/lang/String;
    const/4 v1, 0x0

    .line 904
    .local v1, "EOFSeen":Z
    :try_start_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 915
    :goto_c
    if-nez v1, :cond_c

    .line 916
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 917
    const/4 v0, 0x1

    if-gt v6, v0, :cond_18

    const-string v4, ""

    .line 919
    :cond_c
    :goto_d
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    iget-char v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(ZIILjava/lang/String;C)V

    throw v0

    .line 889
    .end local v1    # "EOFSeen":Z
    .end local v2    # "error_line":I
    .end local v3    # "error_column":I
    .end local v4    # "error_after":Ljava/lang/String;
    :pswitch_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_b

    :pswitch_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    :pswitch_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    const/4 v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_b

    :pswitch_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_10
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    :pswitch_10
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_b

    :pswitch_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_12
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_b

    :pswitch_12
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_13
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    :pswitch_13
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_14
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v10}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 906
    .restart local v1    # "EOFSeen":Z
    .restart local v2    # "error_line":I
    .restart local v3    # "error_column":I
    .restart local v4    # "error_after":Ljava/lang/String;
    :catch_2
    move-exception v0

    const/4 v1, 0x1

    .line 907
    const/4 v0, 0x1

    if-gt v6, v0, :cond_16

    const-string v4, ""

    .line 908
    :goto_e
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v0, v5, :cond_15

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v0, v5, :cond_17

    .line 909
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 910
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 907
    :cond_16
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 913
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 917
    :cond_18
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_d

    .line 831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 867
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_c
        0x1f -> :sswitch_d
    .end sparse-switch

    .line 836
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2c -> :sswitch_4
        0x2e -> :sswitch_5
        0x3a -> :sswitch_6
        0x3b -> :sswitch_7
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_a
        0x5b -> :sswitch_b
    .end sparse-switch

    .line 841
    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_2
    .end packed-switch

    .line 846
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 851
    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 856
    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_a
    .end packed-switch

    .line 889
    :pswitch_data_5
    .packed-switch 0x10
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
