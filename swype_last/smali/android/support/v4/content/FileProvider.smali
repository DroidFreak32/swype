.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/FileProvider$SimplePathStrategy;,
        Landroid/support/v4/content/FileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 631
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 754
    move-object v0, p0

    .local v0, "cur":Ljava/io/File;
    move v3, v4

    move-object v1, v0

    .line 755
    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_4
    if-gtz v3, :cond_13

    aget-object v2, p1, v4

    .line 756
    .local v2, "segment":Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 757
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 755
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_f
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_4

    .line 760
    .end local v2    # "segment":Ljava/lang/String;
    :cond_13
    return-object v1

    .restart local v2    # "segment":Ljava/lang/String;
    :cond_14
    move-object v0, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_f
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 531
    sget-object v4, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 532
    :try_start_5
    sget-object v2, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_3e

    .line 533
    .local v1, "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    if-nez v1, :cond_fb

    .line 3557
    :try_start_f
    new-instance v1, Landroid/support/v4/content/FileProvider$SimplePathStrategy;

    .end local v1    # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    invoke-direct {v1, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 3559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x80

    .line 3560
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 3562
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.support.FILE_PROVIDER_PATHS"

    .line 3561
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 3563
    if-nez v5, :cond_4a

    .line 3564
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_34} :catch_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_34} :catch_8d
    .catchall {:try_start_f .. :try_end_34} :catchall_3e

    .line 536
    :catch_34
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    :try_start_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 545
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v2

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    throw v2

    .line 3650
    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_44} :catch_8d
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    move-result-object v2

    .line 3656
    :try_start_45
    iget-object v7, v1, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3569
    :cond_4a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v10, :cond_f6

    .line 3570
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4a

    .line 3571
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3573
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3574
    const/4 v7, 0x0

    const-string/jumbo v8, "path"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3577
    const-string/jumbo v8, "root-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 3578
    sget-object v2, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v2, v8}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3587
    :goto_7c
    if-eqz v2, :cond_4a

    .line 3644
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 3645
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Name must not be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_8d} :catch_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_8d} :catch_8d
    .catchall {:try_start_45 .. :try_end_8d} :catchall_3e

    .line 539
    :catch_8d
    move-exception v0

    .line 540
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_3e

    .line 3579
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_97
    :try_start_97
    const-string/jumbo v8, "files-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_af

    .line 3580
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v2, v8}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_7c

    .line 3581
    :cond_af
    const-string/jumbo v8, "cache-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 3582
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v2, v8}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_7c

    .line 3583
    :cond_c7
    const-string/jumbo v8, "external-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 3584
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v2, v8}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_7c

    .line 3651
    :catch_df
    move-exception v3

    .line 3652
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failed to resolve canonical path for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_f6} :catch_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_f6} :catch_8d
    .catchall {:try_start_97 .. :try_end_f6} :catchall_3e

    .line 543
    .restart local v1    # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    :cond_f6
    :try_start_f6
    sget-object v2, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_fb
    monitor-exit v4
    :try_end_fc
    .catchall {:try_start_f6 .. :try_end_fc} :catchall_3e

    .line 546
    return-object v1

    .end local v1    # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    :cond_fd
    move-object v2, v3

    goto/16 :goto_7c
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 343
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 346
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_10

    .line 347
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must not be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_10
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1d

    .line 350
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1d
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    .line 354
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 452
    iget-object v4, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v4, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 454
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 455
    .local v2, "lastDot":I
    if-ltz v2, :cond_27

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "mime":Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 463
    .end local v0    # "extension":Ljava/lang/String;
    .end local v3    # "mime":Ljava/lang/String;
    :goto_26
    return-object v3

    :cond_27
    const-string/jumbo v3, "application/octet-stream"

    goto :goto_26
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v2, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v2, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 2730
    .local v0, "file":Ljava/io/File;
    const-string/jumbo v2, "r"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2731
    const/high16 v1, 0x10000000

    .line 522
    .local v1, "fileMode":I
    :goto_11
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 2732
    .end local v1    # "fileMode":I
    :cond_16
    const-string/jumbo v2, "w"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string/jumbo v2, "wt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2733
    :cond_28
    const/high16 v1, 0x2c000000

    goto :goto_11

    .line 2736
    :cond_2b
    const-string/jumbo v2, "wa"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2737
    const/high16 v1, 0x2a000000

    goto :goto_11

    .line 2740
    :cond_37
    const-string/jumbo v2, "rw"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2741
    const/high16 v1, 0x38000000

    goto :goto_11

    .line 2743
    :cond_43
    const-string/jumbo v2, "rwt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 2744
    const/high16 v1, 0x3c000000    # 0.0078125f

    goto :goto_11

    .line 2748
    :cond_4f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v6

    .line 415
    .local v6, "file":Ljava/io/File;
    if-nez p2, :cond_e

    .line 416
    sget-object p2, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 419
    :cond_e
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v3, v11, [Ljava/lang/String;

    .line 420
    .local v3, "cols":[Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v9, v11, [Ljava/lang/Object;

    .line 421
    .local v9, "values":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 422
    .local v7, "i":I
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v11, 0x0

    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_1e
    if-ge v11, v12, :cond_57

    aget-object v2, p2, v11

    .line 423
    .local v2, "col":Ljava/lang/String;
    const-string/jumbo v13, "_display_name"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 424
    const-string/jumbo v13, "_display_name"

    aput-object v13, v3, v8

    .line 425
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v8

    .line 422
    :goto_38
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_1e

    .line 426
    :cond_3c
    const-string/jumbo v13, "_size"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6f

    .line 427
    const-string/jumbo v13, "_size"

    aput-object v13, v3, v8

    .line 428
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v9, v8

    goto :goto_38

    .line 1764
    .end local v2    # "col":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_57
    new-array v4, v8, [Ljava/lang/String;

    .line 1765
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v3, v11, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1770
    .end local v3    # "cols":[Ljava/lang/String;
    .local v4, "cols":[Ljava/lang/String;
    new-array v10, v8, [Ljava/lang/Object;

    .line 1771
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v10, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    .end local v9    # "values":[Ljava/lang/Object;
    .local v10, "values":[Ljava/lang/Object;
    new-instance v5, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    invoke-direct {v5, v4, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 436
    .local v5, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 437
    return-object v5

    .end local v4    # "cols":[Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/MatrixCursor;
    .end local v10    # "values":[Ljava/lang/Object;
    .restart local v2    # "col":Ljava/lang/String;
    .restart local v3    # "cols":[Ljava/lang/String;
    .restart local v9    # "values":[Ljava/lang/Object;
    :cond_6f
    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_38
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
