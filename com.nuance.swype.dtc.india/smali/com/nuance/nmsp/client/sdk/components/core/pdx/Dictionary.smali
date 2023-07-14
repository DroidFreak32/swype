.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_DOES_NOT_EXIST:Ljava/lang/String; = "key does not exist. "

.field public static final KEY_IS_OF_WRONG_TYPE:Ljava/lang/String; = "key is of wrong type. "


# virtual methods
.method public abstract addAsciiString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addByteString(Ljava/lang/String;[B)V
.end method

.method public abstract addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
.end method

.method public abstract addInteger(Ljava/lang/String;I)V
.end method

.method public abstract addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V
.end method

.method public abstract addUTF8String(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract containsKey(Ljava/lang/String;)Z
.end method

.method public abstract getAsciiString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getByteString(Ljava/lang/String;)[B
.end method

.method public abstract getDictionary(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
.end method

.method public abstract getInteger(Ljava/lang/String;)I
.end method

.method public abstract getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
.end method

.method public abstract getType(Ljava/lang/String;)S
.end method

.method public abstract getUTF8String(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract keys()Ljava/util/Enumeration;
.end method
