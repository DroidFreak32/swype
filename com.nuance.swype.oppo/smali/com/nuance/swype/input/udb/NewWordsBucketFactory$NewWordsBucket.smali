.class public Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
.super Ljava/lang/Object;
.source "NewWordsBucketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/udb/NewWordsBucketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewWordsBucket"
.end annotation


# instance fields
.field private buckets:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isBigramDlm:Z

.field public final predictionSlot1:Ljava/lang/String;

.field public final predictionSlot2:Ljava/lang/String;

.field public final predictionSlot3:Ljava/lang/String;

.field public final scanAction:I

.field public final sentenceBasedLearning:Z

.field public final userAction:I

.field public final wordHandler:I

.field public final wordQuality:I


# direct methods
.method private constructor <init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userAction"    # I
    .param p2, "scanAction"    # I
    .param p3, "wordHandler"    # I
    .param p4, "wordQuality"    # I
    .param p5, "sentenceBasedLearning"    # Z
    .param p6, "predictionSlot1"    # Ljava/lang/String;
    .param p7, "predictionSlot2"    # Ljava/lang/String;
    .param p8, "predictionSlot3"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    .line 113
    iput p1, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->userAction:I

    .line 114
    iput p2, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->scanAction:I

    .line 115
    iput p3, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordHandler:I

    .line 116
    iput p4, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordQuality:I

    .line 117
    iput-boolean p5, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->sentenceBasedLearning:Z

    .line 118
    iput-object p6, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->predictionSlot1:Ljava/lang/String;

    .line 119
    iput-object p7, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->predictionSlot2:Ljava/lang/String;

    .line 120
    iput-object p8, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->predictionSlot3:Ljava/lang/String;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;

    .prologue
    .line 97
    invoke-direct/range {p0 .. p8}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-void
.end method

.method public add(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "text":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_0
    return-void
.end method

.method public isBigramDlm()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setBigramDlm(Z)V
    .locals 0
    .param p1, "bigram"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm:Z

    .line 155
    return-void
.end method

.method public setScanContext(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V
    .locals 3
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .prologue
    .line 148
    iget v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->userAction:I

    iget v1, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->scanAction:I

    invoke-virtual {p1, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->delayWordReorder(II)V

    .line 149
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearApplicationPredictionContext()V

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->predictionSlot1:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->predictionSlot2:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->predictionSlot3:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setApplicationPredictionContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
