.class public abstract Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;
.super Ljava/lang/Object;
.source "StorageManager.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FixedStorageProviderBase"
.end annotation


# instance fields
.field protected mApplicationDir:Ljava/io/File;

.field protected mRoot:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeRoot(Landroid/content/Context;)Ljava/io/File;
.end method

.method public getAttachmentDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mApplicationDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db_att"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mApplicationDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->computeRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    .line 196
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    const-string v2, "k9"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mApplicationDir:Ljava/io/File;

    .line 197
    return-void
.end method

.method public isReady(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 213
    invoke-static {v2}, Lcom/fsck/k9/mail/store/StorageManager;->isMountPoint(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Specified root isn\'t ready: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final isSupported(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;->supportsVendor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract supportsVendor()Z
.end method
