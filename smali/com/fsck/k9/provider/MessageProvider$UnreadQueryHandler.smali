.class public final Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnreadQueryHandler"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/provider/MessageProvider;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccountUnread(I)Landroid/database/Cursor;
    .locals 12
    .param p1, "accountNumber"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 420
    new-array v5, v9, [Ljava/lang/String;

    const-string v8, "accountName"

    aput-object v8, v5, v10

    const-string v8, "unread"

    aput-object v8, v5, v11

    .line 422
    .local v5, "projection":[Ljava/lang/String;
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-direct {v6, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 425
    .local v6, "ret":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .line 427
    .local v4, "myAccountStats":Lcom/fsck/k9/AccountStats;
    new-array v7, v9, [Ljava/lang/Object;

    .line 429
    .local v7, "values":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v8}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 431
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 433
    move-object v3, v0

    .line 436
    .local v3, "myAccount":Lcom/fsck/k9/Account;
    :try_start_0
    iget-object v8, p0, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v8}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v4

    .line 437
    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 438
    if-nez v4, :cond_1

    .line 440
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 447
    :goto_1
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v8, "k9"

    invoke-virtual {v1}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v8, "Unknown"

    aput-object v8, v7, v10

    .line 453
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    goto :goto_0

    .line 444
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    iget v9, v4, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 458
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v3    # "myAccount":Lcom/fsck/k9/Account;
    :cond_2
    return-object v6
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    const-string v0, "account_unread/#"

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 414
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 415
    .local v0, "accountId":I
    invoke-direct {p0, v0}, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;->getAccountUnread(I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
