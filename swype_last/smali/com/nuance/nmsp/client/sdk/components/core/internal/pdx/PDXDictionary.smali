.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xe0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/16 v0, 0xe0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a([B)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 7

    const/16 v1, 0xe0

    const/4 v3, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    array-length v0, p1

    if-lez v0, :cond_1e

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_1f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXDictionary() Expected a dictionary. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getLength([BI)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a([B)V

    goto :goto_1e
.end method

.method private a([B)V
    .registers 9

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2c

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PDXDictionary.setContent() Expected an ASCII string but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_2b
    return-void

    :cond_2c
    invoke-virtual {p0, p1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getLength([BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getLengthSize(I)I

    move-result v3

    add-int/2addr v2, v3

    new-array v3, v0, [B

    array-length v4, v3

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {p0, p1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getLength([BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getLengthSize(I)I

    move-result v5

    add-int/2addr v3, v5

    new-array v5, v0, [B

    array-length v6, v5

    invoke-static {p1, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    sparse-switch v4, :sswitch_data_ca

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PDXDictionary.setContent() Unknown PDXClass type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_2

    :sswitch_77
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-direct {v4, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :sswitch_82
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-direct {v4, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_8e
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-direct {v4, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_9a
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-direct {v4, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_a6
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;

    invoke-direct {v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_b2
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v4, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_be
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v4, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>([B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_data_ca
    .sparse-switch
        0x4 -> :sswitch_82
        0x5 -> :sswitch_a6
        0x10 -> :sswitch_be
        0x16 -> :sswitch_9a
        0xc0 -> :sswitch_77
        0xc1 -> :sswitch_8e
        0xe0 -> :sswitch_b2
    .end sparse-switch
.end method


# virtual methods
.method public addAsciiString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_25

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-direct {v0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addByteString(Ljava/lang/String;[B)V
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_25

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-direct {v0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;-><init>([B)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_25

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object v0, p2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v0

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_41

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXDictionary.addDictionary() value is not a valid dictionary."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is not a valid dictionary. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInteger(Ljava/lang/String;I)V
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-direct {v0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_25

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object v0, p2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_41

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXDictionary.addSequence() value is not a valid sequence."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is not a valid sequence. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUTF8String(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_25

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-direct {v0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "PDXDictionary.containsKey key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAsciiString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    if-nez v0, :cond_3a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getAsciiString() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_67

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getAsciiString() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a PDXAsciiString. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteString(Ljava/lang/String;)[B
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    if-nez v0, :cond_3a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getByteString() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_66

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getByteString() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a PDXByteString. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getClass(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    return-object v0
.end method

.method public getContent()[B
    .registers 7

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-direct {v3, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;-><init>(Ljava/lang/String;)V

    :try_start_1c
    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v3

    sparse-switch v3, :sswitch_data_a2

    goto :goto_b

    :sswitch_33
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3c} :catch_3d

    goto :goto_b

    :catch_3d
    move-exception v0

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PDXDictionary.getContent() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_b

    :sswitch_5f
    :try_start_5f
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_b

    :sswitch_69
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_b

    :sswitch_73
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_b

    :sswitch_7d
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_b

    :sswitch_87
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_b

    :sswitch_92
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_9b} :catch_3d

    goto/16 :goto_b

    :cond_9d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :sswitch_data_a2
    .sparse-switch
        0x4 -> :sswitch_33
        0x5 -> :sswitch_7d
        0x10 -> :sswitch_92
        0x16 -> :sswitch_73
        0xc0 -> :sswitch_5f
        0xc1 -> :sswitch_69
        0xe0 -> :sswitch_87
    .end sparse-switch
.end method

.method public getDictionary(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    if-nez v0, :cond_3a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getDictionary() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_67

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getDictionary() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a PDXDictionary. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    if-nez v0, :cond_42

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getInteger() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_77

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getInteger() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a PDXInteger. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_6e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->getValue()I

    move-result v0

    return v0
.end method

.method public getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    if-nez v0, :cond_3a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getSequence() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_67

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getSequence() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a PDXSequence. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)S
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v0

    return v0
.end method

.method public getUTF8String(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    if-nez v0, :cond_3a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getUTF8String() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key does not exist. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v1

    const/16 v2, 0xc1

    if-eq v1, v2, :cond_67

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.getUTF8String() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a PDXUTF8String. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "key is of wrong type. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;IS)V
    .registers 6

    const/16 v0, 0xc0

    if-ne p3, v0, :cond_f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    return-void

    :cond_f
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXDictionary.put() type should be INT. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;S)V
    .registers 6

    sparse-switch p3, :sswitch_data_1a

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :sswitch_f
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :sswitch_data_1a
    .sparse-switch
        0x16 -> :sswitch_f
        0xc1 -> :sswitch_4
    .end sparse-switch
.end method

.method public put(Ljava/lang/String;[BS)V
    .registers 7

    sparse-switch p3, :sswitch_data_6e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXDictionary.put() Unknown PDXClass type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :goto_1f
    return-void

    :sswitch_20
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :sswitch_2b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :sswitch_36
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :sswitch_41
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :sswitch_4c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;

    invoke-direct {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :sswitch_57
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :sswitch_62
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    nop

    :sswitch_data_6e
    .sparse-switch
        0x4 -> :sswitch_2b
        0x5 -> :sswitch_4c
        0x10 -> :sswitch_62
        0x16 -> :sswitch_41
        0xc0 -> :sswitch_20
        0xc1 -> :sswitch_36
        0xe0 -> :sswitch_57
    .end sparse-switch
.end method

.method public toByteArray()[B
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getContent()[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(I)Ljava/lang/String;
    .registers 9

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    const-string/jumbo v0, ""

    const/4 v2, 0x0

    move-object v4, v3

    :goto_b
    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    goto :goto_b

    :cond_27
    if-lez p1, :cond_1d7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    if-eqz p1, :cond_1d4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{ \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_5b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v6

    sparse-switch v6, :sswitch_data_1da

    move-object v0, v3

    :goto_77
    move-object v3, v0

    goto :goto_5b

    :sswitch_79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": <INT> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_5b

    :sswitch_a8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": <BYTES> \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_5b

    :sswitch_d7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": <UTF8> \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_5b

    :sswitch_107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": <ASCII> \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_5b

    :sswitch_137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": <NULL> \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_5b

    :sswitch_156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_5b

    :sswitch_188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_77

    :cond_1b9
    if-eqz p1, :cond_1d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1d3
    return-object v3

    :cond_1d4
    move-object v3, v1

    goto/16 :goto_5b

    :cond_1d7
    move-object v2, v0

    goto/16 :goto_3e

    :sswitch_data_1da
    .sparse-switch
        0x4 -> :sswitch_a8
        0x5 -> :sswitch_137
        0x10 -> :sswitch_188
        0x16 -> :sswitch_107
        0xc0 -> :sswitch_79
        0xc1 -> :sswitch_d7
        0xe0 -> :sswitch_156
    .end sparse-switch
.end method
