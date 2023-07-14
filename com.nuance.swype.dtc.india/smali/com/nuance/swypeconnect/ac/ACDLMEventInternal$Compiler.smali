.class Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Compiler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method compile(Ljava/nio/ByteBuffer;)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    .locals 6

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    and-int/lit16 v2, v0, 0xff

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    if-nez v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    add-int/2addr v3, v0

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "OutOfBounds "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "; cat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    :try_start_2
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;

    const/16 v3, 0x15

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_4
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Underflow "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "; cat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_2
    :try_start_3
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteWordDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteWordDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_5
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "IllegalArgumentException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "; cat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3
    :try_start_4
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;

    const/16 v3, 0x17

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_4
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_5
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkNonUseDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkNonUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_6
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AdjustQualityDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AdjustQualityDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_7
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;

    const/16 v3, 0x1b

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_8
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;

    const/16 v3, 0x1c

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_9
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;

    const/16 v3, 0x1d

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_a
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_b
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteLanguageDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteLanguageDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_c
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryLanguageDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryLanguageDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_d
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_e
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;

    const/16 v3, 0x3d

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_f
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;

    const/16 v3, 0x3e

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_10
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;

    const/16 v3, 0x3f

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_11
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;

    const/16 v3, 0x40

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_12
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;

    const/16 v3, 0x41

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    :sswitch_13
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$ContentScannedDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$ContentScannedDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :sswitch_14
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move v2, v1

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move v2, v1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move v2, v1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x29 -> :sswitch_a
        0x2a -> :sswitch_b
        0x2b -> :sswitch_c
        0x3c -> :sswitch_d
        0x3d -> :sswitch_e
        0x3e -> :sswitch_f
        0x3f -> :sswitch_10
        0x40 -> :sswitch_11
        0x41 -> :sswitch_12
        0x50 -> :sswitch_13
        0x64 -> :sswitch_14
    .end sparse-switch
.end method

.method public compile([B)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    .locals 1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;->compile(Ljava/nio/ByteBuffer;)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    move-result-object v0

    return-object v0
.end method

.method public compileAll([B)[Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    .locals 3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;->compile(Ljava/nio/ByteBuffer;)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    return-object v0
.end method
