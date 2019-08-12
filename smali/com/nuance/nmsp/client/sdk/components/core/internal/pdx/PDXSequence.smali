.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0, p1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->getLength([BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->getLengthSize(I)I

    move-result v4

    add-int/2addr v2, v4

    new-array v4, v0, [B

    array-length v5, v4

    invoke-static {p1, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    sparse-switch v3, :sswitch_data_0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PDXSequence() Unknown PDXClass type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-direct {v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-direct {v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-direct {v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-direct {v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;

    invoke-direct {v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_3
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public addAsciiString(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-direct {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addByteString([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-direct {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;-><init>([B)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v0

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "PDXSequence.addDictionary() value is not a valid dictionary."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid dictionary. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addInteger(I)V
    .locals 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-direct {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "PDXSequence.addSequence() value is not a valid sequence."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a valid sequence. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addUTF8String(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-direct {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getAsciiString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getAsciiString() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getAsciiString() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a PDXAsciiString. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteString(I)[B
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getByteString() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getByteString() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a PDXByteString. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getDictionary(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getDictionary() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getDictionary() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a PDXDictionary. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    return-object v0
.end method

.method public getInteger(I)I
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getInteger() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getInteger() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a PDXInteger. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->getValue()I

    move-result v0

    return v0
.end method

.method public getSequence(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getSequence() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getSequence() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a PDXSequence. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    return-object v0
.end method

.method public getType(I)S
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getType() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v0

    return v0
.end method

.method public getUTF8String(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getUTF8String() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0xc1

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXSequence.getUTF8String() index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a PDXUTF8String. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index is of wrong type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    :try_start_0
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PDXSequence.toByteArray() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_2
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_3
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_4
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_5
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :sswitch_6
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_3
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_2
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(I)Ljava/lang/String;
    .locals 6

    const-string v4, ""

    const-string v2, ""

    const-string v0, ""

    const/4 v1, 0x0

    move-object v3, v2

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_0

    :cond_0
    if-lez p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[ \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<INT> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->getValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<BYTES> \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->getValue()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<UTF8> \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<ASCII> \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<NULL> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v1, v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_3
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method
