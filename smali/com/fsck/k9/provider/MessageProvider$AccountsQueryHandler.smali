.class public final Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;
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
    name = "AccountsQueryHandler"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/provider/MessageProvider;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string v0, "accounts"

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
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
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 372
    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "accountNumber"

    aput-object v2, v0, v1

    const-string v2, "accountName"

    aput-object v2, v0, v8

    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
