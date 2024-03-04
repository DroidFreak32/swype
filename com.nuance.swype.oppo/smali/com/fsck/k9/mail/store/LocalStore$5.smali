.class Lcom/fsck/k9/mail/store/LocalStore$5;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->getFolderCount()I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$5;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 460
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "SELECT COUNT(*) FROM folders"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 467
    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 467
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 469
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
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
    .line 453
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$5;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
