.class public Lcom/fsck/k9/mail/store/LocalStore;
.super Lcom/fsck/k9/mail/Store;
.source "LocalStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;,
        Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;,
        Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;,
        Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;,
        Lcom/fsck/k9/mail/store/LocalStore$StoreSchemaDefinition;
    }
.end annotation


# static fields
.field protected static final DB_VERSION:I = 0x27

.field private static final EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static GET_MESSAGES_COLS:Ljava/lang/String; = null

.field private static HEADERS_TO_SAVE:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SMART_HTMLIFY_MESSAGE_LENGTH:I = 0x40000

.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;


# instance fields
.field private database:Lcom/fsck/k9/mail/store/LockableDatabase;

.field private final mApplication:Landroid/app/Application;

.field protected uUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    new-array v0, v2, [Lcom/fsck/k9/mail/Message;

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    .line 83
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "X-K9mail-Identity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "To"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "Cc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "From"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "In-Reply-To"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "References"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "Content-ID"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    const-string v1, "X-User-Agent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, folder_id, preview "

    sput-object v0, Lcom/fsck/k9/mail/store/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/Account;Landroid/app/Application;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/Store;-><init>(Lcom/fsck/k9/Account;)V

    .line 112
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$StoreSchemaDefinition;

    invoke-direct {v2, p0, v3}, Lcom/fsck/k9/mail/store/LocalStore$StoreSchemaDefinition;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/store/LocalStore$1;)V

    invoke-direct {v0, p2, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    .line 128
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore;->mApplication:Landroid/app/Application;

    .line 129
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->setStorageProviderId(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->open()V

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/controller/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;
    .param p1, "x1"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .param p2, "x2"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/mail/store/LocalStore;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()[Lcom/fsck/k9/mail/Message;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    return-object v0
.end method

.method static synthetic access$2900()Ljava/util/Set;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->HEADERS_TO_SAVE:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3100()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method private getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
    .locals 9
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .param p2, "folder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p3, "queryString"    # Ljava/lang/String;
    .param p4, "placeHolders"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 902
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .local v5, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;>;"
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v8, 0x0

    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$13;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/mail/store/LocalStore$13;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    invoke-virtual {v7, v8, v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 956
    sget-object v0, Lcom/fsck/k9/mail/store/LocalStore;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Message;

    return-object v0
.end method


# virtual methods
.method public addPendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .locals 5
    .param p1, "command"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 703
    iget-object v2, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v3, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 706
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "command"

    iget-object v3, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v2, "arguments"

    iget-object v3, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v4, 0x2c

    invoke-static {v3, v4}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v3, 0x0

    new-instance v4, Lcom/fsck/k9/mail/store/LocalStore$10;

    invoke-direct {v4, p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$10;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Landroid/content/ContentValues;)V

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    return-void

    .line 720
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/Error;

    const-string v3, "Aparently UTF-8 has been lost to the annals of history."

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public checkSettings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 532
    return-void
.end method

.method public clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 387
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before prune size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments(Z)V

    .line 391
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 393
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After prune / before compaction size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before clear folder count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getFolderCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before clear message count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After prune / before clear size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$3;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$3;-><init>(Lcom/fsck/k9/mail/store/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->compact()V

    .line 416
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 418
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After clear message count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After clear size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_2
    return-void
.end method

.method public compact()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 368
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before compaction size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$2;-><init>(Lcom/fsck/k9/mail/store/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 380
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After compaction size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->delete()V

    .line 537
    return-void
.end method

.method public getAttachmentInfo(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    .locals 3
    .param p1, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$15;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$15;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;

    return-object v0
.end method

.method public getAttachmentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$14;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$14;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 479
    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolderCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$5;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$5;-><init>(Lcom/fsck/k9/mail/store/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMessageCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$4;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$4;-><init>(Lcom/fsck/k9/mail/store/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPendingCommands()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$9;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$9;-><init>(Lcom/fsck/k9/mail/store/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 4
    .param p1, "forceListAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 489
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;>;"
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$6;

    invoke-direct {v3, p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$6;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    return-object v0

    .line 522
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getSize()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v1

    .line 342
    .local v1, "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 345
    .local v0, "attachmentDirectory":Ljava/io/File;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v3, 0x0

    new-instance v4, Lcom/fsck/k9/mail/store/LocalStore$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$1;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/io/File;Lcom/fsck/k9/mail/store/StorageManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public isCopyCapable()Z
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x1

    return v0
.end method

.method public pruneCachedAttachments()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments(Z)V

    .line 547
    return-void
.end method

.method public pruneCachedAttachments(Z)V
    .locals 3
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$7;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$7;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 631
    return-void
.end method

.method public recreate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->recreate()V

    .line 542
    return-void
.end method

.method public removePendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .locals 3
    .param p1, "command"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$11;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$11;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 735
    return-void
.end method

.method public removePendingCommands()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$12;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$12;-><init>(Lcom/fsck/k9/mail/store/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 748
    return-void
.end method

.method public resetVisibleLimits()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore;->resetVisibleLimits(I)V

    .line 636
    return-void
.end method

.method public resetVisibleLimits(I)V
    .locals 4
    .param p1, "visibleLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "visible_limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$8;

    invoke-direct {v3, p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$8;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 651
    return-void
.end method

.method public searchForMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;[Lcom/fsck/k9/mail/Flag;)[Lcom/fsck/k9/mail/Message;
    .locals 16
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .param p2, "queryFields"    # [Ljava/lang/String;
    .param p3, "queryString"    # Ljava/lang/String;
    .param p5, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p6, "requiredFlags"    # [Lcom/fsck/k9/mail/Flag;
    .param p7, "forbiddenFlags"    # [Lcom/fsck/k9/mail/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/controller/MessageRetrievalListener;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;",
            ">;[",
            "Lcom/fsck/k9/mail/Message;",
            "[",
            "Lcom/fsck/k9/mail/Flag;",
            "[",
            "Lcom/fsck/k9/mail/Flag;",
            ")[",
            "Lcom/fsck/k9/mail/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 787
    .local p4, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 789
    .local v3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v12, "whereClause":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 792
    const/4 v2, 0x0

    .line 793
    .local v2, "anyAdded":Z
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 794
    .local v9, "likeString":Ljava/lang/String;
    const-string v13, " AND ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    move-object/from16 v4, p2

    .local v4, "arr$":[Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v11, v4, v7

    .line 798
    .local v11, "queryField":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 800
    const-string v13, " OR "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_0
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " LIKE ? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    const/4 v2, 0x1

    .line 795
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 808
    .end local v11    # "queryField":Ljava/lang/String;
    :cond_1
    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .end local v2    # "anyAdded":Z
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "likeString":Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 812
    const-string v13, " AND folder_id in ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const/4 v2, 0x0

    .line 814
    .restart local v2    # "anyAdded":Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .line 816
    .local v6, "folder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    if-eqz v2, :cond_3

    .line 818
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_3
    const/4 v2, 0x1

    .line 821
    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 824
    .end local v6    # "folder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :cond_4
    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .end local v2    # "anyAdded":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    if-eqz p5, :cond_8

    move-object/from16 v0, p5

    array-length v13, v0

    if-lez v13, :cond_8

    .line 828
    const-string v13, " AND ( "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const/4 v2, 0x0

    .line 830
    .restart local v2    # "anyAdded":Z
    move-object/from16 v4, p5

    .local v4, "arr$":[Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p5

    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_7

    aget-object v10, v4, v7

    .line 832
    .local v10, "message":Lcom/fsck/k9/mail/Message;
    if-eqz v2, :cond_6

    .line 834
    const-string v13, " OR "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_6
    const/4 v2, 0x1

    .line 837
    const-string v13, " ( uid = ? AND folder_id = ? ) "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 841
    .end local v10    # "message":Lcom/fsck/k9/mail/Message;
    :cond_7
    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .end local v2    # "anyAdded":Z
    .end local v4    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_8
    if-eqz p7, :cond_b

    move-object/from16 v0, p7

    array-length v13, v0

    if-lez v13, :cond_b

    .line 845
    const-string v13, " AND ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const/4 v2, 0x0

    .line 847
    .restart local v2    # "anyAdded":Z
    move-object/from16 v4, p7

    .local v4, "arr$":[Lcom/fsck/k9/mail/Flag;
    move-object/from16 v0, p7

    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v8, :cond_a

    aget-object v5, v4, v7

    .line 849
    .local v5, "flag":Lcom/fsck/k9/mail/Flag;
    if-eqz v2, :cond_9

    .line 851
    const-string v13, " AND "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_9
    const/4 v2, 0x1

    .line 854
    const-string v13, " flags NOT LIKE ?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 858
    .end local v5    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_a
    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .end local v2    # "anyAdded":Z
    .end local v4    # "arr$":[Lcom/fsck/k9/mail/Flag;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_b
    if-eqz p6, :cond_e

    move-object/from16 v0, p6

    array-length v13, v0

    if-lez v13, :cond_e

    .line 862
    const-string v13, " AND ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    const/4 v2, 0x0

    .line 864
    .restart local v2    # "anyAdded":Z
    move-object/from16 v4, p6

    .restart local v4    # "arr$":[Lcom/fsck/k9/mail/Flag;
    move-object/from16 v0, p6

    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v8, :cond_d

    aget-object v5, v4, v7

    .line 866
    .restart local v5    # "flag":Lcom/fsck/k9/mail/Flag;
    if-eqz v2, :cond_c

    .line 868
    const-string v13, " OR "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :cond_c
    const/4 v2, 0x1

    .line 871
    const-string v13, " flags LIKE ?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 875
    .end local v5    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_d
    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .end local v2    # "anyAdded":Z
    .end local v4    # "arr$":[Lcom/fsck/k9/mail/Flag;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_e
    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_f

    .line 880
    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "whereClause = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "args = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_f
    const/4 v14, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "SELECT "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/fsck/k9/mail/store/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "FROM messages WHERE deleted = 0 "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " ORDER BY date DESC"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v13, Lcom/fsck/k9/mail/store/LocalStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/fsck/k9/mail/store/LocalStore;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;

    move-result-object v13

    return-object v13
.end method

.method public switchLocalStorage(Ljava/lang/String;)V
    .locals 1
    .param p1, "newStorageProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore;->database:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/LockableDatabase;->switchProvider(Ljava/lang/String;)V

    .line 138
    return-void
.end method
