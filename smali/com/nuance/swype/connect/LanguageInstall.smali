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

.field private final filesDir:Ljava/io/File;

.field private final languageName:Ljava/lang/String;

.field private languagePackFileName:Ljava/lang/String;

.field private final metadataFileName:Ljava/lang/String;

.field private final nativeDataFileDir:Ljava/lang/String;

.field private final stagingFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "LanguageInstall"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "languageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    .line 79
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->filesDir:Ljava/io/File;

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->filesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->nativeDataFileDir:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->extractedFileList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "languageDownload/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private deleteAllFiles(Ljava/lang/String;)Z
    .locals 9
    .param p1, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v7, 0x0

    .line 331
    .local v7, "success":Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "fileList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v8, v2

    if-lez v8, :cond_0

    .line 336
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 337
    .local v3, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v7, v8

    .line 339
    if-eqz v7, :cond_1

    .line 340
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    const/4 v7, 0x1

    .line 347
    :cond_1
    return v7
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private deleteStagingFolder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteAllFiles(Ljava/lang/String;)Z

    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed delete on staging folder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 236
    :cond_0
    return-void
.end method

.method private getLdbNameFromLangXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 293
    .local v0, "databases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const-string v5, ""

    .line 294
    .local v5, "ldbName":Ljava/lang/String;
    const-string v7, "ALM"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 295
    .local v4, "isRegularLdb":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 296
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 298
    invoke-virtual {v7}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move-object v6, v5

    .line 318
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v5    # "ldbName":Ljava/lang/String;
    .local v6, "ldbName":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 294
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isRegularLdb":Z
    .end local v6    # "ldbName":Ljava/lang/String;
    .restart local v5    # "ldbName":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 303
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "isRegularLdb":Z
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 304
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isTraceLDB()Z

    move-result v7

    if-nez v7, :cond_4

    .line 305
    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 308
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :cond_5
    :goto_2
    move-object v6, v5

    .line 318
    .end local v5    # "ldbName":Ljava/lang/String;
    .restart local v6    # "ldbName":Ljava/lang/String;
    goto :goto_1

    .line 310
    .end local v6    # "ldbName":Ljava/lang/String;
    .restart local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .restart local v5    # "ldbName":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_4

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 311
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 312
    goto :goto_2
.end method

.method private makeStagingFolder()Z
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method private moveExtractedFiles()Z
    .locals 11

    .prologue
    .line 254
    const/4 v7, 0x0

    .line 256
    .local v7, "success":Z
    iget-object v8, p0, Lcom/nuance/swype/connect/LanguageInstall;->extractedFileList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    .local v2, "fileName":Ljava/lang/String;
    const-string v8, "[REQ]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 258
    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "actualFileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "moveTo":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[REQ]"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "actualFileName":Ljava/lang/String;
    .end local v4    # "moveTo":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v8, ".gz"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 267
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 269
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/nuance/swype/connect/LanguageInstall;->getLdbNameFromLangXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 270
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 274
    :cond_2
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .restart local v4    # "moveTo":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v6, "newPath":Ljava/io/File;
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 278
    if-eqz v7, :cond_3

    .line 279
    iget-object v8, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "moveTo":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "newPath":Ljava/io/File;
    :cond_3
    return v7
.end method


# virtual methods
.method public canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 507
    if-eqz p1, :cond_0

    const-string v0, ".gz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 510
    :cond_0
    sget-object v0, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "canonicalizeFilenName name="

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->nativeDataFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    const/16 v2, 0x5000

    new-array v1, v2, [B

    .line 494
    .local v1, "fileDataBuffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 495
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method protected createMetadataFile()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v2, 0x0

    .line 363
    .local v2, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    .end local v2    # "writer":Ljava/io/Writer;
    .local v3, "writer":Ljava/io/Writer;
    :try_start_1
    iget-object v4, p0, Lcom/nuance/swype/connect/LanguageInstall;->deployedFileList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :goto_1
    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    :cond_0
    throw v4

    .line 370
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_1
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 377
    const/4 v4, 0x1

    return v4

    .line 372
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method protected deleteDownloadedFile()Z
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languagePackFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method protected extractFiles()Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v9, 0x0

    .line 392
    .local v9, "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/LanguageInstall;->languagePackFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 393
    .local v8, "languagePackInputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    const/16 v20, 0x5000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v8, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    .end local v9    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .local v10, "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v19, 0x5000

    :try_start_1
    move/from16 v0, v19

    new-array v5, v0, [B

    .line 399
    .local v5, "fileDataBuffer":[B
    :goto_0
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    .local v13, "languageResourceZipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v13, :cond_3

    .line 400
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 401
    .local v11, "languageResourceFileName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/LanguageInstall;->getStagingFolder()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 404
    .local v15, "outputFileName":Ljava/lang/String;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 405
    .local v12, "languageResourceOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    const/16 v19, 0x5000

    move/from16 v0, v19

    invoke-direct {v14, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 409
    .local v14, "out":Ljava/io/OutputStream;
    :goto_1
    invoke-virtual {v10, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "bytesRead":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_1

    .line 410
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v5, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 446
    .end local v4    # "bytesRead":I
    .end local v5    # "fileDataBuffer":[B
    .end local v11    # "languageResourceFileName":Ljava/lang/String;
    .end local v12    # "languageResourceOutputStream":Ljava/io/FileOutputStream;
    .end local v13    # "languageResourceZipEntry":Ljava/util/zip/ZipEntry;
    .end local v14    # "out":Ljava/io/OutputStream;
    .end local v15    # "outputFileName":Ljava/lang/String;
    :catchall_0
    move-exception v19

    move-object v9, v10

    .end local v8    # "languagePackInputStream":Ljava/io/InputStream;
    .end local v10    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_2
    if-eqz v9, :cond_0

    .line 447
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_0
    throw v19

    .line 412
    .end local v9    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "bytesRead":I
    .restart local v5    # "fileDataBuffer":[B
    .restart local v8    # "languagePackInputStream":Ljava/io/InputStream;
    .restart local v10    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "languageResourceFileName":Ljava/lang/String;
    .restart local v12    # "languageResourceOutputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "languageResourceZipEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "out":Ljava/io/OutputStream;
    .restart local v15    # "outputFileName":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 415
    const-string v19, ".mp3"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 416
    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x4

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 419
    .local v16, "unzipFileName":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v18, "zippedLdb":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 422
    .local v7, "ins":Ljava/io/InputStream;
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 424
    .local v6, "in":Ljava/util/zip/GZIPInputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v19, 0x5000

    move/from16 v0, v19

    invoke-direct {v2, v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 427
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 428
    .local v17, "unzipFileStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v19, 0x5000

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 430
    .local v3, "bos":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/connect/LanguageInstall;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 432
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 433
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 438
    move-object/from16 v15, v16

    .line 442
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/OutputStream;
    .end local v6    # "in":Ljava/util/zip/GZIPInputStream;
    .end local v7    # "ins":Ljava/io/InputStream;
    .end local v16    # "unzipFileName":Ljava/lang/String;
    .end local v17    # "unzipFileStream":Ljava/io/FileOutputStream;
    .end local v18    # "zippedLdb":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/LanguageInstall;->extractedFileList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 444
    .end local v4    # "bytesRead":I
    .end local v11    # "languageResourceFileName":Ljava/lang/String;
    .end local v12    # "languageResourceOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "out":Ljava/io/OutputStream;
    .end local v15    # "outputFileName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V

    .line 450
    const/16 v19, 0x1

    return v19

    .line 446
    .end local v5    # "fileDataBuffer":[B
    .end local v8    # "languagePackInputStream":Ljava/io/InputStream;
    .end local v10    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v13    # "languageResourceZipEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "languagePackZipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v19

    goto :goto_2
.end method

.method protected fileExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 471
    const/4 v2, 0x0

    .line 474
    .local v2, "isThere":Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x0

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 480
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v3, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "Security exception in file.exists()"

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getStagingFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tempPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    sget-object v3, Lcom/nuance/swype/connect/LanguageInstall;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "install "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 105
    .local v1, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->readMetadataFile()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 112
    .end local v0    # "file":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z

    .line 114
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/LanguageInstall;->installPack(Ljava/lang/String;)V

    .line 115
    const/4 v3, 0x1

    return v3

    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public installALM(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tempPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 120
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/LanguageInstall;->installPack(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V

    .line 123
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onUpdateLanguage(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x1

    return v1
.end method

.method public installPack(Ljava/lang/String;)V
    .locals 2
    .param p1, "languagePackFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/nuance/swype/connect/LanguageInstall;->languagePackFileName:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/LanguageInstall;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/nuance/swype/connect/LanguageInstall;->stagingFolderName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/LanguageInstall;->deleteAllFiles(Ljava/lang/String;)Z

    move-result v0

    .line 212
    .local v0, "stagingFolderReady":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->extractFiles()Z

    move-result v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/nuance/swype/connect/LanguageInstall;->moveExtractedFiles()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->createMetadataFile()Z

    .line 219
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteDownloadedFile()Z

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteStagingFolder()V

    .line 225
    :cond_1
    return-void

    .line 209
    .end local v0    # "stagingFolderReady":Z
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/LanguageInstall;->makeStagingFolder()Z

    move-result v0

    .restart local v0    # "stagingFolderReady":Z
    goto :goto_0
.end method

.method protected readMetadataFile()Ljava/util/List;
    .locals 1
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
    .line 194
    iget-object v0, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->readMetadataFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readMetadataFile(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 170
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 171
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 174
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "file":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_0
    throw v4

    .line 180
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 184
    return-object v1

    .line 180
    .end local v0    # "file":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public declared-synchronized uninstall()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/nuance/swype/input/LanguageList;

    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 132
    .local v6, "langList":Lcom/nuance/swype/input/LanguageList;
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/LanguageList;->isHdbShared(Ljava/lang/String;)Z

    move-result v5

    .line 133
    .local v5, "isSharedHdb":Z
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/LanguageList;->getHdbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "hdbName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/LanguageInstall;->canonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->languageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/LanguageList;->removeDownloadedLanguage(Ljava/lang/String;)Z

    move-result v4

    .line 136
    .local v4, "isRemoved":Z
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .local v1, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageInstall;->readMetadataFile()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 143
    :goto_0
    if-eqz v4, :cond_2

    .line 144
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "file":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    :cond_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 131
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "hdbName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isRemoved":Z
    .end local v5    # "isSharedHdb":Z
    .end local v6    # "langList":Lcom/nuance/swype/input/LanguageList;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 150
    .restart local v1    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "hdbName":Ljava/lang/String;
    .restart local v4    # "isRemoved":Z
    .restart local v5    # "isSharedHdb":Z
    .restart local v6    # "langList":Lcom/nuance/swype/input/LanguageList;
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->metadataFileName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/LanguageInstall;->deleteFile(Ljava/lang/String;)Z

    .line 151
    if-eqz v4, :cond_3

    .line 152
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    iget-object v7, p0, Lcom/nuance/swype/connect/LanguageInstall;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :cond_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method
