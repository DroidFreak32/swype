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

.field public final isHighQualityWord:Z

.field public final scanActionCount:I

.field public final sentenceBasedLearning:Z

.field public final userExplicitActionCount:I

.field public final userImplicitActionCount:I


# direct methods
.method private constructor <init>(IIIZZ)V
    .locals 1
    .param p1, "userImplicitActionCount"    # I
    .param p2, "userExplicitActionCount"    # I
    .param p3, "scanActionCount"    # I
    .param p4, "sentenceBasedLearning"    # Z
    .param p5, "isHighQualityWord"    # Z

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    .line 124
    iput p1, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->userImplicitActionCount:I

    .line 125
    iput p2, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->userExplicitActionCount:I

    .line 126
    iput p3, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->scanActionCount:I

    .line 127
    iput-boolean p4, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->sentenceBasedLearning:Z

    .line 128
    iput-boolean p5, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isHighQualityWord:Z

    .line 129
    return-void
.end method

.method synthetic constructor <init>(IIIZZLcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;

    .prologue
    .line 112
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIZZ)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 135
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
    .line 138
    .local p1, "text":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public isBigramDlm()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
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
    .line 161
    iput-boolean p1, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm:Z

    .line 162
    return-void
.end method

.method public setScanContext(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V
    .locals 3
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .prologue
    .line 156
    iget v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->userImplicitActionCount:I

    iget v1, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->userImplicitActionCount:I

    iget v2, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->scanActionCount:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(III)V

    .line 157
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearApplicationPredictionContext()V

    .line 158
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->buckets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
