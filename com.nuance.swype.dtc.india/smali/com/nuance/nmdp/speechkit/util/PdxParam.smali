.class public Lcom/nuance/nmdp/speechkit/util/PdxParam;
.super Ljava/lang/Object;
.source "PdxParam.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _value:Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/PdxParam;->_name:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;

    invoke-direct {v0, p2}, Lcom/nuance/nmdp/speechkit/util/PdxParamValue;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParam;->_value:Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;

    .line 20
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParam;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/PdxParam;->_value:Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;

    return-object v0
.end method
