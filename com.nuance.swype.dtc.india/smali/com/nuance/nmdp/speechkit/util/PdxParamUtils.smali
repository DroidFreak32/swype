.class public final Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;
.super Ljava/lang/Object;
.source "PdxParamUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .locals 6
    .param p0, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;",
            ">;)",
            "Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;>;"
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v3

    .line 21
    .local v3, "ret":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;

    .line 25
    .local v4, "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :pswitch_1
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getIntValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 34
    :pswitch_2
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getBytesValue()[B

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addByteString(Ljava/lang/String;[B)V

    goto :goto_0

    .line 37
    :pswitch_3
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_0

    .line 40
    :pswitch_4
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getSeqValue()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createSeqFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/List;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    goto :goto_0

    .line 44
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    :cond_0
    return-object v3

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 5
    .param p0, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 77
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>(Ljava/util/Map;)V

    .line 78
    .local v2, "ret":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    invoke-interface {p0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 79
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getType(Ljava/lang/String;)S

    move-result v3

    .line 84
    sparse-switch v3, :sswitch_data_0

    .line 105
    const-string/jumbo v3, "PdxValue"

    const-string/jumbo v4, "Unsupported PDX type found in dictionary, skipping"

    invoke-static {v3, v4}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :sswitch_0
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getDictionary(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_0

    .line 90
    :sswitch_1
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_0

    .line 93
    :sswitch_2
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    goto :goto_0

    .line 96
    :sswitch_3
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :sswitch_4
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getAsciiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :sswitch_5
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getByteString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 109
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x10 -> :sswitch_1
        0x16 -> :sswitch_4
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .locals 4
    .param p0, "seq"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    .prologue
    .line 115
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>(Ljava/util/List;)V

    .line 116
    .local v1, "ret":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 118
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getType(I)S

    move-result v2

    .line 119
    sparse-switch v2, :sswitch_data_0

    .line 140
    const-string/jumbo v2, "PdxValue"

    const-string/jumbo v3, "Unsupported PDX type found in sequence, skipping"

    invoke-static {v2, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :sswitch_0
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getDictionary(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_1

    .line 125
    :sswitch_1
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getSequence(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_1

    .line 128
    :sswitch_2
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(I)V

    goto :goto_1

    .line 131
    :sswitch_3
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getUTF8String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :sswitch_4
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getAsciiString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :sswitch_5
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getByteString(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add([B)V

    goto :goto_1

    .line 144
    :cond_0
    return-object v1

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x10 -> :sswitch_1
        0x16 -> :sswitch_4
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createSeqFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/List;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 4
    .param p0, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;",
            ">;)",
            "Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;>;"
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v1

    .line 51
    .local v1, "ret":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;

    .line 53
    .local v2, "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addUTF8String(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getIntValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addInteger(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getBytesValue()[B

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addByteString([B)V

    goto :goto_0

    .line 65
    :pswitch_3
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_0

    .line 68
    :pswitch_4
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getSeqValue()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createSeqFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/List;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    goto :goto_0

    .line 72
    .end local v2    # "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    :cond_0
    return-object v1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
