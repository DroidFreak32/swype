.class public Lcom/fsck/k9/provider/MessageProvider;
.super Landroid/content/ContentProvider;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;,
        Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;,
        Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$DeleteUriExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$UriExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$PreviewExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$SendDateExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$SubjectExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$CountExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$IdExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$QueryHandler;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mMessageHelper:Lcom/fsck/k9/helper/MessageHelper;

.field private mQueryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/provider/MessageProvider$QueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field mScheduledPool:Ljava/util/concurrent/ScheduledExecutorService;

.field mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 936
    const-string v0, "content://com.fsck.k9.messageprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/provider/MessageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 938
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sender"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "delUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/provider/MessageProvider;->DEFAULT_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 954
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mQueryHandlers:Ljava/util/List;

    .line 968
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 971
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mScheduledPool:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fsck/k9/provider/MessageProvider;->DEFAULT_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/provider/MessageProvider;)Lcom/fsck/k9/helper/MessageHelper;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/provider/MessageProvider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mMessageHelper:Lcom/fsck/k9/helper/MessageHelper;

    return-object v0
.end method

.method private registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V
    .locals 4
    .param p1, "handler"    # Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->mQueryHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->mQueryHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->mQueryHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1176
    .local v0, "code":I
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.fsck.k9.messageprovider"

    invoke-interface {p1}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1006
    sget-object v14, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v14, :cond_0

    .line 1008
    const/4 v14, 0x0

    .line 1067
    :goto_0
    return v14

    .line 1011
    :cond_0
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_1

    .line 1013
    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "MessageProvider/delete: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    .line 1024
    .local v13, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1025
    .local v2, "accountId":I
    const/4 v14, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1026
    .local v5, "folderName":Ljava/lang/String;
    const/4 v14, 0x3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1029
    .local v11, "msgUid":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1030
    .local v12, "myAccount":Lcom/fsck/k9/Account;
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v3

    .local v3, "arr$":[Lcom/fsck/k9/Account;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v1, v3, v6

    .line 1032
    .local v1, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v14

    if-ne v14, v2, :cond_2

    .line 1034
    move-object v12, v1

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1037
    const-string v14, "k9"

    const-string v15, "not deleting messages because account is unavailable at the moment"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v14, 0x0

    goto :goto_0

    .line 1030
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1044
    .end local v1    # "account":Lcom/fsck/k9/Account;
    :cond_3
    const/4 v9, 0x0

    .line 1047
    .local v9, "msg":Lcom/fsck/k9/mail/Message;
    :try_start_0
    sget-object v14, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v12, v14}, Lcom/fsck/k9/mail/store/LocalStore;->getLocalInstance(Lcom/fsck/k9/Account;Landroid/app/Application;)Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v8

    .line 1048
    .local v8, "lf":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getMessageCount()I

    move-result v10

    .line 1049
    .local v10, "msgCount":I
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_4

    .line 1051
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "folder msg count = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1053
    :cond_4
    invoke-virtual {v8, v11}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1061
    .end local v8    # "lf":Lcom/fsck/k9/mail/Folder;
    .end local v10    # "msgCount":I
    :goto_2
    if-eqz v12, :cond_5

    if-eqz v9, :cond_5

    .line 1063
    sget-object v14, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v14}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/fsck/k9/mail/Message;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v14, v15}, Lcom/fsck/k9/controller/MessagingController;->deleteMessages$57ed3660([Lcom/fsck/k9/mail/Message;)V

    .line 1067
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1055
    :catch_0
    move-exception v4

    .line 1057
    .local v4, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v14, "k9"

    const-string v15, "Unable to retrieve message"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1073
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-object v3

    .line 1078
    :cond_1
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1080
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageProvider/getType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 1089
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-object v3

    .line 1094
    :cond_1
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1096
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageProvider/insert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/helper/MessageHelper;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/MessageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mMessageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 978
    new-instance v0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;

    invoke-direct {v1, p0}, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;)V

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    invoke-direct {p0, v0}, Lcom/fsck/k9/provider/MessageProvider;->registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    .line 979
    new-instance v0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;

    invoke-direct {v1, p0}, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;)V

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    invoke-direct {p0, v0}, Lcom/fsck/k9/provider/MessageProvider;->registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    .line 980
    new-instance v0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;

    invoke-direct {v1, p0}, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;)V

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    invoke-direct {p0, v0}, Lcom/fsck/k9/provider/MessageProvider;->registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    .line 982
    new-instance v0, Lcom/fsck/k9/K9$ApplicationAware;

    invoke-direct {v0}, Lcom/fsck/k9/K9$ApplicationAware;-><init>()V

    invoke-static {v0}, Lcom/fsck/k9/K9;->registerApplicationAware(Lcom/fsck/k9/K9$ApplicationAware;)V

    .line 1000
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1106
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 1138
    :goto_0
    return-object v7

    .line 1111
    :cond_0
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1113
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageProvider/query: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 1120
    .local v6, "code":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 1122
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->mQueryHandlers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1130
    invoke-interface/range {v0 .. v5}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1132
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 1134
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to execute query for URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1144
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v3

    .line 1149
    :cond_1
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1151
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageProvider/update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
