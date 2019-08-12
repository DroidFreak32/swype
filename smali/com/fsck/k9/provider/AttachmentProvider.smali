.class public Lcom/fsck/k9/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# static fields
.field private static CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.fsck.k9.attachmentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 37
    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 6
    .param p0, "lContext"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 100
    .local v1, "file":Ljava/io/File;
    :try_start_0
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-void

    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 310
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v1

    goto :goto_0

    .line 325
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getAttachmentUri(Lcom/fsck/k9/Account;J)Landroid/net/Uri;
    .locals 1
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "id"    # J

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .param p0, "db"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 63
    sget-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 143
    .local v0, "account":Lcom/fsck/k9/Account;
    sget-object v4, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 145
    .local v1, "attachmentsDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "attachmentsDir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "k9"

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "account":Lcom/fsck/k9/Account;
    .restart local v1    # "attachmentsDir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 112
    .local v5, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "dbName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 114
    .local v4, "id":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, "format":Ljava/lang/String;
    const-string v6, "THUMBNAIL"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    const-string v6, "image/png"

    .line 131
    :goto_0
    return-object v6

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 125
    .local v0, "account":Lcom/fsck/k9/Account;
    :try_start_0
    sget-object v6, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v0, v6}, Lcom/fsck/k9/mail/store/LocalStore;->getLocalInstance(Lcom/fsck/k9/Account;Landroid/app/Application;)Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v6

    .line 126
    invoke-virtual {v6, v4}, Lcom/fsck/k9/mail/store/LocalStore;->getAttachmentType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to retrieve LocalStore for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 80
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 78
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    .line 163
    .local v13, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "dbName":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 165
    .local v9, "id":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 166
    .local v7, "format":Ljava/lang/String;
    const-string v17, "THUMBNAIL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 168
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 169
    .local v16, "width":I
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 170
    .local v8, "height":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "thmb_"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "filename":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 172
    .local v11, "index":I
    if-ltz v11, :cond_0

    .line 174
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "thmb_"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 177
    .local v4, "dir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 180
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 181
    .local v2, "attachmentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/provider/AttachmentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "type":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/fsck/k9/provider/AttachmentProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v10, "in":Ljava/io/FileInputStream;
    :try_start_1
    const-string v17, "image/*"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static {v10}, Lcom/fsck/k9/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 188
    .local v14, "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v14, :cond_1

    .line 190
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v8, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 191
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 192
    .local v12, "out":Ljava/io/FileOutputStream;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .end local v12    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    .end local v2    # "attachmentUri":Landroid/net/Uri;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v14    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v15    # "type":Ljava/lang/String;
    :cond_2
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 210
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v8    # "height":I
    .end local v11    # "index":I
    .end local v16    # "width":I
    :goto_1
    return-object v17

    .line 187
    .restart local v2    # "attachmentUri":Landroid/net/Uri;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v8    # "height":I
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "index":I
    .restart local v15    # "type":Ljava/lang/String;
    .restart local v16    # "width":I
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v17

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    throw v17
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 203
    .end local v10    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v17

    const/16 v17, 0x0

    goto :goto_1

    .line 210
    .end local v2    # "attachmentUri":Landroid/net/Uri;
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v8    # "height":I
    .end local v11    # "index":I
    .end local v15    # "type":Ljava/lang/String;
    .end local v16    # "width":I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/fsck/k9/provider/AttachmentProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    const/high16 v18, 0x10000000

    invoke-static/range {v17 .. v18}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 232
    if-nez p2, :cond_0

    .line 234
    const/4 v10, 0x2

    new-array p2, v10, [Ljava/lang/String;

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, p2, v10

    const/4 v10, 0x1

    const-string v11, "_data"

    aput-object v11, p2, v10

    .line 242
    .restart local p2    # "projection":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 243
    .local v8, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "dbName":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 248
    .local v6, "id":Ljava/lang/String;
    const-string v10, ".db"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 249
    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 256
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v10

    .line 257
    sget-object v11, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore;->getLocalInstance(Lcom/fsck/k9/Account;Landroid/app/Application;)Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/fsck/k9/mail/store/LocalStore;->getAttachmentInfo(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    .local v0, "attachmentInfo":Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 266
    .local v7, "ret":Landroid/database/MatrixCursor;
    array-length v10, p2

    new-array v9, v10, [Ljava/lang/Object;

    .line 267
    .local v9, "values":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v2, p2

    .local v2, "count":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 269
    aget-object v1, p2, v5

    .line 270
    .local v1, "column":Ljava/lang/String;
    const-string v10, "_id"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 272
    aput-object v6, v9, v5

    .line 267
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "attachmentInfo":Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    .end local v1    # "column":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v7    # "ret":Landroid/database/MatrixCursor;
    .end local v9    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 261
    .local v4, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v10, "k9"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Uname to retrieve attachment info from local store for ID: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/4 v7, 0x0

    .line 288
    .end local v4    # "e":Lcom/fsck/k9/mail/MessagingException;
    :goto_2
    return-object v7

    .line 274
    .restart local v0    # "attachmentInfo":Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    .restart local v1    # "column":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    .restart local v7    # "ret":Landroid/database/MatrixCursor;
    .restart local v9    # "values":[Ljava/lang/Object;
    :cond_3
    const-string v10, "_data"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    goto :goto_1

    .line 278
    :cond_4
    const-string v10, "_display_name"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 280
    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;->name:Ljava/lang/String;

    aput-object v10, v9, v5

    goto :goto_1

    .line 282
    :cond_5
    const-string v10, "_size"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 284
    iget v10, v0, Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;->size:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    goto :goto_1

    .line 287
    .end local v1    # "column":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method
