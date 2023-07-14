.class public interface abstract Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;
.super Ljava/lang/Object;
.source "IGenericParamValue.java"


# static fields
.field public static final TYPE_BYTES:I = 0x4

.field public static final TYPE_DICT:I = 0x2

.field public static final TYPE_INT:I = 0x1

.field public static final TYPE_SEQ:I = 0x3

.field public static final TYPE_SEQ_CHUNK:I = 0x6

.field public static final TYPE_SEQ_END:I = 0x7

.field public static final TYPE_SEQ_START:I = 0x5

.field public static final TYPE_STRING:I


# virtual methods
.method public abstract getBytesValue()[B
.end method

.method public abstract getDictValue()Ljava/util/Map;
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
.end method

.method public abstract getIntValue()I
.end method

.method public abstract getSeqValue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParamValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStringValue()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method
