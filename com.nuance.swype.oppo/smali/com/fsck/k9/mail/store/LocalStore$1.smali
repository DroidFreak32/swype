.class Lcom/fsck/k9/mail/store/LocalStore$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->getSize()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;

.field final synthetic val$attachmentDirectory:Ljava/io/File;

.field final synthetic val$storageManager:Lcom/fsck/k9/mail/store/StorageManager;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/io/File;Lcom/fsck/k9/mail/store/StorageManager;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$1;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$1;->val$attachmentDirectory:Ljava/io/File;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$1;->val$storageManager:Lcom/fsck/k9/mail/store/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 350
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$1;->val$attachmentDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 351
    .local v4, "files":[Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 352
    .local v2, "attachmentLength":J
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v4

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 354
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 352
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$1;->val$storageManager:Lcom/fsck/k9/mail/store/StorageManager;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore$1;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v8, v8, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$1;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v9}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/fsck/k9/mail/store/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 361
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$1;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
