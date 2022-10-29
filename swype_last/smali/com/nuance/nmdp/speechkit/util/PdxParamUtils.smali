.class public final Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;
.super Ljava/lang/Object;
.source "PdxParamUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .registers 8
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
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

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

    packed-switch v5, :pswitch_data_5e

    goto :goto_c

    .line 31
    :pswitch_2c
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 28
    :pswitch_34
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getIntValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_c

    .line 34
    :pswitch_3c
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getBytesValue()[B

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addByteString(Ljava/lang/String;[B)V

    goto :goto_c

    .line 37
    :pswitch_44
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_c

    .line 40
    :pswitch_50
    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getSeqValue()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createSeqFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/List;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    goto :goto_c

    .line 44
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    :cond_5c
    return-object v3

    .line 25
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_34
        :pswitch_44
        :pswitch_50
        :pswitch_3c
    .end packed-switch
.end method

.method public static createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .registers 6
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
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 81
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getType(Ljava/lang/String;)S

    move-result v3

    .line 84
    sparse-switch v3, :sswitch_data_60

    .line 105
    const-string/jumbo v3, "PdxValue"

    const-string/jumbo v4, "Unsupported PDX type found in dictionary, skipping"

    invoke-static {v3, v4}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 87
    :sswitch_27
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getDictionary(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_a

    .line 90
    :sswitch_33
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_a

    .line 93
    :sswitch_3f
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    goto :goto_a

    .line 96
    :sswitch_47
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 99
    :sswitch_4f
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getAsciiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 102
    :sswitch_57
    invoke-interface {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getByteString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;[B)V

    goto :goto_a

    .line 109
    .end local v1    # "key":Ljava/lang/String;
    :cond_5f
    return-object v2

    .line 84
    :sswitch_data_60
    .sparse-switch
        0x4 -> :sswitch_57
        0x10 -> :sswitch_33
        0x16 -> :sswitch_4f
        0xc0 -> :sswitch_3f
        0xc1 -> :sswitch_47
        0xe0 -> :sswitch_27
    .end sparse-switch
.end method

.method public static createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .registers 5
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
    :goto_7
    invoke-interface {p0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_58

    .line 118
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getType(I)S

    move-result v2

    .line 119
    sparse-switch v2, :sswitch_data_5a

    .line 140
    const-string/jumbo v2, "PdxValue"

    const-string/jumbo v3, "Unsupported PDX type found in sequence, skipping"

    invoke-static {v2, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 122
    :sswitch_20
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getDictionary(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_1d

    .line 125
    :sswitch_2c
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getSequence(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_1d

    .line 128
    :sswitch_38
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(I)V

    goto :goto_1d

    .line 131
    :sswitch_40
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getUTF8String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    goto :goto_1d

    .line 134
    :sswitch_48
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getAsciiString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    goto :goto_1d

    .line 137
    :sswitch_50
    invoke-interface {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getByteString(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add([B)V

    goto :goto_1d

    .line 144
    :cond_58
    return-object v1

    .line 119
    nop

    :sswitch_data_5a
    .sparse-switch
        0x4 -> :sswitch_50
        0x10 -> :sswitch_2c
        0x16 -> :sswitch_48
        0xc0 -> :sswitch_38
        0xc1 -> :sswitch_40
        0xe0 -> :sswitch_20
    .end sparse-switch
.end method

.method public static createSeqFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/List;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .registers 6
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
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;

    .line 53
    .local v2, "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_4e

    goto :goto_8

    .line 59
    :pswitch_1c
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addUTF8String(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    :pswitch_24
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getIntValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addInteger(I)V

    goto :goto_8

    .line 62
    :pswitch_2c
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getBytesValue()[B

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addByteString([B)V

    goto :goto_8

    .line 65
    :pswitch_34
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getDictValue()Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createDictFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/Map;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto :goto_8

    .line 68
    :pswitch_40
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;->getSeqValue()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createSeqFromValue(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;Ljava/util/List;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    goto :goto_8

    .line 72
    .end local v2    # "value":Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    :cond_4c
    return-object v1

    .line 53
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
        :pswitch_34
        :pswitch_40
        :pswitch_2c
    .end packed-switch
.end method
