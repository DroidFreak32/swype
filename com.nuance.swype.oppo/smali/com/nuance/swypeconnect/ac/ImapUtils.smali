.class final Lcom/nuance/swypeconnect/ac/ImapUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;,
        Lcom/nuance/swypeconnect/ac/ImapUtils$GMailImapStore;,
        Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;,
        Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;,
        Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ImapUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ImapUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ImapUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method public static initialize(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {p1}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->setTempDirectory(Ljava/io/File;)V

    return-void
.end method

.method public static scanGMail(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;Ljava/lang/String;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;II)I
    .locals 4

    const/4 v1, 0x0

    sub-int v0, p5, p4

    :try_start_0
    new-instance v2, Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;

    invoke-direct {v2, p2, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;-><init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;)V

    new-instance v3, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailImapStore;

    invoke-virtual {v2, p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailImapStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "[Gmail]/Sent Mail"

    invoke-virtual {v3, v2}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailImapStore;->getFolder(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->getMessages(I)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->getEmailDisplayNames([Lcom/fsck/k9/mail/Message;Ljava/util/Set;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    move v0, p4

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ImapUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "error"

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v0, p4

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ImapUtils;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "error"

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v0, p4

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_2
.end method
