.class Lcom/localytics/android/ProfileHandler;
.super Lcom/localytics/android/BaseHandler;
.source "ProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/ProfileHandler$ProfileOperation;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_JSON_KEY_KEY:Ljava/lang/String; = "attr"

.field static final ATTRIBUTE_JSON_OP_KEY:Ljava/lang/String; = "op"

.field static final ATTRIBUTE_JSON_VALUE_KEY:Ljava/lang/String; = "value"

.field private static final MESSAGE_SET_PROFILE_ATTRIBUTE:I = 0x12d


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .locals 1
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 35
    const-string/jumbo v0, "Profile"

    iput-object v0, p0, Lcom/localytics/android/ProfileHandler;->siloName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/ProfileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ProfileHandler;->queueMessage(Landroid/os/Message;)Z

    .line 37
    return-void
.end method

.method private static checkAttributeName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "attrName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 267
    if-nez p0, :cond_0

    .line 269
    const-string/jumbo v2, "attribute name cannot be null"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 279
    :goto_0
    return v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "attributeName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 275
    const-string/jumbo v2, "attribute name cannot be empty"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "attrVal"    # Ljava/lang/Object;

    .prologue
    .line 284
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static convertToSet([J)Ljava/util/Set;
    .locals 9
    .param p0, "longArray"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    array-length v7, p0

    new-array v1, v7, [Ljava/lang/Long;

    .line 295
    .local v1, "array":[Ljava/lang/Long;
    const/4 v3, 0x0

    .line 296
    .local v3, "index":I
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v6, p0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_0

    aget-wide v4, v0, v2

    .line 298
    .local v4, "l":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v3

    .line 299
    add-int/lit8 v3, v3, 0x1

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v4    # "l":J
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v7
.end method

.method private convertToSet([Ljava/util/Date;)Ljava/util/Set;
    .locals 6
    .param p1, "attrValues"    # [Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 308
    .local v4, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/Date;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 310
    .local v1, "d":Ljava/util/Date;
    invoke-static {v1}, Lcom/localytics/android/ProfileHandler;->convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "d":Ljava/util/Date;
    :cond_0
    return-object v4
.end method

.method private saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .param p1, "op"    # Lcom/localytics/android/ProfileHandler$ProfileOperation;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/Object;
    .param p4, "database"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->checkAttributeName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 171
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "op"

    invoke-virtual {p1}, Lcom/localytics/android/ProfileHandler$ProfileOperation;->getOperationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string/jumbo v5, "attr"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    instance-of v5, p3, Ljava/util/Set;

    if-eqz v5, :cond_3

    .line 175
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 176
    .local v3, "jsonArray":Lorg/json/JSONArray;
    check-cast p3, Ljava/util/Set;

    .end local p3    # "attrValue":Ljava/lang/Object;
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 178
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "Caught JSON exception"

    invoke-static {v5, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    return-void

    .line 180
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    :goto_2
    const/16 v5, 0x12d

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p4, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/localytics/android/ProfileHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v8}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/localytics/android/ProfileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/localytics/android/ProfileHandler;->queueMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 182
    .restart local p3    # "attrValue":Ljava/lang/Object;
    :cond_3
    if-eqz p3, :cond_2

    .line 184
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .locals 4
    .param p1, "maxRowToDelete"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "changes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id <= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 118
    .local v8, "attributesMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 121
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "changes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 122
    const/4 v12, 0x0

    .line 123
    .local v12, "previousCustomerID":Ljava/lang/String;
    const/4 v13, 0x0

    .line 124
    .local v13, "previousDatabase":Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 126
    const-string/jumbo v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 127
    .local v7, "attributeID":I
    const-string/jumbo v0, "change"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "attribute":Ljava/lang/String;
    const-string/jumbo v0, "customer_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "customerID":Ljava/lang/String;
    const-string/jumbo v0, "scope"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "database":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 132
    move-object v12, v10

    .line 133
    move-object v13, v11

    .line 136
    :cond_0
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    .end local v6    # "attribute":Ljava/lang/String;
    .end local v7    # "attributeID":I
    .end local v10    # "customerID":Ljava/lang/String;
    .end local v11    # "database":Ljava/lang/String;
    .end local v12    # "previousCustomerID":Ljava/lang/String;
    .end local v13    # "previousDatabase":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    .line 150
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    :goto_1
    return-object v8

    .line 148
    .restart local v12    # "previousCustomerID":Ljava/lang/String;
    .restart local v13    # "previousDatabase":Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_1

    .line 150
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected _getMaxRowToUpload()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    .local v7, "numberOfAttributes":I
    const/4 v6, 0x0

    .line 96
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "changes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 104
    :cond_0
    if-eqz v6, :cond_1

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 110
    :goto_0
    return v0

    .line 104
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 110
    goto :goto_0
.end method

.method protected _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 2
    .param p2, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v0, Lcom/localytics/android/ProfileUploadHandler;

    iget-object v1, p0, Lcom/localytics/android/ProfileHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/localytics/android/ProfileUploadHandler;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    return-object v0
.end method

.method protected _init()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/localytics/android/ProfileProvider;

    iget-object v1, p0, Lcom/localytics/android/ProfileHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/ProfileHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/ProfileProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 74
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 75
    return-void
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .locals 1
    .param p1, "successful"    # Z
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 87
    return-void
.end method

.method protected _setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "database"    # Ljava/lang/String;
    .param p3, "customerID"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "scope"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v1, "change"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v1, "customer_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/localytics/android/ProfileHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "changes"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 322
    return-void
.end method

.method addProfileAttributesToSet(Ljava/lang/String;[JLjava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [J
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertToSet([J)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 237
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/util/Date;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, p2}, Lcom/localytics/android/ProfileHandler;->convertToSet([Ljava/util/Date;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method deleteProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "database"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 69
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-string/jumbo v4, "Profile handler received MESSAGE_SET_PROFILE_ATTRIBUTE"

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 48
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 49
    .local v3, "params":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v0, v3, v4

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "attribute":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v3, v4

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "database":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v3, v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "customerID":Ljava/lang/String;
    new-instance v4, Lcom/localytics/android/ProfileHandler$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/localytics/android/ProfileHandler$1;-><init>(Lcom/localytics/android/ProfileHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/localytics/android/ProfileHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
    .end packed-switch
.end method

.method incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "incrementVal"    # J
    .param p4, "database"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method removeProfileAttributesFromSet(Ljava/lang/String;[JLjava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [J
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 247
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertToSet([J)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/util/Date;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, p2}, Lcom/localytics/android/ProfileHandler;->convertToSet([Ljava/util/Date;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # J
    .param p4, "database"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/util/Date;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertDateToString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;[JLjava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [J
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {p2}, Lcom/localytics/android/ProfileHandler;->convertToSet([J)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/util/Date;
    .param p3, "database"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-direct {p0, p2}, Lcom/localytics/android/ProfileHandler;->convertToSet([Ljava/util/Date;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/localytics/android/ProfileHandler;->saveAttributeChange(Lcom/localytics/android/ProfileHandler$ProfileOperation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    return-void
.end method
