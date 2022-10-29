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
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method compile(Ljava/nio/ByteBuffer;)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    .registers 8

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_8} :catch_165
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_8} :catch_161
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_15d

    move-result v0

    and-int/lit16 v2, v0, 0xff

    :try_start_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    if-nez v1, :cond_1d

    const/4 v0, 0x2

    :goto_14
    add-int/2addr v3, v0

    sparse-switch v2, :sswitch_data_16a

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1b
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    :cond_1d
    move v0, v1

    goto :goto_14

    :sswitch_1f
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_24} :catch_25
    .catch Ljava/nio/BufferUnderflowException; {:try_start_b .. :try_end_24} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_24} :catch_99

    goto :goto_1c

    :catch_25
    move-exception v0

    :goto_26
    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->log:Lcom/nuance/connect/util/Logger$Log;
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

    goto :goto_1b

    :sswitch_58
    :try_start_58
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;

    const/16 v3, 0x15

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_58 .. :try_end_5f} :catch_25
    .catch Ljava/nio/BufferUnderflowException; {:try_start_58 .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5f} :catch_99

    goto :goto_1c

    :catch_60
    move-exception v0

    :goto_61
    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->log:Lcom/nuance/connect/util/Logger$Log;
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

    goto :goto_1b

    :sswitch_93
    :try_start_93
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteWordDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteWordDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_98
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_93 .. :try_end_98} :catch_25
    .catch Ljava/nio/BufferUnderflowException; {:try_start_93 .. :try_end_98} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_98} :catch_99

    goto :goto_1c

    :catch_99
    move-exception v0

    :goto_9a
    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->log:Lcom/nuance/connect/util/Logger$Log;
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

    goto/16 :goto_1b

    :sswitch_cd
    :try_start_cd
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;

    const/16 v3, 0x17

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_d6
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_dd
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkNonUseDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkNonUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_e4
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AdjustQualityDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AdjustQualityDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_eb
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;

    const/16 v3, 0x1b

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_f4
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;

    const/16 v3, 0x1c

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_fd
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;

    const/16 v3, 0x1d

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_106
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_10d
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteLanguageDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteLanguageDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_114
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryLanguageDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryLanguageDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_11b
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_122
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;

    const/16 v3, 0x3d

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_12b
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;

    const/16 v3, 0x3e

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_134
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;

    const/16 v3, 0x3f

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_13d
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;

    const/16 v3, 0x40

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_146
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;

    const/16 v3, 0x41

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1c

    :sswitch_14f
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$ContentScannedDlmEventImpl;

    invoke-direct {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$ContentScannedDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1c

    :sswitch_156
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;

    invoke-direct {v0, p1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_15b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_cd .. :try_end_15b} :catch_25
    .catch Ljava/nio/BufferUnderflowException; {:try_start_cd .. :try_end_15b} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cd .. :try_end_15b} :catch_99

    goto/16 :goto_1c

    :catch_15d
    move-exception v0

    move v2, v1

    goto/16 :goto_9a

    :catch_161
    move-exception v0

    move v2, v1

    goto/16 :goto_61

    :catch_165
    move-exception v0

    move v2, v1

    goto/16 :goto_26

    nop

    :sswitch_data_16a
    .sparse-switch
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_58
        0x16 -> :sswitch_93
        0x17 -> :sswitch_cd
        0x18 -> :sswitch_d6
        0x19 -> :sswitch_dd
        0x1a -> :sswitch_e4
        0x1b -> :sswitch_eb
        0x1c -> :sswitch_f4
        0x1d -> :sswitch_fd
        0x29 -> :sswitch_106
        0x2a -> :sswitch_10d
        0x2b -> :sswitch_114
        0x3c -> :sswitch_11b
        0x3d -> :sswitch_122
        0x3e -> :sswitch_12b
        0x3f -> :sswitch_134
        0x40 -> :sswitch_13d
        0x41 -> :sswitch_146
        0x50 -> :sswitch_14f
        0x64 -> :sswitch_156
    .end sparse-switch
.end method

.method public compile([B)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    .registers 3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;->compile(Ljava/nio/ByteBuffer;)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    move-result-object v0

    return-object v0
.end method

.method public compileAll([B)[Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    .registers 5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;->compile(Ljava/nio/ByteBuffer;)Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    return-object v0
.end method
