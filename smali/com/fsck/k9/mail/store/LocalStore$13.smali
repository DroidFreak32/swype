.class Lcom/fsck/k9/mail/store/LocalStore$13;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
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

.field final synthetic val$folder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

.field final synthetic val$messages:Ljava/util/ArrayList;

.field final synthetic val$placeHolders:[Ljava/lang/String;

.field final synthetic val$queryString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$queryString:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$placeHolders:[Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$folder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p5, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$messages:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 912
    .local v2, "i":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$queryString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$placeHolders:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 914
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 916
    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$folder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-direct {v3, v4, v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 917
    .local v3, "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    .line 919
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

    if-eqz v4, :cond_0

    .line 922
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

    invoke-interface {v4, v3}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 924
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 925
    goto :goto_0

    .line 926
    .end local v3    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$queryString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT -1 OFFSET 10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$placeHolders:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 929
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 931
    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$folder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-direct {v3, v4, v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 932
    .restart local v3    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    .line 934
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

    if-eqz v4, :cond_2

    .line 937
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$13;->val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

    invoke-interface {v4, v3}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 940
    goto :goto_1

    .line 948
    .end local v3    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :cond_3
    if-eqz v0, :cond_4

    .line 950
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 953
    :cond_4
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 942
    :catch_0
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got an exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    if-eqz v0, :cond_4

    .line 950
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 948
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 950
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
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
    .line 904
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$13;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
