.class public final Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field private jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field private jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

.field private token:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x16

    .line 711
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    .line 712
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    .line 713
    return-void

    .line 711
    nop

    :array_0
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data

    .line 712
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/16 v5, 0x16

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 704
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 720
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 721
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 722
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 816
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(B)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 862
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 864
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 865
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 752
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;B)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 753
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 754
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 755
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 756
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 757
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 759
    :cond_1
    return-void
.end method

.method private addr_spec()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1f

    const/4 v8, -0x1

    .line 471
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>()V

    .line 472
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;
    const/4 v0, 0x1

    .line 473
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    .line 474
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 476
    :try_start_0
    new-instance v5, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>()V

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v6, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V

    .line 482
    const/4 v0, 0x0

    .line 484
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_7

    .line 487
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 494
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_0

    .line 495
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 496
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    .line 476
    :cond_1
    :try_start_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    :goto_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v4, v8, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v4

    :goto_2
    sparse-switch v4, :sswitch_data_1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v6, v3, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 477
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 478
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 494
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 496
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 476
    :sswitch_1
    const/16 v3, 0x1f

    :try_start_6
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    :sswitch_2
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v4, v8, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v4

    :goto_3
    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v6, 0x11

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v7, v4, v6

    :goto_4
    iget-object v4, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v6, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2e

    if-ne v4, v6, :cond_3

    iget v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, v9, :cond_5

    :cond_3
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    goto :goto_4

    :cond_5
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_2

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v6, v3, v4

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    :cond_6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_5

    :sswitch_3
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    goto/16 :goto_1

    :sswitch_4
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    goto/16 :goto_1

    .line 489
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    :try_start_7
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_8

    .line 490
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 492
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_8
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 476
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xe -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method private address()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 136
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;-><init>()V

    .line 137
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    const/4 v0, 0x1

    .line 138
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    .line 139
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 141
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1$134632()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 187
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 165
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 166
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 167
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V

    .line 173
    const/4 v0, 0x0

    .line 175
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_a

    .line 178
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 186
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 187
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 144
    :cond_2
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 146
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 150
    :sswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 151
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 159
    :pswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 160
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 161
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 151
    :cond_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 153
    :pswitch_1
    new-instance v5, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>()V

    const/4 v4, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x4

    :try_start_4
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    sparse-switch v3, :sswitch_data_1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v6, 0x7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v7, v3, v6

    :goto_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_5
    packed-switch v3, :pswitch_data_1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v6, 0x8

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v7, v3, v6

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    :sswitch_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_7
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V

    const/4 v4, 0x0

    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_8

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v4, :cond_5

    :try_start_8
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5
    throw v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_6
    :try_start_9
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_5

    :pswitch_2
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_6
    sparse-switch v3, :sswitch_data_2

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v6, 0x9

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v7, v3, v6

    goto :goto_4

    :cond_7
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_6

    :sswitch_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :cond_8
    :try_start_a
    instance-of v6, v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v6, :cond_9

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v3

    :cond_9
    check-cast v3, Ljava/lang/Error;

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 154
    :pswitch_3
    :try_start_b
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 180
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_a
    :try_start_c
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_b

    .line 181
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 183
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_b
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 151
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 153
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_3
        0xe -> :sswitch_3
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method private angle_addr()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 334
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>()V

    .line 335
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;
    const/4 v0, 0x1

    .line 336
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    .line 337
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 339
    const/4 v3, 0x6

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 340
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 343
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 348
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    .line 349
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 367
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 340
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 342
    :pswitch_0
    new-instance v5, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;-><init>()V

    const/4 v4, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x8

    :try_start_2
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    :goto_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v6, 0xb

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v7, v3, v6

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V

    .line 353
    const/4 v0, 0x0

    .line 355
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_7

    .line 358
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 365
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 366
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 367
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 342
    :cond_2
    :try_start_5
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    :sswitch_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v8, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v6, 0xc

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v7, v3, v6

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_6
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V

    const/4 v4, 0x0

    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_5

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v4, :cond_3

    :try_start_7
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :cond_5
    :try_start_9
    instance-of v6, v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v6, :cond_6

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v3

    :cond_6
    check-cast v3, Ljava/lang/Error;

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 360
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    :try_start_a
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_8

    .line 361
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 363
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_8
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private domain()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 565
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;-><init>()V

    .line 566
    .local v0, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTdomain;
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    .line 568
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 570
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 601
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0x15

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 602
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 603
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :catchall_0
    move-exception v2

    .line 607
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 608
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v2

    .line 570
    :cond_0
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 572
    :sswitch_0
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    .line 575
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 581
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0x13

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 608
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 575
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_1
    :try_start_2
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 584
    :sswitch_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 589
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0x14

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 592
    :goto_5
    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    .line 593
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v3, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 586
    :pswitch_0
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    .line 587
    goto :goto_5

    .line 594
    :cond_3
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    goto :goto_1

    .line 598
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_2
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 575
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    .line 584
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 847
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 848
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 849
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 848
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_0

    .line 850
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 852
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_1
    return-object v2
.end method

.method private final jj_2_1$134632()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 614
    const v2, 0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 615
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 617
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save$255f295(I)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 615
    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save$255f295(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save$255f295(I)V

    throw v0
.end method

.method private final jj_2_2$134632()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 621
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 622
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 624
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save$255f295(I)V

    :goto_1
    return v0

    .line 622
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save$255f295(I)V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save$255f295(I)V

    throw v0
.end method

.method private final jj_3R_8()Z
    .locals 8

    .prologue
    const/16 v5, 0x1f

    const/16 v7, 0x9

    const/16 v6, 0xe

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 648
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    .line 651
    :cond_0
    :goto_1
    return v0

    .line 648
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :cond_2
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_1

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_2

    .line 649
    :cond_4
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_3
    if-eqz v2, :cond_8

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_4
    if-nez v2, :cond_0

    move v0, v1

    .line 651
    goto :goto_1

    .line 650
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :cond_6
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_5
    if-eqz v2, :cond_5

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_5

    :cond_8
    move v2, v1

    goto :goto_4
.end method

.method private final jj_3_1()Z
    .locals 1

    .prologue
    .line 655
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_2()Z
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 7
    .param p1, "kind"    # I
    .param p2, "pos"    # I

    .prologue
    .line 869
    const/16 v4, 0x64

    if-lt p2, v4, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_2

    .line 871
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v4, v5

    goto :goto_0

    .line 872
    :cond_2
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v4, :cond_0

    .line 873
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 874
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v2, v4, :cond_3

    .line 875
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 877
    :cond_3
    const/4 v1, 0x0

    .line 878
    .local v1, "exists":Z
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 879
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 880
    .local v3, "oldentry":[I
    array-length v4, v3

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 881
    const/4 v1, 0x1

    .line 882
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 883
    aget v4, v3, v2

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_8

    .line 884
    const/4 v1, 0x0

    .line 888
    :cond_5
    if-eqz v1, :cond_4

    .line 891
    .end local v3    # "oldentry":[I
    :cond_6
    if-nez v1, :cond_7

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 892
    :cond_7
    if-eqz p2, :cond_0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, p2, -0x1

    aput p1, v4, v5

    goto :goto_0

    .line 882
    .restart local v3    # "oldentry":[I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 11
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/16 v10, 0x22

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 793
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .local v2, "oldToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v4, v4, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 795
    :goto_0
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 796
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v4, v4, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v4, p1, :cond_4

    .line 797
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 798
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v5, 0x64

    if-le v4, v5, :cond_3

    .line 799
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 800
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 801
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    .line 802
    .local v0, "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_2
    if-eqz v0, :cond_2

    .line 803
    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 804
    :cond_0
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_2

    .line 794
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 800
    .restart local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 808
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v3

    .line 810
    :cond_4
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 811
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 812
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    new-array v6, v10, [Z

    move v4, v3

    :goto_3
    if-ge v4, v10, :cond_5

    aput-boolean v3, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_6

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v9, v6, v4

    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    :cond_6
    move v5, v3

    :goto_4
    const/16 v4, 0x16

    if-ge v5, v4, :cond_a

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v4, v4, v5

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v4, v7, :cond_9

    move v4, v3

    :goto_5
    const/16 v7, 0x20

    if-ge v4, v7, :cond_9

    sget-object v7, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v7, v7, v5

    shl-int v8, v9, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    aput-boolean v9, v6, v4

    :cond_7
    sget-object v7, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v7, v7, v5

    shl-int v8, v9, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    add-int/lit8 v7, v4, 0x20

    aput-boolean v9, v6, v7

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    :cond_a
    move v4, v3

    :goto_6
    if-ge v4, v10, :cond_c

    aget-boolean v5, v6, v4

    if-eqz v5, :cond_b

    new-array v5, v9, [I

    iput-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v4, v5, v3

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    iput-boolean v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    move v5, v3

    :goto_7
    const/4 v4, 0x2

    if-ge v5, v4, :cond_f

    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v4, v4, v5

    :cond_d
    iget v6, v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v6, v7, :cond_e

    iget v6, v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v6, v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    packed-switch v5, :pswitch_data_0

    :cond_e
    :goto_8
    iget-object v4, v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v4, :cond_d

    :goto_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_7

    :pswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_8

    :catch_0
    move-exception v4

    goto :goto_9

    :pswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_f
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    invoke-direct {p0, v3, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v5, v4, [[I

    move v4, v3

    :goto_a
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_10

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aput-object v3, v5, v4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_a

    :cond_10
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 859
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0
.end method

.method private final jj_save$255f295(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v4, 0x7fffffff

    .line 962
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    .line 963
    .local v0, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_0
    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_0

    .line 964
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .end local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .local v1, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    move-object v0, v1

    .line 967
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v2, v4

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    .line 968
    return-void

    .line 965
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 4
    .param p1, "kind"    # I

    .prologue
    .line 818
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_1

    .line 819
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    .line 820
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v2, :cond_0

    .line 821
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 828
    :goto_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_3

    .line 829
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 830
    .local v1, "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 823
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 826
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 831
    .restart local v0    # "i":I
    .restart local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 833
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 835
    :goto_2
    return v2

    .line 834
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    .line 835
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;

    .prologue
    .line 52
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 53
    return-void
.end method

.method private jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;

    .prologue
    .line 48
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 49
    return-void
.end method

.method private mailbox()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 194
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>()V

    .line 195
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    const/4 v0, 0x1

    .line 196
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    .line 197
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 199
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2$134632()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 233
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 202
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 209
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 212
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 213
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V

    .line 219
    const/4 v0, 0x0

    .line 221
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 224
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 232
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 233
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 202
    :cond_2
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 204
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 208
    :sswitch_1
    new-instance v5, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>()V

    const/4 v4, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_6
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V

    const/4 v4, 0x0

    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_4

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v4, :cond_3

    :try_start_7
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    instance-of v6, v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v6, :cond_5

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v3

    :cond_5
    check-cast v3, Ljava/lang/Error;

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 226
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6
    :try_start_9
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 227
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 229
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method private phrase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 432
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;-><init>()V

    .line 433
    .local v0, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTphrase;
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    .line 435
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 439
    :sswitch_0
    :try_start_0
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 447
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v2, 0xd

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v1, v2

    .line 448
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 449
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :catchall_0
    move-exception v1

    .line 463
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 464
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v1

    .line 439
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 441
    :sswitch_1
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 451
    :goto_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_2
    sparse-switch v1, :sswitch_data_1

    .line 457
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v2, 0xe

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 464
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 444
    :sswitch_2
    const/16 v1, 0x1f

    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 451
    :cond_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 439
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 451
    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 39
    :try_start_0
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v4}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope$68549632()V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v7, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v6, v1, v5

    :goto_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v7, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v5, 0x2

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v6, v1, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v4}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 40
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/Node;

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    :try_end_2
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 39
    :cond_0
    :try_start_3
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope$68549632()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    move v2, v3

    :goto_3
    if-eqz v2, :cond_1

    :try_start_6
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope$5dc282c6(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v1
    :try_end_6
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_6 .. :try_end_6} :catch_1

    .line 41
    :catch_1
    move-exception v0

    .line 42
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    .end local v0    # "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    :cond_2
    :try_start_7
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v7, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_4
    sparse-switch v1, :sswitch_data_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v5, 0x3

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v6, v1, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_3
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    :sswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :cond_4
    :try_start_8
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method
