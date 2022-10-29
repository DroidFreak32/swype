.class public final enum Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/util/BufferRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ByteBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

.field public static final enum BASE64_CODEC_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

.field public static final enum READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

.field public static final enum WRITE_CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

.field public static final enum WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;


# instance fields
.field protected final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x7d0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    const-string/jumbo v1, "READ_IO_BUFFER"

    const/16 v2, 0xfa0

    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    const-string/jumbo v1, "WRITE_ENCODING_BUFFER"

    const/16 v2, 0xfa0

    invoke-direct {v0, v1, v4, v2}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 27
    new-instance v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    const-string/jumbo v1, "WRITE_CONCAT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    const-string/jumbo v1, "BASE64_CODEC_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->BASE64_CODEC_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->BASE64_CODEC_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->$VALUES:[Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->size:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->$VALUES:[Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    return-object v0
.end method
