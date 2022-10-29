.class final Lcom/localytics/android/AnalyticsUploadHandler;
.super Lcom/localytics/android/BaseUploadThread;
.source "AnalyticsUploadHandler.java"


# static fields
.field static final ANALYTICS_URL_PATH:Ljava/lang/String; = "%s/api/v2/applications/%s/uploads"


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .registers 5
    .param p1, "sessionHandler"    # Lcom/localytics/android/BaseHandler;
    .param p3, "customerId"    # Ljava/lang/String;
    .param p4, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/BaseHandler;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/localytics/android/LocalyticsDao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/localytics/android/BaseUploadThread;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    .line 25
    return-void
.end method


# virtual methods
.method final uploadData()I
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 30
    const/4 v4, 0x0

    .line 34
    .local v4, "rowsToDelete":I
    :try_start_2
    iget-object v6, p0, Lcom/localytics/android/AnalyticsUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_79

    .line 36
    iget-object v6, p0, Lcom/localytics/android/AnalyticsUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 38
    .local v3, "it":Ljava/util/Iterator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsUploadHandler;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "apiKey":Ljava/lang/String;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    .local v2, "eventBlob":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 56
    .end local v0    # "apiKey":Ljava/lang/String;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "eventBlob":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "it":Ljava/util/Iterator;
    :catchall_36
    move-exception v6

    move v6, v7

    :goto_38
    return v6

    .line 47
    .restart local v0    # "apiKey":Ljava/lang/String;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/localytics/android/Constants;->getHTTPPreface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "%s/api/v2/applications/%s/uploads"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v5, v8, v9}, Lcom/localytics/android/AnalyticsUploadHandler;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 50
    iget-object v6, p0, Lcom/localytics/android/AnalyticsUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_78
    .catchall {:try_start_2 .. :try_end_78} :catchall_36

    move-result v4

    .end local v0    # "apiKey":Ljava/lang/String;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "url":Ljava/lang/String;
    :cond_79
    move v6, v4

    .line 56
    goto :goto_38
.end method
