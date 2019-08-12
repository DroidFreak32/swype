.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
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

.field final synthetic val$cv:Landroid/content/ContentValues;

.field final synthetic val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Landroid/content/ContentValues;Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .locals 0

    .prologue
    .line 2814
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;->val$cv:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

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
    .line 2814
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2818
    const-string v0, "messages"

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;->val$cv:Landroid/content/ContentValues;

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-static {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2820
    const/4 v0, 0x0

    return-object v0
.end method
