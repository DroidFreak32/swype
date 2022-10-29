.class Lcom/google/api/client/extensions/android/json/AndroidJsonParser;
.super Lcom/google/api/client/json/JsonParser;
.source "AndroidJsonParser.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/android/json/AndroidJsonParser$1;
    }
.end annotation


# instance fields
.field private currentNameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentText:Ljava/lang/String;

.field private currentToken:Lcom/google/api/client/json/JsonToken;

.field private final factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

.field private final reader:Landroid/util/JsonReader;


# direct methods
.method constructor <init>(Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;Landroid/util/JsonReader;)V
    .registers 4
    .param p1, "factory"    # Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;
    .param p2, "reader"    # Landroid/util/JsonReader;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    .line 55
    iput-object p2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 58
    return-void
.end method

.method private checkNumber()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_11

    :cond_c
    const/4 v0, 0x1

    .line 1037
    :goto_d
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 132
    return-void

    .line 130
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 63
    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 108
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getByteValue()B
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 83
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method public getCurrentToken()Lcom/google/api/client/json/JsonToken;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 114
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 120
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    return-object v0
.end method

.method public getFloatValue()F
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 102
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 96
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .registers 3

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 126
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShortValue()S
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 89
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    return-object v0
.end method

.method public nextToken()Lcom/google/api/client/json/JsonToken;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    if-eqz v1, :cond_12

    .line 142
    sget-object v1, Lcom/google/api/client/extensions/android/json/AndroidJsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    iget-object v2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v2}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_104

    .line 159
    :cond_12
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_17} :catch_40

    move-result-object v0

    .line 163
    .local v0, "peek":Landroid/util/JsonToken;
    :goto_18
    sget-object v1, Lcom/google/api/client/extensions/android/json/AndroidJsonParser$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v0}, Landroid/util/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_10c

    .line 213
    iput-object v3, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 214
    iput-object v3, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 216
    :goto_27
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    return-object v1

    .line 144
    .end local v0    # "peek":Landroid/util/JsonToken;
    :pswitch_2a
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 145
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 148
    :pswitch_35
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 149
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 161
    :catch_40
    move-exception v1

    sget-object v0, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    .restart local v0    # "peek":Landroid/util/JsonToken;
    goto :goto_18

    .line 165
    :pswitch_44
    const-string/jumbo v1, "["

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 166
    sget-object v1, Lcom/google/api/client/json/JsonToken;->START_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_27

    .line 169
    :pswitch_4e
    const-string/jumbo v1, "]"

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 170
    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 171
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    iget-object v2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_27

    .line 175
    :pswitch_6a
    const-string/jumbo v1, "{"

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 176
    sget-object v1, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_27

    .line 179
    :pswitch_74
    const-string/jumbo v1, "}"

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 180
    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 181
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    iget-object v2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_27

    .line 185
    :pswitch_90
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 186
    const-string/jumbo v1, "true"

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 187
    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_27

    .line 189
    :cond_a2
    const-string/jumbo v1, "false"

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 190
    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_FALSE:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_27

    .line 194
    :pswitch_ad
    const-string/jumbo v1, "null"

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 195
    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NULL:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 196
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextNull()V

    goto/16 :goto_27

    .line 199
    :pswitch_bd
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 200
    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_27

    .line 203
    :pswitch_cb
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e4

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    :goto_e0
    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_27

    :cond_e4
    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    goto :goto_e0

    .line 208
    :pswitch_e7
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 209
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 210
    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    iget-object v2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 142
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_35
    .end packed-switch

    .line 163
    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_4e
        :pswitch_6a
        :pswitch_74
        :pswitch_90
        :pswitch_ad
        :pswitch_bd
        :pswitch_cb
        :pswitch_e7
    .end packed-switch
.end method

.method public skipChildren()Lcom/google/api/client/json/JsonParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    if-eqz v0, :cond_11

    .line 222
    sget-object v0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v1}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 237
    :cond_11
    :goto_11
    return-object p0

    .line 224
    :pswitch_12
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 225
    const-string/jumbo v0, "]"

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_11

    .line 229
    :pswitch_21
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 230
    const-string/jumbo v0, "}"

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_11

    .line 222
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_12
        :pswitch_21
    .end packed-switch
.end method
