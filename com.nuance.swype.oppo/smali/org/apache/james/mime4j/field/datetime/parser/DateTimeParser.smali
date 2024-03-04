.class public final Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.super Ljava/lang/Object;
.source "DateTimeParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;,
        Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field private jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field private jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field private jj_ntk:I

.field private token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field private token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 418
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    .line 419
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    .line 420
    return-void

    .line 418
    :array_0
    .array-data 4
        0x2
        0x7f0
        0x7f0
        0x7ff800
        0x800000
        -0x1000000
        -0x2000000
    .end array-data

    .line 419
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf
        0xf
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 524
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    .line 526
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 453
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, p1, v4}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;B)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 454
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 455
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 456
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 457
    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 9
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/16 v8, 0x31

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 490
    :goto_0
    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 491
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-ne v2, p1, :cond_1

    .line 492
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 493
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    return-object v1

    .line 489
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_0

    .line 495
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 496
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 497
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    new-array v4, v8, [Z

    move v2, v1

    :goto_1
    if-ge v2, v8, :cond_2

    aput-boolean v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    if-ltz v2, :cond_3

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    aput-boolean v7, v4, v2

    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    :cond_3
    move v3, v1

    :goto_2
    const/4 v2, 0x7

    if-ge v3, v2, :cond_7

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aget v2, v2, v3

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    if-ne v2, v5, :cond_6

    move v2, v1

    :goto_3
    const/16 v5, 0x20

    if-ge v2, v5, :cond_6

    sget-object v5, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    aget v5, v5, v3

    shl-int v6, v7, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    aput-boolean v7, v4, v2

    :cond_4
    sget-object v5, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    aget v5, v5, v3

    shl-int v6, v7, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    add-int/lit8 v5, v2, 0x20

    aput-boolean v7, v4, v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_4
    if-ge v2, v8, :cond_9

    aget-boolean v3, v4, v2

    if-eqz v3, :cond_8

    new-array v3, v7, [I

    iput-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    aput v2, v3, v1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [[I

    move v2, v1

    :goto_5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_a
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V

    throw v1
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 521
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0
.end method

.method private static parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
    .locals 2
    .param p0, "token"    # Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v10, 0x2e

    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 133
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v4, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v5, v4, v2

    :goto_1
    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v5

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v4, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_2
    packed-switch v4, :pswitch_data_1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v4, v2, v1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v1

    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v4, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_3
    packed-switch v4, :pswitch_data_2

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v2, 0x2

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v4, v1, v2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v1

    :cond_1
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_3

    :pswitch_1
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    :goto_4
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v4, v4, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_4

    :pswitch_3
    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_4

    :pswitch_4
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_4

    :pswitch_5
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_4

    :pswitch_6
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_4

    :pswitch_7
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_4

    :cond_2
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_2

    :pswitch_8
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v1, v2

    :goto_5
    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    new-instance v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;

    invoke-direct {v6, v4, v1, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v5

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v7

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v1

    :goto_6
    packed-switch v1, :pswitch_data_3

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v9, v1, v4

    move v1, v8

    :goto_7
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v4, v3, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_8
    packed-switch v4, :pswitch_data_4

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v2, 0x5

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v4, v1, v2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v1

    :pswitch_9
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x2

    goto :goto_5

    :pswitch_a
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5

    :pswitch_b
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x4

    goto :goto_5

    :pswitch_c
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x5

    goto :goto_5

    :pswitch_d
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x6

    goto :goto_5

    :pswitch_e
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x7

    goto :goto_5

    :pswitch_f
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v1, 0x8

    goto :goto_5

    :pswitch_10
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v1, 0x9

    goto/16 :goto_5

    :pswitch_11
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v1, 0xa

    goto/16 :goto_5

    :pswitch_12
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v1, 0xb

    goto/16 :goto_5

    :pswitch_13
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v1, 0xc

    goto/16 :goto_5

    :cond_3
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_6

    :pswitch_14
    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    goto :goto_7

    :cond_4
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_8

    :pswitch_15
    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v4

    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v9

    iget-object v4, v4, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const-string v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    :cond_5
    mul-int/2addr v2, v9

    :goto_9
    new-instance v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;

    invoke-direct {v9, v5, v7, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;-><init>(IIII)V

    new-instance v0, Lorg/apache/james/mime4j/field/datetime/DateTime;

    iget-object v1, v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    iget v2, v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    iget v3, v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    iget v4, v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->hour:I

    iget v5, v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->minute:I

    iget v6, v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->second:I

    iget v7, v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->zone:I

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/datetime/DateTime;-><init>(Ljava/lang/String;IIIIII)V

    .line 134
    .local v0, "dt":Lorg/apache/james/mime4j/field/datetime/DateTime;
    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 135
    return-object v0

    .line 133
    .end local v0    # "dt":Lorg/apache/james/mime4j/field/datetime/DateTime;
    :pswitch_16
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v2, v3, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v2

    :goto_a
    packed-switch v2, :pswitch_data_5

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v2, 0x6

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v4, v1, v2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v1

    :cond_6
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_a

    :pswitch_17
    const/16 v2, 0x19

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v2, v8

    :goto_b
    mul-int/lit8 v2, v2, 0x64

    goto :goto_9

    :pswitch_18
    const/16 v2, 0x1a

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v2, v8

    goto :goto_b

    :pswitch_19
    const/16 v2, 0x1b

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x5

    goto :goto_b

    :pswitch_1a
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x4

    goto :goto_b

    :pswitch_1b
    const/16 v2, 0x1d

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x6

    goto :goto_b

    :pswitch_1c
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x5

    goto :goto_b

    :pswitch_1d
    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x7

    goto :goto_b

    :pswitch_1e
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x6

    goto :goto_b

    :pswitch_1f
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x8

    goto :goto_b

    :pswitch_20
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v2, -0x7

    goto :goto_b

    :pswitch_21
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move v2, v8

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x19
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
