.class public final Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.super Ljava/lang/Object;
.source "DateTimeParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


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

.field private input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

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
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 422
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    .line 635
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v6

    const-string v1, ","

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "May"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v2, "UT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GMT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "MST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "MDT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PDT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 646
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    .line 651
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    .line 655
    new-array v0, v5, [J

    const-wide v2, 0x400fffffffffL

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    .line 658
    new-array v0, v5, [J

    const-wide v2, 0x5000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    .line 661
    new-array v0, v5, [J

    const-wide v2, 0x1000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    .line 664
    new-array v0, v5, [J

    const-wide v2, 0x3fa000000000L

    aput-wide v2, v0, v4

    return-void

    .line 422
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 651
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
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    .line 669
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    .line 723
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 724
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 678
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 693
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 694
    const/4 v0, 0x4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 695
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 696
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 271
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 273
    :cond_0
    return-void
.end method

.method private jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 4

    .prologue
    .line 712
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    .line 713
    .local v1, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    .line 714
    sget-object v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 715
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 716
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget-object v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    aget v2, v3, v2

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    .line 717
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget-object v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    iget v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    aget v2, v3, v2

    iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    .line 718
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    .line 719
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    .line 720
    return-object v1
.end method

.method private final jjMoveNfa_0(II)I
    .locals 10
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, "startsAt":I
    const/4 v5, 0x4

    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 301
    const/4 v0, 0x1

    .line 302
    .local v0, "i":I
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v6, 0x0

    aput p1, v5, v6

    .line 303
    const v1, 0x7fffffff

    .line 306
    .local v1, "kind":I
    :goto_0
    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 308
    :cond_0
    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v6, 0x40

    if-ge v5, v6, :cond_8

    .line 310
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v2, v6, v5

    .line 313
    .local v2, "l":J
    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_0

    .line 345
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v0, v4, :cond_1

    .line 377
    .end local v2    # "l":J
    :goto_2
    const v5, 0x7fffffff

    if-eq v1, v5, :cond_3

    .line 379
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 380
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 381
    const v1, 0x7fffffff

    .line 383
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 384
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x4

    if-ne v0, v4, :cond_d

    .line 387
    :goto_3
    return p2

    .line 316
    .restart local v2    # "l":J
    :pswitch_1
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5

    .line 318
    const/16 v5, 0x2e

    if-le v1, v5, :cond_4

    .line 319
    const/16 v1, 0x2e

    .line 320
    :cond_4
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 322
    :cond_5
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    .line 324
    const/16 v5, 0x24

    if-le v1, v5, :cond_6

    .line 325
    const/16 v1, 0x24

    .line 326
    :cond_6
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 328
    :cond_7
    const-wide v6, 0x280000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 330
    const/16 v5, 0x18

    if-le v1, v5, :cond_2

    .line 331
    const/16 v1, 0x18

    goto :goto_1

    .line 335
    :pswitch_2
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 336
    const/16 v1, 0x24

    .line 338
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 341
    :pswitch_3
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 342
    const/16 v1, 0x2e

    .line 344
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 350
    .end local v2    # "l":J
    :cond_8
    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v6, 0x80

    if-ge v5, v6, :cond_b

    .line 352
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long v2, v6, v5

    .line 355
    .restart local v2    # "l":J
    :cond_9
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_1

    .line 363
    :cond_a
    :goto_4
    if-ne v0, v4, :cond_9

    goto/16 :goto_2

    .line 358
    :pswitch_4
    const-wide v6, 0x7fffbfe07fffbfeL

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_a

    .line 359
    const/16 v1, 0x23

    goto :goto_4

    .line 367
    .end local v2    # "l":J
    :cond_b
    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 368
    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 371
    :cond_c
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    .line 375
    if-ne v0, v4, :cond_c

    goto/16 :goto_2

    .line 386
    :cond_d
    :try_start_0
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v5

    goto/16 :goto_3

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 355
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private final jjMoveNfa_1$255f288(I)I
    .locals 14
    .param p1, "curPos"    # I

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0x7fffffff

    const/4 v7, 0x0

    const/16 v10, 0x27

    const/16 v9, 0x29

    .line 428
    const/4 v3, 0x0

    .line 429
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 430
    const/4 v0, 0x1

    .line 431
    .local v0, "i":I
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    aput v7, v6, v7

    .line 432
    const v2, 0x7fffffff

    .line 435
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-ne v6, v11, :cond_0

    .line 436
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 437
    :cond_0
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 439
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 442
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 454
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 501
    :goto_2
    if-eq v2, v11, :cond_3

    .line 503
    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 504
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 505
    const v2, 0x7fffffff

    .line 507
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 508
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 511
    :goto_3
    return p1

    .line 445
    :pswitch_0
    if-le v2, v9, :cond_2

    .line 446
    const/16 v2, 0x29

    goto :goto_1

    .line 449
    :pswitch_1
    if-le v2, v10, :cond_2

    .line 450
    const/16 v2, 0x27

    goto :goto_1

    .line 456
    :cond_4
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 458
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 461
    :cond_5
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 479
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 464
    :pswitch_2
    if-le v2, v9, :cond_7

    .line 465
    const/16 v2, 0x29

    .line 466
    :cond_7
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 467
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 470
    :pswitch_3
    if-le v2, v10, :cond_6

    .line 471
    const/16 v2, 0x27

    goto :goto_4

    .line 474
    :pswitch_4
    if-le v2, v9, :cond_6

    .line 475
    const/16 v2, 0x29

    goto :goto_4

    .line 483
    :cond_8
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 484
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 487
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 499
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto :goto_2

    .line 490
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v9, :cond_a

    .line 491
    const/16 v2, 0x29

    goto :goto_5

    .line 494
    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v10, :cond_a

    .line 495
    const/16 v2, 0x27

    goto :goto_5

    .line 510
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v6

    iput-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 511
    :catch_0
    move-exception v6

    goto :goto_3

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 461
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 487
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

    const/16 v10, 0x2a

    const/16 v9, 0x2d

    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 551
    const/4 v0, 0x1

    .line 552
    .local v0, "i":I
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    aput v7, v6, v7

    .line 553
    const v2, 0x7fffffff

    .line 556
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-ne v6, v11, :cond_0

    .line 557
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 558
    :cond_0
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 560
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 563
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 575
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 622
    :goto_2
    if-eq v2, v11, :cond_3

    .line 624
    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 625
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 626
    const v2, 0x7fffffff

    .line 628
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 629
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 632
    :goto_3
    return p1

    .line 566
    :pswitch_0
    if-le v2, v9, :cond_2

    .line 567
    const/16 v2, 0x2d

    goto :goto_1

    .line 570
    :pswitch_1
    if-le v2, v10, :cond_2

    .line 571
    const/16 v2, 0x2a

    goto :goto_1

    .line 577
    :cond_4
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 579
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 582
    :cond_5
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 600
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 585
    :pswitch_2
    if-le v2, v9, :cond_7

    .line 586
    const/16 v2, 0x2d

    .line 587
    :cond_7
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 588
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 591
    :pswitch_3
    if-le v2, v10, :cond_6

    .line 592
    const/16 v2, 0x2a

    goto :goto_4

    .line 595
    :pswitch_4
    if-le v2, v9, :cond_6

    .line 596
    const/16 v2, 0x2d

    goto :goto_4

    .line 604
    :cond_8
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 605
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 608
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 620
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto :goto_2

    .line 611
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v9, :cond_a

    .line 612
    const/16 v2, 0x2d

    goto :goto_5

    .line 615
    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    cmp-long v6, v6, v12

    if-eqz v6, :cond_a

    if-le v2, v10, :cond_a

    .line 616
    const/16 v2, 0x2a

    goto :goto_5

    .line 631
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v6

    iput-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 632
    :catch_0
    move-exception v6

    goto :goto_3

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 582
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 608
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(J)I
    .locals 7
    .param p1, "active0"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    .line 162
    :cond_0
    invoke-direct {p0, v6, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v0

    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v1

    invoke-direct {p0, v6, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 134
    :sswitch_0
    const-wide v0, 0x550000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 136
    :sswitch_1
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 138
    :sswitch_2
    const-wide v0, 0x2a8000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 140
    :sswitch_3
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 141
    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 144
    :sswitch_4
    const-wide/32 v0, 0xaa00

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 146
    :sswitch_5
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 148
    :sswitch_6
    const-wide/32 v0, 0x481040

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 150
    :sswitch_7
    const-wide/16 v0, 0x80

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 152
    :sswitch_8
    const-wide/32 v0, 0x200010

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 154
    :sswitch_9
    const-wide/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 156
    :sswitch_a
    const-wide/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 158
    :sswitch_b
    const-wide/32 v0, 0x70420

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
        0x61 -> :sswitch_4
        0x63 -> :sswitch_5
        0x65 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6f -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x75 -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJ)I
    .locals 7
    .param p1, "old0"    # J
    .param p3, "active0"    # J

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x2

    .line 166
    and-long/2addr p3, p1

    cmp-long v1, p3, v4

    if-nez v1, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 168
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    .line 264
    :cond_1
    invoke-direct {p0, v6, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    invoke-direct {p0, v6, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 176
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 177
    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_2
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 179
    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 180
    :cond_3
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 181
    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 182
    :cond_4
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 183
    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_5
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 185
    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_6
    const-wide v2, 0x80000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 187
    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_7
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 189
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 190
    :cond_8
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 191
    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 192
    :cond_9
    const-wide v2, 0x400000000L

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 193
    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 196
    :sswitch_1
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 197
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 200
    :sswitch_2
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 201
    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 204
    :sswitch_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 205
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 208
    :sswitch_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 209
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 212
    :sswitch_5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 213
    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 216
    :sswitch_6
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 217
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 220
    :sswitch_7
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 221
    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 224
    :sswitch_8
    const-wide/16 v2, 0x10

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    .line 225
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 226
    :cond_a
    const-wide/16 v2, 0x400

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 227
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 228
    :cond_b
    const-wide/16 v2, 0x800

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    .line 229
    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 230
    :cond_c
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 231
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 234
    :sswitch_9
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 235
    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 238
    :sswitch_a
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d

    .line 239
    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 240
    :cond_d
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 241
    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 244
    :sswitch_b
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    .line 245
    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 246
    :cond_e
    const-wide/32 v2, 0x100000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 247
    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 250
    :sswitch_c
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 251
    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 254
    :sswitch_d
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 255
    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 258
    :sswitch_e
    const-wide/32 v2, 0x8000

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 259
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x67 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x74 -> :sswitch_b
        0x75 -> :sswitch_c
        0x76 -> :sswitch_d
        0x79 -> :sswitch_e
    .end sparse-switch
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 64
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 65
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 66
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 37
    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 39
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    .line 44
    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 46
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    if-nez v0, :cond_0

    .line 48
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 14

    .prologue
    .line 733
    const/4 v8, 0x0

    .line 735
    .local v8, "specialToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v6, 0x0

    .line 742
    .local v6, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v5, -0x1

    iput v5, v0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v5

    iget v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    iput-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 756
    :goto_1
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    .line 774
    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_9

    .line 776
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v6, :cond_1

    .line 777
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 778
    :cond_1
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_3

    .line 780
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v7

    .line 781
    .local v7, "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 783
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 784
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_2
    :goto_3
    return-object v7

    .line 746
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 747
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v7

    goto :goto_3

    .line 759
    :pswitch_0
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 761
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v6

    .line 762
    :goto_4
    goto :goto_2

    .line 761
    :sswitch_0
    const/4 v0, 0x0

    const/4 v5, 0x2

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_4

    :sswitch_1
    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_4

    :sswitch_2
    const/4 v0, 0x0

    const/16 v5, 0x25

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_4

    :sswitch_3
    const/4 v0, 0x0

    const/4 v5, 0x3

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_4

    :sswitch_4
    const/4 v0, 0x0

    const/16 v5, 0x17

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_4

    :sswitch_5
    const-wide/32 v10, 0x44000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_6
    const-wide/32 v10, 0x60000000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_7
    const-wide/32 v10, 0x400000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_8
    const-wide/32 v10, 0x18000000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_9
    const-wide/16 v10, 0x1100

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_a
    const-wide/32 v10, 0x4000000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_b
    const-wide/32 v10, 0x30800

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_c
    const-wide v10, 0x18000a010L

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_d
    const-wide/32 v10, 0x200000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_e
    const-wide/32 v10, 0x100000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_f
    const-wide v10, 0x600000000L

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto :goto_4

    :sswitch_10
    const-wide/32 v10, 0x80600

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto/16 :goto_4

    :sswitch_11
    const-wide/16 v10, 0xa0

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto/16 :goto_4

    :sswitch_12
    const-wide/32 v10, 0x2000000

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto/16 :goto_4

    :sswitch_13
    const-wide/16 v10, 0x40

    invoke-direct {p0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v6

    goto/16 :goto_4

    .line 764
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 766
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1$255f288(I)I

    move-result v6

    .line 767
    :goto_5
    goto/16 :goto_2

    .line 766
    :pswitch_2
    const/4 v0, 0x0

    const/16 v5, 0x28

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_5

    :pswitch_3
    const/4 v0, 0x0

    const/16 v5, 0x26

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_5

    .line 769
    :pswitch_4
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 770
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 771
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2$255f288(I)I

    move-result v6

    :goto_6
    goto/16 :goto_2

    :pswitch_5
    const/4 v0, 0x0

    const/16 v5, 0x2b

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_6

    :pswitch_6
    const/4 v0, 0x0

    const/16 v5, 0x2c

    invoke-direct {p0, v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v6

    goto :goto_6

    .line 786
    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_6

    .line 788
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v5, v5, 0x6

    aget-wide v10, v0, v5

    const-wide/16 v12, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_4

    .line 790
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v7

    .line 791
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    if-nez v8, :cond_5

    .line 792
    move-object v8, v7

    .line 799
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_4
    :goto_7
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 800
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 795
    .restart local v7    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_5
    iput-object v7, v8, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-object v8, v7

    goto :goto_7

    .line 803
    .end local v7    # "matchedToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_6
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_3

    .line 804
    :cond_7
    :goto_8
    :pswitch_7
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_8

    .line 805
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 806
    :cond_8
    const/4 v6, 0x0

    .line 807
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 809
    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 814
    :cond_9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    .line 815
    .local v2, "error_line":I
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 816
    .local v3, "error_column":I
    const/4 v4, 0x0

    .line 817
    .local v4, "error_after":Ljava/lang/String;
    const/4 v1, 0x0

    .line 818
    .local v1, "EOFSeen":Z
    :try_start_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 829
    :goto_9
    if-nez v1, :cond_a

    .line 830
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 831
    const/4 v0, 0x1

    if-gt v6, v0, :cond_13

    const-string v4, ""

    .line 833
    :cond_a
    :goto_a
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIILjava/lang/String;C)V

    throw v0

    .line 803
    .end local v1    # "EOFSeen":Z
    .end local v2    # "error_line":I
    .end local v3    # "error_column":I
    .end local v4    # "error_after":Ljava/lang/String;
    :pswitch_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_8

    :pswitch_9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    const/4 v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto/16 :goto_8

    :pswitch_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :pswitch_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto/16 :goto_8

    :pswitch_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v5, v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    goto/16 :goto_8

    .line 820
    .restart local v1    # "EOFSeen":Z
    .restart local v2    # "error_line":I
    .restart local v3    # "error_column":I
    .restart local v4    # "error_after":Ljava/lang/String;
    :catch_2
    move-exception v0

    const/4 v1, 0x1

    .line 821
    const/4 v0, 0x1

    if-gt v6, v0, :cond_11

    const-string v4, ""

    .line 822
    :goto_b
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v0, v5, :cond_10

    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v0, v5, :cond_12

    .line 823
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 824
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 821
    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 827
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 831
    :cond_13
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 761
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x28 -> :sswitch_2
        0x2c -> :sswitch_3
        0x3a -> :sswitch_4
        0x41 -> :sswitch_5
        0x43 -> :sswitch_6
        0x44 -> :sswitch_7
        0x45 -> :sswitch_8
        0x46 -> :sswitch_9
        0x47 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4d -> :sswitch_c
        0x4e -> :sswitch_d
        0x4f -> :sswitch_e
        0x50 -> :sswitch_f
        0x53 -> :sswitch_10
        0x54 -> :sswitch_11
        0x55 -> :sswitch_12
        0x57 -> :sswitch_13
    .end sparse-switch

    .line 766
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 771
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 803
    :pswitch_data_3
    .packed-switch 0x27
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
