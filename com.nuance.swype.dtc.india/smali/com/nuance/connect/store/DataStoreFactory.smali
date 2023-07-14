.class public Lcom/nuance/connect/store/DataStoreFactory;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECT_PREFERENCES:Ljava/lang/String; = "ConnectPrefs"

.field public static final DATA_STORE_TYPE_DATABASE:Ljava/lang/String; = "com.nuance.swype.connect.store.DatabaseDataStore"

.field public static final DATA_STORE_TYPE_DEFAULT:Ljava/lang/String; = "com.nuance.swype.connect.store.FilePreference"

.field public static final DATA_STORE_TYPE_FILE:Ljava/lang/String; = "com.nuance.swype.connect.store.FilePreference"

.field public static final DATA_STORE_TYPE_MIGRATION:Ljava/lang/String; = "com.nuance.swype.connect.store.MigrationStore"

.field public static final DATA_STORE_TYPE_SHARED_PREFS:Ljava/lang/String; = "com.nuance.swype.connect.store.SharedPrefStore"

.field public static final DATA_STORE_TYPE_TEMP:Ljava/lang/String; = "com.nuance.swype.connect.store.TemporaryMemoryStore"

.field private static volatile defaultStore:Lcom/nuance/connect/store/PersistentDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/connect/store/DataStoreFactory;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;
    .locals 4

    const-string/jumbo v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/connect/store/FileStore;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.nuance.swype.connect.store.TemporaryMemoryStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nuance/connect/store/TemporaryMemoryStore;

    invoke-direct {v0}, Lcom/nuance/connect/store/TemporaryMemoryStore;-><init>()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "com.nuance.swype.connect.store.SharedPrefStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nuance/connect/store/SharedPrefStore;

    const-string/jumbo v1, "ConnectPrefs"

    invoke-direct {v0, p0, v1, p2}, Lcom/nuance/connect/store/SharedPrefStore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "com.nuance.swype.connect.store.DatabaseDataStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nuance/connect/store/DatabaseDataStore;

    invoke-direct {v0, p0}, Lcom/nuance/connect/store/DatabaseDataStore;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "com.nuance.swype.connect.store.MigrationStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/nuance/connect/store/MigrationStore;

    const-string/jumbo v1, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p0, v1, p2}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    const-string/jumbo v2, "com.nuance.swype.connect.store.DatabaseDataStore"

    invoke-static {p0, v2, p2}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/store/MigrationStore;-><init>(Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/connect/store/PersistentDataStore;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v1, Lcom/nuance/connect/store/DataStoreFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/connect/store/DataStoreFactory;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/connect/store/DataStoreFactory;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    new-instance v0, Lcom/nuance/connect/store/DatabaseDataStore;

    invoke-direct {v0, p0}, Lcom/nuance/connect/store/DatabaseDataStore;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_7

    const-string/jumbo v2, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p0, v2, p2}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/connect/store/DatabaseDataStore;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/nuance/connect/store/MigrationStore;

    invoke-direct {v3, v2, v0}, Lcom/nuance/connect/store/MigrationStore;-><init>(Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/connect/store/PersistentDataStore;)V

    sput-object v3, Lcom/nuance/connect/store/DataStoreFactory;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    :goto_1
    sget-object v0, Lcom/nuance/connect/store/DataStoreFactory;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    monitor-exit v1

    goto/16 :goto_0

    :cond_6
    sput-object v0, Lcom/nuance/connect/store/DataStoreFactory;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v2}, Lcom/nuance/connect/store/PersistentDataStore;->clear()Z

    goto :goto_1

    :cond_7
    sput-object v0, Lcom/nuance/connect/store/DataStoreFactory;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/nuance/connect/store/DatabaseDataStore;

    invoke-direct {v0, p0}, Lcom/nuance/connect/store/DatabaseDataStore;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
