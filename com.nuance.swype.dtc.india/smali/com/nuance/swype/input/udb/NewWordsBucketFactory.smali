.class public Lcom/nuance/swype/input/udb/NewWordsBucketFactory;
.super Ljava/lang/Object;
.source "NewWordsBucketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    }
.end annotation


# instance fields
.field private additionalBuckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;",
            ">;"
        }
    .end annotation
.end field

.field private androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->additionalBuckets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addWordListBucket(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 1
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->additionalBuckets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public createNewWordsListBucket(Z)Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 7
    .param p1, "sentenceBased"    # Z

    .prologue
    const/4 v1, 0x1

    .line 97
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIZZLcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    .line 100
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->setBigramDlm(Z)V

    .line 101
    return-object v0
.end method

.method public getAndroidNewWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIZZLcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIZZLcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->setBigramDlm(Z)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getNewWordBuckets()[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 4

    .prologue
    .line 75
    const/4 v2, 0x5

    new-array v1, v2, [Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getSmsWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getAndroidNewWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 78
    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getTwitterWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 79
    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getSmsCallLogContactsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 80
    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    .local v1, "buckets":[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v2, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->additionalBuckets:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->additionalBuckets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v2
.end method

.method public getSmsCallLogContactsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIZZLcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getSmsWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIZZLcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getTwitterWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIZZLcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method
