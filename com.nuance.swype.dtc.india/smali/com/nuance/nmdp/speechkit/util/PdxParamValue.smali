.class public Lcom/nuance/nmdp/speechkit/util/PdxParamValue;
.super Ljava/lang/Object;
.source "PdxParamValue.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;


# instance fields
.field private final _bytes:[B

.field private final _dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;",
            ">;"
        }
    .end annotation
.end field

.field private final _int:I

.field private final _seq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;",
            ">;"
        }
    .end annotation
.end field

.field private final _str:Ljava/lang/String;

.field private final _type:I


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .locals 8
    .param p1, "value"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->getType()I

    move-result v4

    iput v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_type:I

    .line 30
    iget v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_type:I

    packed-switch v4, :pswitch_data_0

    .line 84
    iput v5, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_int:I

    .line 85
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_str:Ljava/lang/String;

    .line 86
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_bytes:[B

    .line 87
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    .line 88
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    .line 91
    .end local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :pswitch_0
    iput v5, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_int:I

    .line 34
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_str:Ljava/lang/String;

    .line 35
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_bytes:[B

    .line 36
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    .line 37
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    .line 39
    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 40
    .end local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->getEntries()Ljava/util/Set;

    move-result-object v4

    .line 41
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    invoke-direct {v7, v4}, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :pswitch_1
    move-object v2, p1

    .line 47
    check-cast v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    .line 49
    .local v2, "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    iput v5, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_int:I

    .line 50
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_str:Ljava/lang/String;

    .line 51
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_bytes:[B

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    .line 53
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    .line 55
    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->getValues()Ljava/util/List;

    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    .line 58
    .local v3, "v":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    new-instance v5, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;

    invoke-direct {v5, v3}, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "seq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .end local v3    # "v":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :pswitch_2
    iput v5, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_int:I

    .line 64
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_str:Ljava/lang/String;

    .line 65
    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;

    .end local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->get()[B

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_bytes:[B

    .line 66
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    .line 67
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    goto :goto_0

    .line 70
    .restart local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :pswitch_3
    iput v5, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_int:I

    .line 71
    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    .end local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->get()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_str:Ljava/lang/String;

    .line 72
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_bytes:[B

    .line 73
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    .line 74
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    goto/16 :goto_0

    .line 77
    .restart local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :pswitch_4
    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    .end local p1    # "value":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;->get()I

    move-result v4

    iput v4, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_int:I

    .line 78
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_str:Ljava/lang/String;

    .line 79
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_bytes:[B

    .line 80
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    .line 81
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    goto/16 :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBytesValue()[B
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_bytes:[B

    return-object v0
.end method

.method public getDictValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_dict:Ljava/util/Map;

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_int:I

    return v0
.end method

.method public getSeqValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_seq:Ljava/util/List;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_str:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;->_type:I

    return v0
.end method
