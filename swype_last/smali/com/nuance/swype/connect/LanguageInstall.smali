.class public Lcom/nuance/swype/connect/LanguageInstall;
.super Ljava/lang/Object;
.source "LanguageInstall.java"


# static fields
.field private static final ALM_INCLUDED_IN_FILE:Ljava/lang/String; = "ALM"

.field private static final BUFFER_SIZE:I = 0x5000

.field private static final COMPRESSION_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final GZIP_FILE_EXTENSION:Ljava/lang/String; = ".gz"

.field private static final LANGUAGE_METADATA_FILE_EXT:Ljava/lang/String; = ".mdf"

.field private static final REQUIRES_TAG:Ljava/lang/String; = "[REQ]"

.field private static final STAGING_FOLDER:Ljava/lang/String; = "languageDownload/"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private final deployedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extractedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final languageName:Ljava/lang/String;

.field private languagePackFileName:Ljava/lang/String;

.field private final metadataFileName:Ljava/lang/String;

.field private final nativeDataFileDir:Ljava/lang/String;

.field private final stagingFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string/jumbo v0, "LanguageInstall"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .param p1, "languageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "filesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->nativeDataFileDir:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->extractedFileList:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "languageDownload/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".mdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private deleteAllFiles(Ljava/lang/String;)Z
    .registers 10
    .param p1, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v4, 0x0

    .line 331
    .local v4, "success":Z
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "fileList":[Ljava/lang/String;
    if-eqz v1, :cond_24

    array-length v5, v1

    if-lez v5, :cond_24

    .line 336
    array-length v6, v1

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v6, :cond_25

    aget-object v2, v1, v5

    .line 337
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    or-int/2addr v4, v7

    .line 339
    if-eqz v4, :cond_25

    .line 336
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 344
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_24
    const/4 v4, 0x1

    .line 347
    :cond_25
    return v4
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private deleteStagingFolder()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteAllFiles(Ljava/lang/String;)Z

    .line 233
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    .line 235
    sget-object v0, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed delete on staging folder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 237
    :cond_29
    return-void
.end method

.method private getLdbNameFromLangXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 293
    .local v0, "databases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const-string/jumbo v4, ""

    .line 294
    .local v4, "ldbName":Ljava/lang/String;
    const-string/jumbo v6, "ALM"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_56

    const/4 v3, 0x1

    .line 295
    .local v3, "isRegularLdb":Z
    :goto_14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 296
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1c

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 298
    invoke-virtual {v6}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3e

    move-object v5, v4

    .line 318
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v4    # "ldbName":Ljava/lang/String;
    .local v5, "ldbName":Ljava/lang/String;
    :goto_55
    return-object v5

    .line 294
    .end local v3    # "isRegularLdb":Z
    .end local v5    # "ldbName":Ljava/lang/String;
    .restart local v4    # "ldbName":Ljava/lang/String;
    :cond_56
    const/4 v3, 0x0

    goto :goto_14

    .line 303
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .restart local v3    # "isRegularLdb":Z
    :cond_58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 304
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v7

    if-nez v7, :cond_62

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isTraceLDB()Z

    move-result v7

    if-nez v7, :cond_62

    .line 307
    if-eqz v3, :cond_88

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 308
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :cond_86
    :goto_86
    move-object v5, v4

    .line 318
    .end local v4    # "ldbName":Ljava/lang/String;
    .restart local v5    # "ldbName":Ljava/lang/String;
    goto :goto_55

    .line 310
    .end local v5    # "ldbName":Ljava/lang/String;
    .restart local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .restart local v4    # "ldbName":Ljava/lang/String;
    :cond_88
    if-nez v3, :cond_62

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 311
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 312
    goto :goto_86
.end method

.method private static isAsciiPrintable(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 543
    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isAsciiPrintable(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 547
    if-nez p0, :cond_4

    .line 557
    :cond_3
    :goto_3
    return v2

    .line 551
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 552
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_18

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/connect/LanguageInstall;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 557
    :cond_18
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private static isValidFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "intendedDir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 561
    invoke-static {p0}, Lcom/nuance/swype/connect/LanguageInstall;->isAsciiPrintable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 562
    sget-object v1, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Security checking of language resource name failed, no pure ASCII name"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 582
    :goto_f
    return v0

    .line 567
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 571
    const/4 v0, 0x1

    goto :goto_f

    .line 574
    :cond_21
    sget-object v1, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Security checking of language resource name failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_37

    goto :goto_f

    .line 579
    :catch_37
    move-exception v1

    sget-object v1, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Security checking of language resource name failed, I/O exception"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method private makeStagingFolder()Z
    .registers 3

    .prologue
    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method private moveExtractedFiles()Z
    .registers 12

    .prologue
    .line 255
    const/4 v6, 0x0

    .line 256
    .local v6, "success":Z
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->extractedFileList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v8, "[REQ]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 258
    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "actualFileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "moveTo":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[REQ]"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 264
    .end local v0    # "actualFileName":Ljava/lang/String;
    .end local v3    # "moveTo":Ljava/lang/String;
    :cond_3b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, ".gz"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 267
    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 269
    :cond_58
    iget-object v8, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-direct {p0, v8, v4}, Lcom/nuance/swype/connect/LanguageInstall;->getLdbNameFromLangXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    const-string/jumbo v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6b

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 274
    :cond_6b
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .restart local v3    # "moveTo":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, "newPath":Ljava/io/File;
    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    or-int/2addr v6, v8

    .line 278
    if-eqz v6, :cond_81

    .line 281
    iget-object v8, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 283
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "moveTo":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newPath":Ljava/io/File;
    :cond_81
    return v6
.end method


# virtual methods
.method public canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 535
    if-eqz p1, :cond_16

    const-string/jumbo v0, ".gz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 538
    :cond_16
    sget-object v0, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "canonicalizeFilenName name="

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->nativeDataFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    const/16 v2, 0x5000

    new-array v1, v2, [B

    .line 522
    .local v1, "fileDataBuffer":[B
    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 523
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 525
    :cond_10
    return-void
.end method

.method protected createMetadataFile()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v2, 0x0

    .line 361
    .local v2, "isReady":Z
    const/4 v3, 0x0

    .line 363
    .local v3, "writer":Ljava/io/Writer;
    :try_start_2
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_16} :catch_53
    .catchall {:try_start_2 .. :try_end_16} :catchall_49

    .line 365
    .end local v3    # "writer":Ljava/io/Writer;
    .local v4, "writer":Ljava/io/Writer;
    :try_start_16
    iget-object v5, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_31} :catch_32
    .catchall {:try_start_16 .. :try_end_31} :catchall_50

    goto :goto_1c

    .line 371
    .end local v1    # "fileName":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object v3, v4

    .line 372
    .end local v4    # "writer":Ljava/io/Writer;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "writer":Ljava/io/Writer;
    :goto_34
    :try_start_34
    sget-object v5, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_49

    .line 374
    if-eqz v3, :cond_42

    .line 375
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 379
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_42
    :goto_42
    return v2

    .line 370
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v4    # "writer":Ljava/io/Writer;
    :cond_43
    const/4 v2, 0x1

    .line 375
    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    goto :goto_42

    .line 374
    :catchall_49
    move-exception v5

    :goto_4a
    if-eqz v3, :cond_4f

    .line 375
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    :cond_4f
    throw v5

    .line 374
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v4    # "writer":Ljava/io/Writer;
    :catchall_50
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    goto :goto_4a

    .line 371
    :catch_53
    move-exception v0

    goto :goto_34
.end method

.method protected deleteDownloadedFile()Z
    .registers 3

    .prologue
    .line 487
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languagePackFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method protected extractFiles()Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v7, 0x0

    .line 394
    .local v7, "entries":I
    const/16 v19, 0x0

    .line 396
    .local v19, "total":I
    const/4 v12, 0x0

    .line 398
    .local v12, "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_4
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/LanguageInstall;->languagePackFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 399
    .local v11, "languagePackInputStream":Ljava/io/InputStream;
    new-instance v13, Ljava/util/zip/ZipInputStream;

    new-instance v23, Ljava/io/BufferedInputStream;

    const/16 v24, 0x5000

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v11, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_130

    .line 403
    .end local v12    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .local v13, "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v23, 0x5000

    :try_start_25
    move/from16 v0, v23

    new-array v8, v0, [B

    .line 405
    .local v8, "fileDataBuffer":[B
    new-instance v23, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/LanguageInstall;->getStagingFolder()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "canonicalID":Ljava/lang/String;
    :cond_36
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v16

    .local v16, "languageResourceZipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v16, :cond_129

    .line 409
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    .line 410
    .local v14, "languageResourceFileName":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/LanguageInstall;->getStagingFolder()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 412
    .local v18, "outputFileName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/nuance/swype/connect/LanguageInstall;->isValidFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5c
    .catchall {:try_start_25 .. :try_end_5c} :catchall_137

    move-result v23

    if-nez v23, :cond_65

    .line 475
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    const/16 v23, 0x0

    .line 478
    .end local v14    # "languageResourceFileName":Ljava/lang/String;
    .end local v18    # "outputFileName":Ljava/lang/String;
    :goto_64
    return v23

    .line 417
    .restart local v14    # "languageResourceFileName":Ljava/lang/String;
    .restart local v18    # "outputFileName":Ljava/lang/String;
    :cond_65
    :try_start_65
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 418
    .local v15, "languageResourceOutputStream":Ljava/io/FileOutputStream;
    new-instance v17, Ljava/io/BufferedOutputStream;

    const/16 v23, 0x5000

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-direct {v0, v15, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 421
    .local v17, "out":Ljava/io/OutputStream;
    :goto_77
    invoke-virtual {v13, v8}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    .local v5, "bytesRead":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_8d

    .line 423
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v8, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 425
    add-int v19, v19, v5

    goto :goto_77

    .line 427
    :cond_8d
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 430
    const-string/jumbo v23, ".mp3"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_ee

    .line 431
    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v24

    .line 432
    add-int/lit8 v24, v24, -0x4

    .line 431
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 434
    .local v20, "unzipFileName":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v22, "zippedLdb":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 437
    .local v10, "ins":Ljava/io/InputStream;
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 440
    .local v9, "in":Ljava/util/zip/GZIPInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v23, 0x5000

    move/from16 v0, v23

    invoke-direct {v3, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 442
    .local v3, "bis":Ljava/io/BufferedInputStream;
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 443
    .local v21, "unzipFileStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v23, 0x5000

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 445
    .local v4, "bos":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/connect/LanguageInstall;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 447
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 448
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 453
    move-object/from16 v18, v20

    .line 457
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/OutputStream;
    .end local v9    # "in":Ljava/util/zip/GZIPInputStream;
    .end local v10    # "ins":Ljava/io/InputStream;
    .end local v20    # "unzipFileName":Ljava/lang/String;
    .end local v21    # "unzipFileStream":Ljava/io/FileOutputStream;
    .end local v22    # "zippedLdb":Ljava/io/File;
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/LanguageInstall;->extractedFileList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v7, v7, 0x1

    .line 461
    const/16 v23, 0x400

    move/from16 v0, v23

    if-le v7, v0, :cond_112

    .line 463
    sget-object v23, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v24, "Security checking of install language failed, too many files "

    invoke-interface/range {v23 .. v24}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_10b
    .catchall {:try_start_65 .. :try_end_10b} :catchall_137

    .line 475
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    const/16 v23, 0x0

    goto/16 :goto_64

    .line 466
    :cond_112
    const/high16 v23, 0x6400000

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_36

    .line 468
    :try_start_11a
    sget-object v23, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v24, "Security checking of install language failed, files\' size too large "

    invoke-interface/range {v23 .. v24}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_122
    .catchall {:try_start_11a .. :try_end_122} :catchall_137

    .line 475
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    const/16 v23, 0x0

    goto/16 :goto_64

    .end local v5    # "bytesRead":I
    .end local v14    # "languageResourceFileName":Ljava/lang/String;
    .end local v15    # "languageResourceOutputStream":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v18    # "outputFileName":Ljava/lang/String;
    :cond_129
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    .line 478
    const/16 v23, 0x1

    goto/16 :goto_64

    .line 474
    .end local v6    # "canonicalID":Ljava/lang/String;
    .end local v8    # "fileDataBuffer":[B
    .end local v11    # "languagePackInputStream":Ljava/io/InputStream;
    .end local v13    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v16    # "languageResourceZipEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_130
    move-exception v23

    :goto_131
    if-eqz v12, :cond_136

    .line 475
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_136
    throw v23

    .line 474
    .end local v12    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "languagePackInputStream":Ljava/io/InputStream;
    .restart local v13    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_137
    move-exception v23

    move-object v12, v13

    .end local v13    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_131
.end method

.method protected fileExists(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 502
    .local v1, "isThere":Z
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 508
    :goto_a
    return v1

    .line 504
    :catch_b
    move-exception v0

    .line 505
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v2, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "Security exception in file.exists()"

    invoke-interface {v2, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public getStagingFolder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public install(Ljava/lang/String;)Z
    .registers 10
    .param p1, "tempPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 99
    sget-object v2, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "install "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 102
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 104
    .local v1, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2d
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->readMetadataFile()Ljava/util/List;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_4e

    move-result-object v1

    .line 108
    :goto_31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z

    goto :goto_35

    .line 111
    .end local v0    # "file":Ljava/lang/String;
    :cond_45
    iget-object v2, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z

    .line 113
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/LanguageInstall;->installPack(Ljava/lang/String;)V

    .line 114
    return v7

    :catch_4e
    move-exception v2

    goto :goto_31
.end method

.method public installALM(Ljava/lang/String;)Z
    .registers 5
    .param p1, "tempPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 119
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/LanguageInstall;->installPack(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V

    .line 122
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onUpdateLanguage(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x1

    return v1
.end method

.method public installPack(Ljava/lang/String;)V
    .registers 4
    .param p1, "languagePackFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languagePackFileName:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/LanguageInstall;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 208
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/LanguageInstall;->deleteAllFiles(Ljava/lang/String;)Z

    move-result v0

    .line 213
    .local v0, "stagingFolderReady":Z
    :goto_10
    if-eqz v0, :cond_27

    .line 215
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->extractFiles()Z

    move-result v1

    .line 216
    if-eqz v1, :cond_24

    .line 217
    invoke-direct {p0}, Lcom/nuance/swype/connect/LanguageInstall;->moveExtractedFiles()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 219
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->createMetadataFile()Z

    .line 220
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteDownloadedFile()Z

    .line 224
    :cond_24
    invoke-direct {p0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteStagingFolder()V

    .line 226
    :cond_27
    return-void

    .line 210
    .end local v0    # "stagingFolderReady":Z
    :cond_28
    invoke-direct {p0}, Lcom/nuance/swype/connect/LanguageInstall;->makeStagingFolder()Z

    move-result v0

    .restart local v0    # "stagingFolderReady":Z
    goto :goto_10
.end method

.method protected readMetadataFile()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->readMetadataFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readMetadataFile(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 170
    .local v2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 173
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_1a} :catch_44
    .catchall {:try_start_6 .. :try_end_1a} :catchall_3a

    .line 175
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_1a
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 176
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_23} :catch_24
    .catchall {:try_start_1a .. :try_end_23} :catchall_41

    goto :goto_1a

    .line 178
    .end local v1    # "file":Ljava/lang/String;
    :catch_24
    move-exception v0

    move-object v3, v4

    .line 179
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_26
    :try_start_26
    sget-object v5, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_3a

    .line 181
    if-eqz v3, :cond_34

    .line 182
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 185
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_34
    :goto_34
    return-object v2

    .line 182
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "file":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_35
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_34

    .line 181
    .end local v1    # "file":Ljava/lang/String;
    :catchall_3a
    move-exception v5

    :goto_3b
    if-eqz v3, :cond_40

    .line 182
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_40
    throw v5

    .line 181
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_41
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3b

    .line 178
    :catch_44
    move-exception v0

    goto :goto_26
.end method

.method public declared-synchronized uninstall()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    new-instance v5, Lcom/nuance/swype/input/LanguageList;

    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 131
    .local v5, "langList":Lcom/nuance/swype/input/LanguageList;
    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/LanguageList;->isHdbShared(Ljava/lang/String;)Z

    move-result v4

    .line 132
    .local v4, "isSharedHdb":Z
    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/LanguageList;->getHdbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "hdbName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/LanguageList;->removeDownloadedLanguage(Ljava/lang/String;)Z

    move-result v3

    .line 135
    .local v3, "isRemoved":Z
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_45

    .line 137
    .local v1, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_23
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->readMetadataFile()Ljava/util/List;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_60
    .catchall {:try_start_23 .. :try_end_26} :catchall_45

    move-result-object v1

    .line 142
    :goto_27
    if-eqz v3, :cond_48

    .line 143
    :try_start_29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "file":Ljava/lang/String;
    if-eqz v4, :cond_41

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2d

    .line 145
    :cond_41
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_45

    goto :goto_2d

    .line 130
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "hdbName":Ljava/lang/String;
    .end local v3    # "isRemoved":Z
    .end local v4    # "isSharedHdb":Z
    .end local v5    # "langList":Lcom/nuance/swype/input/LanguageList;
    :catchall_45
    move-exception v6

    monitor-exit p0

    throw v6

    .line 149
    .restart local v1    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "hdbName":Ljava/lang/String;
    .restart local v3    # "isRemoved":Z
    .restart local v4    # "isSharedHdb":Z
    .restart local v5    # "langList":Lcom/nuance/swype/input/LanguageList;
    :cond_48
    :try_start_48
    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z

    .line 150
    if-eqz v3, :cond_5e

    .line 151
    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_45

    .line 154
    :cond_5e
    monitor-exit p0

    return-void

    :catch_60
    move-exception v6

    goto :goto_27
.end method
