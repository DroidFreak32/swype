.class public Lcom/nuance/connect/store/FileStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/store/PersistentDataStore;


# static fields
.field private static final PREFS_DIR:Ljava/lang/String; = "prefs"

.field private static final PREF_FILE_EXTENSION:Ljava/lang/String; = ".dat"


# instance fields
.field private final appFilesFolder:Ljava/lang/String;

.field private final emptyEncrypt:Ljava/lang/String;

.field private final fileLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final legacySecretKey:Ljava/lang/String;

.field private final nullEncrypt:Ljava/lang/String;

.field private final obfuscatedFileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    iput-object p1, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/store/FileStore;->secretKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/store/FileStore;->legacySecretKey:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/FileStore;->nullEncrypt:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-static {v0, p2}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/FileStore;->emptyEncrypt:Ljava/lang/String;

    return-void
.end method

.method private getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method private getPrefFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    invoke-direct {p0}, Lcom/nuance/connect/store/FileStore;->getPrefsDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPrefsDir()Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    const-string/jumbo v3, "prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Unable to create persistent storage directory when it was missing"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_5

    :cond_25
    move-object v0, v1

    goto :goto_5
.end method


# virtual methods
.method public clear()Z
    .registers 7

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/nuance/connect/store/FileStore;->appFilesFolder:Ljava/lang/String;

    const-string/jumbo v2, "prefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    array-length v3, v2

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v3, :cond_32

    aget-object v4, v2, v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "failed to clear preferences files"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_32
    iget-object v0, p0, Lcom/nuance/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_b
.end method

.method public exists(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object p2

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_7
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return p2

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_7
.end method

.method public readInt(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result p2

    :goto_9
    return p2

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public readLong(Ljava/lang/String;J)J
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide p2

    :goto_9
    return-wide p2

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object p2

    :cond_b
    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_ad

    monitor-enter v2

    :try_start_26
    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_b0

    if-eqz v1, :cond_b3

    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/nuance/connect/store/FileStore;->secretKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->legacySecretKey:Ljava/lang/String;

    if-eqz v2, :cond_9f

    if-eqz v0, :cond_4b

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    :cond_4b
    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->nullEncrypt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->emptyEncrypt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v0, p0, Lcom/nuance/connect/store/FileStore;->legacySecretKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nuance/connect/util/EncryptUtils;->legacyDecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->secretKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/connect/util/EncryptUtils;->legacyDecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_7c

    :cond_7b
    move-object v0, v1

    :cond_7c
    if-eqz v0, :cond_9f

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Switching encryption key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9f
    :goto_9f
    if-eqz v0, :cond_a

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object p2, v0

    goto/16 :goto_a

    :catchall_ad
    move-exception v0

    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v0

    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0

    :cond_b3
    move-object v0, v1

    goto :goto_9f
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    if-eqz p2, :cond_f

    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to save invalid object. The object you are saving does not implement Serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {p2}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v1, p0, Lcom/nuance/connect/store/FileStore;->secretKey:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_18

    :try_start_15
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_94

    :cond_18
    iget-object v3, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    monitor-enter v3

    :try_start_1b
    iget-object v5, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    iget-object v5, p0, Lcom/nuance/connect/store/FileStore;->fileLocks:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_6e

    :try_start_32
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    monitor-enter v5
    :try_end_3e
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_32 .. :try_end_3e} :catch_a5
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_3e} :catch_7e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3e} :catch_89

    :try_start_3e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_71

    :try_start_43
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_a9

    const/4 v0, 0x1

    if-eqz v2, :cond_54

    :try_start_51
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_99
    .catchall {:try_start_51 .. :try_end_54} :catchall_5b

    :cond_54
    :goto_54
    if-eqz v3, :cond_59

    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5b

    goto :goto_4

    :catchall_5b
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_5f
    :try_start_5f
    monitor-exit v5
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_a7

    :try_start_60
    throw v0
    :try_end_61
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_60 .. :try_end_61} :catch_61
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_61} :catch_a0
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_61} :catch_9b

    :catch_61
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    :goto_65
    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Exception reading file"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    :catchall_71
    move-exception v1

    move-object v3, v2

    :goto_73
    if-eqz v2, :cond_78

    :try_start_75
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_97
    .catchall {:try_start_75 .. :try_end_78} :catchall_5b

    :cond_78
    :goto_78
    if-eqz v3, :cond_7d

    :try_start_7a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_5b

    :catch_7e
    move-exception v1

    :goto_7f
    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Exception reading file"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_89
    move-exception v1

    :goto_8a
    iget-object v2, p0, Lcom/nuance/connect/store/FileStore;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Exception reading file"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_94
    move-exception v1

    goto/16 :goto_4

    :catch_97
    move-exception v2

    goto :goto_78

    :catch_99
    move-exception v1

    goto :goto_54

    :catch_9b
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_8a

    :catch_a0
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_7f

    :catch_a5
    move-exception v1

    goto :goto_65

    :catchall_a7
    move-exception v0

    goto :goto_5f

    :catchall_a9
    move-exception v1

    goto :goto_73
.end method
