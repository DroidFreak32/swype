.class Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;
.super Ljava/lang/Object;
.source "RecorderHelper.java"

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->createCustomAudioSink(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;)Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

.field final synthetic val$param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->val$param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAudioBuf([BIIZ)V
    .locals 7
    .param p1, "audioBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isLastBuff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 302
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v5

    if-nez v5, :cond_1

    .line 304
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->val$param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;->addAudioBuf([BIIZ)V

    .line 324
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$100(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 326
    sub-int v3, p3, p2

    .line 327
    .local v3, "len":I
    new-array v0, v3, [B

    .line 328
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 330
    add-int v4, p2, v2

    aget-byte v4, p1, v4

    aput-byte v4, v0, v2

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 306
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 309
    .restart local v0    # "bytes":[B
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$000(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x1

    .line 310
    .local v1, "end":Z
    :goto_2
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->val$param:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;

    array-length v6, v0

    invoke-interface {v5, v0, v4, v6, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;->addAudioBuf([BIIZ)V

    .line 312
    if-eqz v1, :cond_0

    .line 314
    new-instance v4, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1$1;

    invoke-direct {v4, p0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1$1;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;)V

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v1    # "end":Z
    :cond_2
    move v1, v4

    .line 309
    goto :goto_2

    .line 333
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_3
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$100(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 334
    if-eqz p4, :cond_4

    .line 336
    new-instance v4, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1$2;

    invoke-direct {v4, p0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1$2;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;)V

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 345
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    return-void
.end method
