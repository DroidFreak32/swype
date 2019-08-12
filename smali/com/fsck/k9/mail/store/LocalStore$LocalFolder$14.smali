.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->populateHeaders(Ljava/util/List;)V
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

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;->val$messages:Ljava/util/List;

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
    .line 1962
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1966
    const/4 v0, 0x0

    .line 1967
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;->val$messages:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 2012
    :cond_0
    :goto_0
    return-object v12

    .line 1973
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1974
    .local v6, "popMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1975
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1977
    .local v7, "questions":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;->val$messages:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 1979
    if-eqz v1, :cond_2

    .line 1981
    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1983
    :cond_2
    const-string v9, "?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1984
    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;->val$messages:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    .line 1985
    .local v4, "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1986
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1987
    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1991
    .end local v2    # "id":Ljava/lang/Long;
    .end local v4    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SELECT message_id, name, value FROM headers WHERE message_id in ( "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$1900()[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {p1, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1996
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1998
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1999
    .restart local v2    # "id":Ljava/lang/Long;
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2000
    .local v5, "name":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2002
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-virtual {v9, v5, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2007
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "popMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;>;"
    .end local v7    # "questions":Ljava/lang/StringBuffer;
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_4

    .line 2009
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v9

    .line 2007
    .restart local v1    # "i":I
    .restart local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "popMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;>;"
    .restart local v7    # "questions":Ljava/lang/StringBuffer;
    :cond_5
    if-eqz v0, :cond_0

    .line 2009
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
