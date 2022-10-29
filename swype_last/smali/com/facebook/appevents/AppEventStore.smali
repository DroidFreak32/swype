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
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/appevents/AppEventStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .registers 6
    .param p0, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;

    .prologue
    .line 51
    const-class v2, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 52
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v0

    .line 54
    .local v0, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->containsKey(Lcom/facebook/appevents/AccessTokenAppIdPair;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 55
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    :goto_1b
    invoke-static {v0}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_28

    .line 63
    monitor-exit v2

    return-void

    .line 59
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1b

    .line 51
    .end local v0    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AppEventCollection;)V
    .registers 7
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 67
    const-class v5, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v5

    :try_start_3
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
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

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
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_12

    .line 67
    .end local v0    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local v3    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    :catchall_2a
    move-exception v4

    monitor-exit v5

    throw v4

    .line 77
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_2d
    :try_start_2d
    invoke-static {v2}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    .line 78
    monitor-exit v5

    return-void
.end method

.method public static declared-synchronized readAndClearStore()Lcom/facebook/appevents/PersistedEvents;
    .registers 12

    .prologue
    .line 82
    const-class v9, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v9

    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    const/4 v7, 0x0

    .line 86
    .local v7, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_60

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    :try_start_c
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 89
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1d} :catch_47
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_63
    .catchall {:try_start_c .. :try_end_1d} :catchall_84

    .line 91
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .local v6, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :try_start_1d
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/facebook/appevents/PersistedEvents;

    move-object v7, v0
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_25} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_a0
    .catchall {:try_start_1d .. :try_end_25} :catchall_9d

    .line 97
    :try_start_25
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_60

    .line 106
    :try_start_28
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_3c
    .catchall {:try_start_28 .. :try_end_32} :catchall_60

    move-object v5, v6

    .line 112
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :goto_33
    if-nez v7, :cond_3a

    .line 113
    :try_start_35
    new-instance v7, Lcom/facebook/appevents/PersistedEvents;

    .end local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-direct {v7}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_60

    .line 116
    .restart local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_3a
    monitor-exit v9

    return-object v7

    .line 107
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_3c
    move-exception v3

    .line 108
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3d
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 110
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_33

    .line 97
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_47
    move-exception v8

    :goto_48
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_60

    .line 106
    :try_start_4b
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_55} :catch_56
    .catchall {:try_start_4b .. :try_end_55} :catchall_60

    goto :goto_33

    .line 107
    :catch_56
    move-exception v3

    .line 108
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_57
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_60

    goto :goto_33

    .line 82
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .end local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_60
    move-exception v8

    monitor-exit v9

    throw v8

    .line 94
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catch_63
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception while reading events: "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_84

    .line 97
    :try_start_6c
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_60

    .line 106
    :try_start_6f
    const-string/jumbo v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_79} :catch_7a
    .catchall {:try_start_6f .. :try_end_79} :catchall_60

    goto :goto_33

    .line 107
    :catch_7a
    move-exception v3

    .line 108
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_7b
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_84
    move-exception v8

    :goto_85
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_60

    .line 106
    :try_start_88
    const-string/jumbo v10, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_92} :catch_93
    .catchall {:try_start_88 .. :try_end_92} :catchall_60

    .line 109
    :goto_92
    :try_start_92
    throw v8

    .line 107
    :catch_93
    move-exception v3

    .line 108
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v10, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Got unexpected exception when removing events file: "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_60

    goto :goto_92

    .line 97
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catchall_9d
    move-exception v8

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_85

    .line 94
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_a0
    move-exception v2

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_64

    .line 97
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_a3
    move-exception v8

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_48
.end method

.method private static saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    .registers 8
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
    :try_start_5
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    const-string/jumbo v5, "AppEventsLogger.persistedevents"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_1f
    .catchall {:try_start_5 .. :try_end_17} :catchall_36

    .line 128
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_17
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_40
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3b

    .line 137
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 138
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_1e
    return-void

    .line 129
    :catch_1f
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    :goto_20
    :try_start_20
    sget-object v4, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got unexpected exception while persisting events: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_36

    .line 132
    :try_start_28
    const-string/jumbo v4, "AppEventsLogger.persistedevents"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_3e
    .catchall {:try_start_28 .. :try_end_32} :catchall_36

    .line 137
    :goto_32
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1e

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_36
    move-exception v4

    :goto_37
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_3b
    move-exception v4

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_37

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v4

    goto :goto_32

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_40
    move-exception v1

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_20
.end method
