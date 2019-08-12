.class public final Lcom/fsck/k9/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final EMPTY_ACCOUNT_ARRAY:[Lcom/fsck/k9/Account;

.field private static preferences:Lcom/fsck/k9/Preferences;


# instance fields
.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mStorage:Lcom/fsck/k9/preferences/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fsck/k9/Account;

    sput-object v0, Lcom/fsck/k9/Preferences;->EMPTY_ACCOUNT_ARRAY:[Lcom/fsck/k9/Account;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/fsck/k9/preferences/Storage;->getStorage(Landroid/content/Context;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    .line 43
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->mContext:Landroid/content/Context;

    .line 44
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 46
    const-string v1, "k9"

    const-string v2, "Preferences storage is zero-size, importing from Android-style preferences"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/Editor;

    move-result-object v0

    .line 48
    .local v0, "editor":Lcom/fsck/k9/preferences/Editor;
    const-string v1, "AndroidMail.Main"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/Editor;->copy(Landroid/content/SharedPreferences;)V

    .line 49
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/Editor;->commit()Z

    .line 51
    .end local v0    # "editor":Lcom/fsck/k9/preferences/Editor;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-class v1, Lcom/fsck/k9/Preferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/fsck/k9/Preferences;

    invoke-direct {v0, p0}, Lcom/fsck/k9/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;

    .line 31
    :cond_0
    sget-object v0, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized loadAccounts()V
    .locals 9

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    const-string v7, "accountUuids"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "accountUuids":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "uuids":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    .line 60
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v5

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 62
    .local v4, "uuid":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    new-instance v7, Lcom/fsck/k9/Account;

    invoke-direct {v7, p0, v4}, Lcom/fsck/k9/Account;-><init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "uuid":Ljava/lang/String;
    .end local v5    # "uuids":[Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "accountUuids":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public final declared-synchronized getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    if-nez v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 131
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    .end local v0    # "account":Lcom/fsck/k9/Account;
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized getAccounts()[Lcom/fsck/k9/Account;
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    sget-object v1, Lcom/fsck/k9/Preferences;->EMPTY_ACCOUNT_ARRAY:[Lcom/fsck/k9/Account;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAvailableAccounts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    if-nez v3, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 105
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v2, "retval":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    iget-object v3, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 113
    .local v0, "account":Lcom/fsck/k9/Account;
    iget-object v3, p0, Lcom/fsck/k9/Preferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "retval":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 119
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "retval":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public final getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->mStorage:Lcom/fsck/k9/preferences/Storage;

    return-object v0
.end method
