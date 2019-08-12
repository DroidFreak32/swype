.class public final Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
.super Ljava/lang/Object;
.source "ContentTypeParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field private jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field private jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

.field private jj_ntk:I

.field private paramNames:Ljava/util/ArrayList;

.field private paramValues:Ljava/util/ArrayList;

.field private subtype:Ljava/lang/String;

.field private token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

.field private token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I

    .line 123
    return-void

    .line 122
    nop

    :array_0
    .array-data 4
        0x2
        0x10
        0x280000
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    .line 119
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    .line 224
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    .line 226
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 153
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v1, p1, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;B)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 154
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 155
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 156
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 157
    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 9
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/16 v8, 0x18

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 190
    :goto_0
    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 191
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    if-ne v2, p1, :cond_1

    .line 192
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 193
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    return-object v1

    .line 189
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_0

    .line 195
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 196
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 197
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    new-array v4, v8, [Z

    move v2, v1

    :goto_1
    if-ge v2, v8, :cond_2

    aput-boolean v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    if-ltz v2, :cond_3

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    aput-boolean v7, v4, v2

    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    :cond_3
    move v3, v1

    :goto_2
    const/4 v2, 0x3

    if-ge v3, v2, :cond_6

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aget v2, v2, v3

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    if-ne v2, v5, :cond_5

    move v2, v1

    :goto_3
    const/16 v5, 0x20

    if-ge v2, v5, :cond_5

    sget-object v5, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I

    aget v5, v5, v3

    shl-int v6, v7, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    aput-boolean v7, v4, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_4
    if-ge v2, v8, :cond_8

    aget-boolean v3, v4, v2

    if-eqz v3, :cond_7

    new-array v3, v7, [I

    iput-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    aput v2, v3, v1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [[I

    move v2, v1

    :goto_5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_9
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    sget-object v4, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/Token;[[I[Ljava/lang/String;)V

    throw v1
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_0
.end method


# virtual methods
.method public final getParamNames()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getParamValues()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final parseAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0x15

    .line 59
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;

    iget-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v2, v0, v1

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 61
    return-void

    .line 59
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v2, v0, v1

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    :goto_3
    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
