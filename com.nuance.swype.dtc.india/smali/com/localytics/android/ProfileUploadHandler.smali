.class final Lcom/localytics/android/ProfileUploadHandler;
.super Lcom/localytics/android/BaseUploadThread;
.source "ProfileUploadHandler.java"


# static fields
.field private static final PROFILE_URL:Ljava/lang/String; = "v1/apps/%s/profiles"


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .locals 0
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
    .line 26
    .local p2, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/localytics/android/BaseUploadThread;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    .line 27
    return-void
.end method


# virtual methods
.method final uploadData()I
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 32
    const/4 v6, 0x0

    .line 35
    .local v6, "rowsToDelete":I
    :try_start_0
    iget-object v8, p0, Lcom/localytics/android/ProfileUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 37
    iget-object v8, p0, Lcom/localytics/android/ProfileUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 39
    .local v4, "it":Ljava/util/Iterator;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/localytics/android/ProfileUploadHandler;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "apiKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 43
    .local v3, "customerID":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 47
    .local v5, "params":[Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 49
    const/4 v8, 0x0

    aget-object v3, v5, v8

    .end local v3    # "customerID":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 50
    .restart local v3    # "customerID":Ljava/lang/String;
    const/16 v8, 0x7b

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "customer_id\":\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "database\":\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v8, 0x1

    aget-object v8, v5, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "changes\":["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    const/4 v8, 0x2

    aget-object v8, v5, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 65
    const/16 v8, 0x2c

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 86
    .end local v1    # "apiKey":Ljava/lang/String;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "customerID":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "params":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    move v8, v9

    :goto_1
    return v8

    .line 69
    .restart local v1    # "apiKey":Ljava/lang/String;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "customerID":Ljava/lang/String;
    .restart local v4    # "it":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v8, "]}"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    sget-boolean v8, Lcom/localytics/android/Constants;->USE_HTTPS:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "https"

    :goto_2
    invoke-virtual {v10, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    sget-object v10, Lcom/localytics/android/Constants;->PROFILES_HOST:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v10, "v1/apps/%s/profiles"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "url":Ljava/lang/String;
    sget-object v8, Lcom/localytics/android/BaseUploadThread$UploadType;->PROFILES:Lcom/localytics/android/BaseUploadThread$UploadType;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v7, v10, v11}, Lcom/localytics/android/ProfileUploadHandler;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 80
    iget-object v8, p0, Lcom/localytics/android/ProfileUploadHandler;->mData:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .end local v1    # "apiKey":Ljava/lang/String;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "customerID":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3
    move v8, v6

    .line 86
    goto :goto_1

    .line 71
    .restart local v1    # "apiKey":Ljava/lang/String;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "customerID":Ljava/lang/String;
    .restart local v4    # "it":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v8, "http"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2
.end method
