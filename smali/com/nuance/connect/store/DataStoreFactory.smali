.class public Lcom/nuance/connect/store/DataStoreFactory;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECT_PREFERENCES:Ljava/lang/String; = "ConnectPrefs"

.field public static final DATA_STORE_TYPE_DEFAULT:Ljava/lang/String; = "com.nuance.swype.connect.store.FilePreference"

.field public static final DATA_STORE_TYPE_FILE:Ljava/lang/String; = "com.nuance.swype.connect.store.FilePreference"

.field public static final DATA_STORE_TYPE_SHARED_PREFS:Ljava/lang/String; = "com.nuance.swype.connect.store.SharedPrefStore"

.field public static final DATA_STORE_TYPE_SQLITE:Ljava/lang/String; = "com.nuance.swype.connect.store.SQLiteStore"

.field public static final DATA_STORE_TYPE_TEMP:Ljava/lang/String; = "com.nuance.swype.connect.store.TemporaryMemoryStore"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;
    .locals 2

    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/connect/store/FileStore;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.nuance.swype.connect.store.TemporaryMemoryStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nuance/connect/store/TemporaryMemoryStore;

    invoke-direct {v0}, Lcom/nuance/connect/store/TemporaryMemoryStore;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "com.nuance.swype.connect.store.SharedPrefStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nuance/connect/store/SharedPrefStore;

    const-string v1, "ConnectPrefs"

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/store/SharedPrefStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.nuance.swype.connect.store.SQLiteStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nuance/connect/store/SQLiteDataStore;

    const-string v1, "ConnectPrefs"

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/store/SQLiteDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nuance/connect/store/FileStore;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
