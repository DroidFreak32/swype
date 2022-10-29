.class public final Lcom/facebook/internal/NativeAppCallAttachmentStore;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeAppCallAttachmentStore$1;,
        Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    }
.end annotation


# static fields
.field static final ATTACHMENTS_DIR_NAME:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore.files"

.field private static final TAG:Ljava/lang/String;

.field private static attachmentsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttachments(Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 145
    :cond_8
    return-void

    .line 106
    :cond_9
    sget-object v5, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v5, :cond_10

    .line 107
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->cleanupAllAttachments()V

    .line 110
    :cond_10
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->ensureAttachmentsDirectoryExists()Ljava/io/File;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "filesToCleanup":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_18
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .line 116
    .local v0, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$100(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 120
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$200(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;

    move-result-object v5

    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$300(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 124
    .local v2, "file":Ljava/io/File;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_78

    .line 127
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4b} :catch_4c

    goto :goto_1c

    .line 135
    .end local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_4c
    move-exception v1

    .line 136
    .local v1, "exception":Ljava/io/IOException;
    sget-object v5, Lcom/facebook/internal/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Got unexpected exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 139
    .restart local v2    # "file":Ljava/io/File;
    :try_start_72
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_66

    .line 143
    :catch_76
    move-exception v5

    goto :goto_66

    .line 128
    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    :cond_78
    :try_start_78
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 129
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v5

    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$600(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v6

    invoke-static {v5, v6, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_89} :catch_4c

    goto :goto_1c

    .line 144
    .end local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "exception":Ljava/io/IOException;
    :cond_8a
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static cleanupAllAttachments()V
    .registers 1

    .prologue
    .line 223
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 225
    return-void
.end method

.method public static cleanupAttachmentsForCall(Ljava/util/UUID;)V
    .registers 3
    .param p0, "callId"    # Ljava/util/UUID;

    .prologue
    .line 154
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_a

    .line 156
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 158
    :cond_a
    return-void
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 4
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string/jumbo v0, "callId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "attachmentBitmap"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 4
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string/jumbo v0, "callId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "attachmentUri"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method static ensureAttachmentsDirectoryExists()Ljava/io/File;
    .registers 1

    .prologue
    .line 186
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 188
    return-object v0
.end method

.method static getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .registers 7
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentName"    # Ljava/lang/String;
    .param p2, "createDirs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-static {p0, p2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_8

    .line 216
    :goto_7
    return-object v1

    .line 214
    :cond_8
    :try_start_8
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_14} :catch_16

    move-object v1, v2

    goto :goto_7

    .line 216
    :catch_16
    move-exception v2

    goto :goto_7
.end method

.method static declared-synchronized getAttachmentsDirectory()Ljava/io/File;
    .registers 4

    .prologue
    .line 177
    const-class v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_19

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "com.facebook.NativeAppCallAttachmentStore.files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    .line 182
    :cond_19
    sget-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;
    .registers 5
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "create"    # Z

    .prologue
    .line 192
    sget-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v1, :cond_6

    .line 193
    const/4 v0, 0x0

    .line 200
    :cond_5
    :goto_5
    return-object v0

    .line 196
    :cond_6
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v0, "dir":Ljava/io/File;
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_5
.end method

.method public static openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p0, :cond_e

    .line 164
    :cond_8
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 168
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-static {p0, p1, v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    .line 172
    :catch_14
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method private static processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 74
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    return-void

    .line 74
    :catchall_10
    move-exception v1

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    .registers 6
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "isContentUri"    # Z
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    if-nez p1, :cond_17

    .line 86
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "inputStream":Ljava/io/InputStream;
    :goto_10
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_24

    .line 96
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    return-void

    .line 88
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_24

    move-result-object v0

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_10

    .line 96
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_24
    move-exception v2

    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method
