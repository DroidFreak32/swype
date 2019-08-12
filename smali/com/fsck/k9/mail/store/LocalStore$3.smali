.class Lcom/fsck/k9/mail/store/LocalStore$3;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->clear()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$3;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 404
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$3;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 408
    const-string v0, "DELETE FROM messages WHERE deleted = 0 and uid not like \'Local%\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 409
    const-string v0, "update folders set flagged_count = 0, unread_count = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x0

    return-object v0
.end method
