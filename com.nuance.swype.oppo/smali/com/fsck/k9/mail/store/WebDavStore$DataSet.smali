.class public Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
.super Ljava/lang/Object;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataSet"
.end annotation


# instance fields
.field private mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTempData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
    .locals 1

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    .line 2267
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;

    .line 2268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 2272
    const-string v0, "uid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2274
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;

    .line 2277
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    :goto_0
    return-void

    .line 2283
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;

    .line 2303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    .line 2304
    return-void

    .line 2294
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public getHrefs()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 2354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2356
    .local v1, "hrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2358
    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2359
    const-string v5, "href"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2360
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2363
    .end local v0    # "href":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1700()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getMessageCount()I
    .locals 6

    .prologue
    .line 2386
    const/4 v2, -0x1

    .line 2388
    .local v2, "messageCount":I
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2390
    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2391
    const-string v5, "visiblecount"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2393
    .local v0, "count":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2396
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 2401
    .end local v0    # "count":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public getMessageEnvelopes()Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2409
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2411
    .local v6, "envelopes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2413
    .local v14, "uid":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;

    invoke-direct {v5}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;-><init>()V

    .line 2414
    .local v5, "envelope":Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2416
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 2418
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2420
    .local v7, "header":Ljava/lang/String;
    const-string v15, "read"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2422
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2423
    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    :goto_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 2425
    .local v12, "readStatus":Ljava/lang/Boolean;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->setReadStatus(Z)V

    goto :goto_1

    .line 2423
    .end local v12    # "readStatus":Ljava/lang/Boolean;
    :cond_0
    const/4 v15, 0x0

    goto :goto_2

    .line 2427
    :cond_1
    const-string v15, "date"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2434
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2435
    .local v2, "date":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2437
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v3, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v3, "dfInput":Ljava/text/DateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v15, "EEE, d MMM yy HH:mm:ss Z"

    invoke-direct {v4, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2439
    .local v4, "dfOutput":Ljava/text/DateFormat;
    const-string v13, ""

    .line 2443
    .local v13, "tempDate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 2444
    .local v10, "parsedDate":Ljava/util/Date;
    invoke-virtual {v4, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 2450
    .end local v10    # "parsedDate":Ljava/util/Date;
    :goto_3
    invoke-virtual {v5, v7, v13}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2446
    :catch_0
    move-exception v11

    .line 2448
    .local v11, "pe":Ljava/text/ParseException;
    const-string v15, "k9"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Error parsing date: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\nTrace: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2454
    .end local v2    # "date":Ljava/lang/String;
    .end local v3    # "dfInput":Ljava/text/DateFormat;
    .end local v4    # "dfOutput":Ljava/text/DateFormat;
    .end local v11    # "pe":Ljava/text/ParseException;
    .end local v13    # "tempDate":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v7, v15}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2459
    .end local v7    # "header":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2465
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "envelope":Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
    .end local v14    # "uid":Ljava/lang/String;
    :cond_4
    return-object v6
.end method

.method public getUidToRead()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2332
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2334
    .local v3, "uidToRead":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2336
    .local v2, "uid":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 2337
    const-string v6, "read"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2338
    .local v1, "readStatus":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2341
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2342
    .local v4, "value":Ljava/lang/Boolean;
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2341
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 2346
    .end local v1    # "readStatus":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getUidToUrl()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2313
    .local v2, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2315
    .local v1, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2316
    const-string v5, "href"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2317
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2320
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2324
    .end local v1    # "uid":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2373
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2375
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2378
    .end local v1    # "uid":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1700()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method
