.class Lcom/facebook/appevents/AppEventStore;
.super Ljava/lang/Object;
.source "AppEventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    }
.end annotation


# static fields
.field private static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/appevents/AppEventStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .locals 4
    .param p0, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;

    .prologue
    .line 51
    const-class v2, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 52
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v0

    .line 54
    .local v0, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->containsKey(Lcom/facebook/appevents/AccessTokenAppIdPair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    :goto_0
    invoke-static {v0}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v2

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    .end local v0    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AppEventCollection;)V
    .locals 6
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 67
    const-class v5, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 68
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v2

    .line 69
    .local v2, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 70
    .local v0, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v3

    .line 72
    .local v3, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v3}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local v3    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 77
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit v5

    return-void
.end method

.method public static declared-synchronized readAndClearStore()Lcom/facebook/appevents/PersistedEvents;
    .locals 12

    .prologue
    .line 82
    const-class v9, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    const/4 v7, 0x0

    .line 86
    .local v7, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    :try_start_1
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 89
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .local v6, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :try_start_2
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/facebook/appevents/PersistedEvents;

    move-object v7, v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    :try_start_3
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :try_start_4
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v6

    .line 112
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :goto_0
    if-nez v7, :cond_0

    .line 113
    :try_start_5
    new-instance v7, Lcom/facebook/appevents/PersistedEvents;

    .end local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-direct {v7}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    .restart local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_0
    monitor-exit v9

    return-object v7

    .line 107
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 110
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_0

    .line 97
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v8

    :goto_1
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    :try_start_7
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 107
    :catch_2
    move-exception v3

    .line 108
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_8
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 82
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .end local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 94
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catch_3
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_9
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception while reading events: "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 97
    :try_start_a
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 106
    :try_start_b
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 107
    :catch_4
    move-exception v3

    .line 108
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_c
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :goto_3
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 106
    :try_start_d
    const-string/jumbo v10, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 109
    :goto_4
    :try_start_e
    throw v8

    .line 107
    :catch_5
    move-exception v3

    .line 108
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v10, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Got unexpected exception when removing events file: "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 97
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_3

    .line 94
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_2

    .line 97
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_7
    move-exception v8

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_1
.end method

.method private static saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    .locals 7
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/PersistedEvents;

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    const-string/jumbo v5, "AppEventsLogger.persistedevents"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 138
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got unexpected exception while persisting events: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    const-string/jumbo v4, "AppEventsLogger.persistedevents"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :goto_2
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
