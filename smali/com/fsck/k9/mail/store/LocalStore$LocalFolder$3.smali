.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$3;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
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
.field final synthetic this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

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
    .line 1236
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$3;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 1240
    const-string v0, "INSERT INTO folders (name, visible_limit) VALUES (?, ?)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$800(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    const/4 v0, 0x0

    return-object v0
.end method
