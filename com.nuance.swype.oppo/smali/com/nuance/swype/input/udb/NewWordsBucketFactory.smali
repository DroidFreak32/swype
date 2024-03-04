.class public Lcom/nuance/swype/input/udb/NewWordsBucketFactory;
.super Ljava/lang/Object;
.source "NewWordsBucketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;,
        Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    }
.end annotation


# instance fields
.field private androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private facebookWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field private twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public getAndroidNewWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move v2, v1

    move v4, v3

    move v5, v3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->androidWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getFacebookWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->facebookWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const-string v6, "SOCIAL"

    move v2, v1

    move v4, v1

    move v5, v3

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->facebookWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->facebookWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move v2, v1

    move v4, v1

    move v5, v3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->setBigramDlm(Z)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->mlsThemeBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getNewWordBuckets()[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getSmsWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getAndroidNewWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getFacebookWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getTwitterWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getSmsCalllogContactsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSmsCalllogContactsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move v2, v1

    move v4, v1

    move v5, v3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsCalllogContactsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getSmsWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const-string v6, "MESSAGING"

    move v2, v1

    move v4, v3

    move v5, v1

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->smsWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public getTwitterWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    const-string v6, "com.twitter.android"

    const-string v7, "SOCIAL"

    move v2, v1

    move v4, v1

    move v5, v3

    move-object v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;-><init>(IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->twitterWordsBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method
